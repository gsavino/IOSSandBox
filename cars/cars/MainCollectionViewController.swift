//
//  MainCollectionViewController.swift
//  cars
//
//  Created by Gaston savino on 18/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController {
    
    var audi = Marca(name: "Audi", autos: [Automovil("audi1"), Automovil("audi2"), Automovil("audi3"), Automovil("audi4"), Automovil("audi5")])
    var ford = Marca(name: "ford", autos: [Automovil("ford1"), Automovil("ford2"), Automovil("ford3"), Automovil("ford4"), Automovil("ford5")])
    var chevrolet = Marca(name: "chevrolet", autos: [Automovil("chevrolet1"), Automovil("chevrolet2"), Automovil("chevrolet3"), Automovil("chevrolet4"), Automovil("chevrolet5")])
    var citroen = Marca(name: "citroen", autos: [Automovil("citroen1"), Automovil("citroen2"), Automovil("citroen3"), Automovil("citroen4"), Automovil("citroen5")])
    var lancia = Marca(name: "lancia", autos: [Automovil("lancia1"), Automovil("lancia2"), Automovil("lancia3"), Automovil("lancia4"), Automovil("lancia5")])
    var ferrari = Marca(name: "ferrari", autos: [Automovil("ferrari1"), Automovil("ferrari2"), Automovil("ferrari3"), Automovil("ferrari4"), Automovil("ferrari5")])
    var honda = Marca(name: "honda", autos: [Automovil("honda1"), Automovil("honda2"), Automovil("honda3"), Automovil("honda4"), Automovil("honda5")])
    var toyota = Marca(name: "toyota", autos: [Automovil("toyota1"), Automovil("toyota2"), Automovil("toyota3"), Automovil("toyota4"), Automovil("toyota5")])
    var bmw = Marca(name: "bmw", autos: [Automovil("bmw1"), Automovil("bmw2"), Automovil("bmw3"), Automovil("bmw4"), Automovil("bmw5")])
    
    
    var mercado = MercadoAutomotor(marcas: [audi,ford,chevrolet, citroen, lancia, ferrari, honda, toyota, bmw])

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
