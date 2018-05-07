//
//  ViewController.swift
//  Clase2Ejercicio2ConversorDeTemperatura
//
//  Created by iOS on 11/4/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sldrTemperture: UISlider!
    @IBOutlet weak var segContTemperture: UISegmentedControl!
    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var fahrenheit: UILabel!
    @IBOutlet weak var kelvin: UILabel!
    
    
    @IBAction func calcular(_ sender: Any){
        var calcTemperture : [String:Temperture] = [:]
        let imputTemperture = Double(sldrTemperture.value)
        calcTemperture ["Celsius"] = Temperture(celsius: imputTemperture)
        calcTemperture ["Fahrenheit"] = Temperture(fahrenheit: imputTemperture)
        calcTemperture ["Kelvin"] = Temperture(kelvin: imputTemperture)

        celsius.text = String(calcTemperture[segContTemperture!.titleForSegment(at: segContTemperture!.selectedSegmentIndex)!]!.getCelsius())
        fahrenheit.text = String(calcTemperture[segContTemperture!.titleForSegment(at: segContTemperture.selectedSegmentIndex)!]!.getFahrenheit())
        kelvin.text = String(calcTemperture[segContTemperture.titleForSegment(at: segContTemperture.selectedSegmentIndex)!]!.getKelvin())
    }
    
    public class Temperture{
        private var tCel: Double
        private var tFah : Double
        private var tKel : Double
        public init (celsius: Double){
            tCel = celsius
            tFah = celsius * 1.8 + 32.0
            tKel = celsius + 273.15
        }
        public init (fahrenheit:Double){
            tCel = (fahrenheit - 32.0) / 1.8
            tFah = fahrenheit
            tKel = 5.0 / 9.0 * (fahrenheit - 32.0) + 273.15
        }
        public init (kelvin:Double){
            tCel = kelvin - 273.15
            tFah = 1.8 * (kelvin - 273.15) + 32.0
            tKel = kelvin
        }
        public func getCelsius()->Double{
            return tCel
        }
        public func getFahrenheit()->Double{
            return tFah
        }
        public func getKelvin()->Double{
            return tKel
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
/*
        if segContTemperture.selectedSegmentIndex == 0 {
            celsius.text = String(sldrTemperture.value)
            fahrenheit.text = String(Double(sldrTemperture.value) * 1.8 + 32.0 )
            kelvin.text  = String (Double(sldrTemperture.value) + 273.15)
        }
        if segContTemperture.selectedSegmentIndex == 1 {
            fahrenheit.text = String(Double(sldrTemperture.value))
 
            celsius.text = String((Double(sldrTemperture.value) - 32.0)/1.8)
 
            kelvin.text  = String (5.0/9.0*(Double(sldrTemperture.value)-32.0) + 273.15)        }
        if segContTemperture.selectedSegmentIndex == 2 {
            kelvin.text = String(sldrTemperture.value)
            fahrenheit.text = String(1.8 * ( Double(sldrTemperture.value)-273.15)+32.0)
            celsius.text = String(Double(sldrTemperture.value) - 273.15)
        }
        */
