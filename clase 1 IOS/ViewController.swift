//
//  ViewController.swift
//  clase 1 IOS
//
//  Created by usuario on 07/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
    }

    @IBOutlet weak var peso : UITextField!
    @IBOutlet weak var altura : UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var result: UILabel!
    

    @IBAction func calcular(_ sender: AnyObject) {
        var IMC: Double
        let peso1: Double!
        
        peso1  = Double(self .peso.text!)!
        
        let estatura1 = Double(self .altura.text!)!
        
        IMC = peso1 / pow(estatura1, 2)
        
        print("Resultado: \(IMC)")

        
        switch IMC{
                case ..<16:
                print("Desnutricion severa")
                result.text = "Resultado: Desnutrición Severa"
                imageView.image = UIImage(named: "flaco")
                    
            case 16.1...18.4:
                print("Desnutricion Moderada")
                result.text = "Resultado: Desnutrición Moderada"
                imageView.image = UIImage(named: "flaco")

            case 18.5...22:
                print("Bajo Peso ")
                result.text = "Resultado: Bajo Peso"
                imageView.image = UIImage(named: "flaco")
                
            case 22.1...24.9:
                print("Peso Normal")
                result.text = "Resultado: Peso Normal"
                imageView.image = UIImage(named: "Pesoideal")
                
            case 25...29.9:
                print("Sobrepeso")
                result.text = "Resultado: Sobrepeso"
                imageView.image = UIImage(named: "Gordo")

                
            case 30...34.9:
                print("Obesidad tipo 1")
                result.text = "Resultado: Obesidad tipo 1"
                imageView.image = UIImage(named: "Gordo")

            
            case 35...39.9:
                print("Obesidad tipo 2")
                result.text = "Resultado: Obesidad tipo 2"
                imageView.image = UIImage(named: "Gordo")

            
            case 40...Double.infinity:
                print("Obesidd tipo 3")
                result.text = "Resultado: Obesidad tipo 3"
                imageView.image = UIImage(named: "Gordo")

                
            default:
                print("Obesidad morbida")
        }
        
    }
    
}

