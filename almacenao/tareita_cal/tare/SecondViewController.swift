//
//  SecondViewController.swift
//  tare
//
//  Created by MAC11 on 10/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var n1:Double = 0
    var n2:Double = 0
    var lrp:Double = 0
    var op:String?
    
    @IBOutlet weak var lbrpta: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    @IBAction func btn1(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)1"
    }
    @IBAction func btn2(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)2"
    }
    @IBAction func btn3(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)3"
    }
    @IBAction func btn4(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)4"
    }
    @IBAction func btn5(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)5"
    }
    @IBAction func btn6(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)6"
    }
    @IBAction func btn7(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)7"
    }
    @IBAction func btn8(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)8"
    }
    @IBAction func btn9(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)9"
    }
    @IBAction func btn0(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)0"
    }
    
    @IBAction func punto(_ sender: Any) {
        lbrpta.text! = "\(lbrpta.text!)."
    }
    @IBAction func suma(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "suma"
        }}
    @IBAction func resta(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "resta"
        }}
    @IBAction func multiplicacion(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "multiplicacion"
        }}
    
    @IBAction func division(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "division"
        }}
    
    @IBAction func area_triangulo(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "area_triangulo"
        }}
    
    @IBAction func potencia_cua(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lrp =  pow(Double(n1), (2))
            lbrpta.text = "\(lrp)"
           
        }
    }
    @IBAction func potencia(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "potencia"
        }}
    @IBAction func raiz(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "raiz"
        }}
    
    @IBAction func raiz_cua(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lrp =  pow(Double(n1), (1/2))
            lbrpta.text = "\(lrp)"
            
        }
        
    }
    @IBAction func coseno(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lrp = cos(n1)
            lbrpta.text = "\(lrp)"
        }
    }
    
    @IBAction func aeno(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lrp = sin(n1)
            lbrpta.text = "\(lrp)"
        }
    }
   
    @IBAction func tangente(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lrp = tan(n1)
            lbrpta.text = "\(lrp)"
        }
    }
    
    
    @IBAction func porcentaje(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            n1 = Double(lbrpta.text!)!
            lbrpta.text! = ""
            op = "porcentaje"
        }
    }
    
    
    @IBAction func limpieza(_ sender: Any) {
        lbrpta.text = ""
    }
    
    @IBAction func igual(_ sender: Any) {
        if(Double(lbrpta.text!) != nil){
            switch op {
            case "suma":
                n2 = Double(lbrpta.text!)!
                lrp = n1 + n2
                lbrpta.text = "\(lrp)"
            case "resta":
                n2 = Double(lbrpta.text!)!
                lrp = n1 - n2
                lbrpta.text = "\(lrp)"
            case "multiplicacion":
                n2 = Double(lbrpta.text!)!
                lrp = n1 * n2
                lbrpta.text = "\(lrp)"
            case "division":
                n2 = Double(lbrpta.text!)!
                lrp = n1 / n2
                lbrpta.text = "\(lrp)"
            case "area_triangulo":
                n2 = Double(lbrpta.text!)!
                lrp = (n1*n2)/2
                lbrpta.text = "\(lrp)"
            case "potencia":
                n2 = Double(lbrpta.text!)!
                lrp =  pow(Double(n1), (n2))
                lbrpta.text = "\(lrp)"
            case "raiz":
                n2 = Double(lbrpta.text!)!
                lrp =  pow(Double(n1), 1/(n2))
                lbrpta.text = "\(lrp)"
            case "porcentaje":
                n2 = Double(lbrpta.text!)!
                lrp =  (n1 / 100) * n2
                lbrpta.text = "\(lrp)"
            
            
                
            default:	
                print("asdsad")
            }
    

        }}
}

