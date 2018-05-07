//
//  ViewController.swift
//  Calculadora
//
//  Created by Gaston on 11/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit
// Agrego Sonido a las Teclas, diferenciando si la tecla es una cualquiera o si es el igual
import AVFoundation
var sonidoTecla = AVAudioPlayer()
var sonidoIgual = AVAudioPlayer()
let path = Bundle.main.path(forResource:"TeclaCalculadora", ofType:"mp3")
let path2 = Bundle.main.path(forResource: "Igual", ofType: "mp3")


/////////////////////////////////
public protocol Calculable
{
    func ejecutar(val1: Double, val2:Double)->Double
}

class ViewController: UIViewController {

    @IBOutlet weak var pantalla: UILabel!
    @IBOutlet weak var cero: UIButton!
    @IBOutlet weak var uno: UIButton!
    @IBOutlet weak var dos: UIButton!
    @IBOutlet weak var tres: UIButton!
    @IBOutlet weak var cuatro: UIButton!
    @IBOutlet weak var cinco: UIButton!
    @IBOutlet weak var seis: UIButton!
    @IBOutlet weak var siete: UIButton!
    @IBOutlet weak var ocho: UIButton!
    @IBOutlet weak var nueve: UIView!
    @IBOutlet weak var punto: UIButton!
    @IBOutlet weak var sumar: UIButton!
    @IBOutlet weak var restar: UIButton!
    @IBOutlet weak var multiplicar: UIButton!
    @IBOutlet weak var dividir: UIButton!
    @IBOutlet weak var C_BorradoParcial: UIButton!
    @IBOutlet weak var CE_BorradoTotal: UIButton!
    @IBOutlet weak var backErase: UIButton!
    
    private var calculadora = Calculadora()

    @IBAction func sonidoTeclas (_ sender: Any){
        sonidoTecla.play()
    }
    @IBAction func reciboCBorradoParcial(_ sender: Any) {
        pantalla.text = calculadora.reseteoC()
    }
    @IBAction func reciboBackErase(_ sender: Any) {
        
        pantalla.text = calculadora.backErase()
    }
    @IBAction func reciboCEBorrarTodo(_ sender: UIButton!) {
        pantalla.text = calculadora.reseteoCE()
    }
    @IBAction func reciboIgual(_ sender: UIButton!) {
        pantalla.text = calculadora.calculoResultado()
        sonidoIgual.play()
    }
    @IBAction func reciboOperador(_ sender: UIButton!) {
        pantalla.text = calculadora.reciboOperacion(caracter: sender.currentTitle!)
    }
    @IBAction func reciboNumero(_ sender: UIButton!) {
        pantalla.text = calculadora.reciboNumero(caracter: sender.currentTitle!)
        
    }
    @IBAction func reciboCambioSigno(_ sender: UIButton) {
        pantalla.text = calculadora.cambioSigno()
    }
    ////////////////////////////////////////////////////////
    public class Calculadora {
        private var elementos : [Elemento]
        private var loUltimoQueIngreseFueUnValor: Bool
        private var numeroEnFormacion: String
        private var puedoIngresarDecimal: Bool
        private var signo: Int
        public init (){
            elementos = []
            loUltimoQueIngreseFueUnValor = true
            numeroEnFormacion = "0"
            puedoIngresarDecimal = true
            signo = 1
        }
        public func reseteoCE()->String{
            elementos = []
            loUltimoQueIngreseFueUnValor = true
            numeroEnFormacion = "0"
            puedoIngresarDecimal = true
            signo = 1
            return numeroEnFormacion
        }
        public func backErase()->String
        {
            if !numeroEnFormacion.isEmpty && numeroEnFormacion != "-0" && numeroEnFormacion != "0"
            {
                numeroEnFormacion.remove(at :numeroEnFormacion.index(before: numeroEnFormacion.endIndex))
            }
            return muestroNumeroEnFormacion()
        }
        public func reseteoC()->String{
            numeroEnFormacion = "0"
            puedoIngresarDecimal = true
            signo = 1
            return numeroEnFormacion
        }
        public func muestroNumeroEnFormacion()->String{
            if let esValuable = Double(numeroEnFormacion)
            {
                if  esValuable > 0.0
                {
                    var output = numeroEnFormacion
                    output.remove(at: output.startIndex)
                    return output
                } else
                {
                    if esValuable < 0.0
                    {
                        var output = numeroEnFormacion
                        output.remove(at: output.index(of: "0")!)
                        return output
                    }
                }
            }
            return numeroEnFormacion
        }
        public func calculoResultado()->String{
            var acumulador = 0.0
            var sigo = elementos.count > 2
            var indice = 0
                if let val1 = elementos[indice] as? Valor
                {
                    acumulador = val1.getNumero()
                    while sigo {
                        if let val2 = elementos[indice+2] as? Valor {
                            if let operador = elementos[indice+1] as? Calculable {
                                acumulador = operador.ejecutar(val1: acumulador, val2: val2.getNumero())
                                indice = indice + 2
                                if elementos.count <= indice + 2 { sigo = false}
                            } else {
                                sigo = false
                            }
                        } else {
                            sigo = false
                        }
                    }
                }
            return String(acumulador)
        }
        public func cambioSigno()->String{
            signo = signo * -1
            if signo < 0 {
                numeroEnFormacion = "-" + numeroEnFormacion
            } else
            {
                if let i = numeroEnFormacion.index(of: "-")
                {
                    numeroEnFormacion.remove(at: i)
                }
            }
            return muestroNumeroEnFormacion()
        }
        public func reciboNumero(caracter:String)->String
        {
            if !loUltimoQueIngreseFueUnValor {
                loUltimoQueIngreseFueUnValor = true
            }
            numeroEnFormacion += caracter
            return muestroNumeroEnFormacion()
        }
        public func reciboOperacion(caracter:String)->String{
            if loUltimoQueIngreseFueUnValor {
                let valor = Valor(caracter:numeroEnFormacion)
                elementos.append(valor)
                let operacion = factoryOperacion(caracter: caracter)
                elementos.append(operacion)
                numeroEnFormacion = "0"
                signo = 1
                loUltimoQueIngreseFueUnValor = false
            } else {
                elementos.remove(at: elementos.count-1)
                let operacion = factoryOperacion(caracter: caracter)
                elementos.append(operacion)
            }
            return calculoResultado()
        }
        private func factoryOperacion(caracter:String)->Elemento{
            switch caracter {
            case "+":
                return Sumar()
            case "-":
                return Restar()
            case "/":
                return Dividir()
            case "X":
                return Multiplicar()
            default:
                return Terminar()
            }
        }
    }
    //////////////////////////////////
    public class Elemento{
        public init(){
        }
    }
    /////////////////////////////////
    public class Valor: Elemento
    {
        private var numero:Double
        public init(caracter: String)
        {
            self.numero = Double(caracter)!
        }
        public func getNumero()->Double{
            return numero
        }
    }

    //////////////////////////////////
    public class Sumar: Elemento, Calculable {
        public override init(){}
        public func ejecutar(val1:Double, val2:Double)->Double{
            return val1 + val2
        }
    }
    //////////////////////////////////
    public class Restar: Elemento, Calculable{
        public func ejecutar(val1:Double, val2:Double)->Double{
            return val1 - val2
        }
    }
    ///////////////////////////////////
    public class Multiplicar:Elemento, Calculable{
        public func ejecutar(val1:Double, val2:Double)->Double{
            return val1 * val2
        }
    }
    //////////////////////////////////////
    public class Dividir: Elemento, Calculable {
        public  func ejecutar(val1:Double, val2:Double)->Double{
            return val1 / val2
        }
    }
    ///////////////////////////////////////
    public class Terminar:Elemento, Calculable {
        public  func ejecutar(val1: Double, val2: Double) -> Double {
            return val1
        }
    }
    //////////////////////////////////////////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            try sonidoTecla = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))

        } catch {
            print("No encontre el archivo de la tecla")
        }
        do {
            try sonidoIgual = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path2!))
        } catch {
            print("No encontre el sonido del Igual")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

