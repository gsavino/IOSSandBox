//
//  GameScene.swift
//  CatsAndDogs
//
//  Created by Gaston on 14/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import SpriteKit
import GameplayKit

func +(left: CGPoint, right: CGPoint)-> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}
func -(left: CGPoint, right: CGPoint)-> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}
func *(point: CGPoint, scalar: CGFloat)-> CGPoint {
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}
func /(point: CGPoint, scalar: CGFloat)->CGPoint {
    return CGPoint(x: point.x / scalar, y: point.y / scalar)
}
#if !(arch(x86_64) || arch(arm64))
    func sqrt(a: CGFloat)->CGFloat {
        return CGFloat(sqrt(Float(a)))
    }
    #endif

extension CGPoint {
    func lenght() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    func normalized()-> CGPoint{
        return self / lenght()
    }
}

struct PhysicsCategory {
    static let none     : UInt32 = 0
    static let all      : UInt32 = UInt32.max
    static let cat      : UInt32 = 0b1 // 1
    static let drop     : UInt32 = 0b10 // 2
}

extension GameScene: SKPhysicsContactDelegate {
    func didBegin(_ contact: SKPhysicsContact) {
        //
        ///
        //
        var firstBody: SKPhysicsBody
        var secondBody: SKPhysicsBody
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        } else {
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        //
        ///
        //
        if ((firstBody.categoryBitMask & PhysicsCategory.cat != 0) && (secondBody.categoryBitMask & PhysicsCategory.drop != 0)){
            if let cat = firstBody.node as? SKSpriteNode, let drop = secondBody.node as? SKSpriteNode {
                dropDidColllideWithCat(drop: drop, cat: cat)
            }
        }
    }
}


class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    let player = SKSpriteNode(imageNamed: "Pankycomplete")
    let sound = SKAction.playSoundFileNamed("Laser1", waitForCompletion: true)
    
    func random() -> CGFloat {
        return (CGFloat(Float(arc4random())) / 0xFFFFFFFF)
    }
    func random(min:CGFloat, max:CGFloat)->CGFloat{
        return random() * (max - min) + min
    }
    func addCat(){
        //create a sprite
        let cat = SKSpriteNode(imageNamed: "WhatchingCat")
        //determine where to spawn the cat alogn the Y axis
        let actualY = random(min: cat.size.height/2, max: size.height - cat.size.height/2)
        // position the cat slightly off-screen along the right edge
        //and along a random position along the Y axis as calculated above
        cat.position = CGPoint(x: size.width + cat.size.width/2, y: actualY)
        //add the cat to the scene
        addChild(cat)
        //// physical configuration
        cat.physicsBody = SKPhysicsBody(rectangleOf: cat.size) //creo el cuerpo fisico del gato
        cat.physicsBody?.isDynamic = true                      //el physics engine no controla el movimiento del gato
        cat.physicsBody?.categoryBitMask = PhysicsCategory.cat     // seteo la categoria del gato para que sea la definida para los gatos en el struct
        cat.physicsBody?.contactTestBitMask = PhysicsCategory.drop //defino la categoria de objetos por la que debo ser notificado por el listener cuando se intersecten, en este caso la gota
        cat.physicsBody?.collisionBitMask = PhysicsCategory.none   // indico el tipo de respueta a la cosilision
        //determinde the speed of the cat
        let actualDuration = random(min: CGFloat(2.0), max: CGFloat(4.0))
        //create the action
        let actionMove = SKAction.move(to:CGPoint(x:-cat.size.width/2, y:actualY), duration: TimeInterval(actualDuration))
        let actionMoveDone = SKAction.removeFromParent()
        cat.run(SKAction.sequence([actionMove, actionMoveDone]))
    }
    
    
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        addChild(player)
        run(SKAction.repeatForever(SKAction.sequence([SKAction.run(addCat),SKAction.wait(forDuration: 1.0)])))
        physicsWorld.gravity = .zero
        physicsWorld.contactDelegate = self
        
    }
    
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    func dropDidColllideWithCat (drop: SKSpriteNode, cat: SKSpriteNode){
        print("Le pegue al gato!")
        let explosion = SKSpriteNode(imageNamed: "DisperseWaterExplotion") //DisperseWaterExplotion  SmallWaterExplosion
        explosion.position = drop.position
        addChild(explosion)
        drop.removeFromParent()
        cat.removeFromParent()
        let actionMove = SKAction.move(to: explosion.position, duration: 1.0)
        let actionMoveDone = SKAction.removeFromParent()
        explosion.run(SKAction.sequence([actionMove, actionMoveDone]))
        run(SKAction.playSoundFileNamed("splash", waitForCompletion: false))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // choose one of the touches to work with
        guard let touch = touches.first else { return }
        let touchlocation = touch.location(in: self)
        // set up initial locaton of projectile
        let drop = SKSpriteNode(imageNamed: "WaterBall")
        drop.position = player.position
        //determine offset of locaton to projectile
        let offset = touchlocation - drop.position
        if offset.x < 0 { return }
        //ok to add now la posicion fue chequeada dos veces
        addChild(drop)
        drop.physicsBody = SKPhysicsBody(circleOfRadius: drop.size.width/2)
        drop.physicsBody?.isDynamic = true
        drop.physicsBody?.categoryBitMask = PhysicsCategory.drop
        drop.physicsBody?.contactTestBitMask = PhysicsCategory.cat
        drop.physicsBody?.collisionBitMask = PhysicsCategory.none
        drop.physicsBody?.usesPreciseCollisionDetection = true
        // get the direction to where to shoot
        let direction = offset.normalized()
        //make it shoot far enough to be fuarranteed off screen
        let shootAmount = direction * 1000
        //add the shoot amount to the current position
        let realDest = shootAmount + drop.position
        // create the action!
        let actionMove = SKAction.move(to: realDest, duration: 2.0)
        let actionMoveDone = SKAction.removeFromParent()
        drop.run(SKAction.sequence([actionMove, actionMoveDone]))
        run(SKAction.playSoundFileNamed("laser1", waitForCompletion: false))

    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
