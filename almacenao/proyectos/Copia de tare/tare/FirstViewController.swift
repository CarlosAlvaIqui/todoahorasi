//
//  FirstViewController.swift
//  tare
//
//  Created by MAC11 on 10/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var n1:Double = 0
    var n2:Double = 0
    var lrp:Double = 0
    var op:String?
    @IBOutlet weak var lblRpta: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func btn1(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)1"
    }
    
    @IBAction func btn2(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)2"
    }
    
    @IBAction func btn3(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)3"
    }
    
    @IBAction func btn4(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)4"
    }
    
    @IBAction func btn5(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)5"
    }
    
    @IBAction func btn6(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)6"
    }
    
    @IBAction func btn7(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)7"
    }
    
    @IBAction func btn8(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)8"
    }
    
    @IBAction func btn9(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)9"
    }
    
    @IBAction func btn0(_ sender: Any) {
        lblRpta.text! = "\(lblRpta.text!)0"
    }
    
    @IBAction func suma(_ sender: Any) {
        if(Double(lblRpta.text!) != nil){
            n1 = Double(lblRpta.text!)!
            lblRpta.text! = ""
            op = "suma"
        }
    }
    @IBAction func resta(_ sender: Any) {
        if(Double(lblRpta.text!) != nil){
            n1 = Double(lblRpta.text!)!
            lblRpta.text! = ""
            op = "resta"
        }
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
        if(Double(lblRpta.text!) != nil){
            n1 = Double(lblRpta.text!)!
            lblRpta.text! = ""
            op = "multiplicacion"
        }
    }
    @IBAction func division(_ sender: Any) {
        if(Double(lblRpta.text!) != nil){
            n1 = Double(lblRpta.text!)!
            lblRpta.text! = ""
            op = "division"
        }
    }
    
    @IBAction func limpiar(_ sender: Any) {
        lblRpta.text = ""
    }
    @IBAction func igua(_ sender: Any) {
        if(Double(lblRpta.text!) != nil){
            switch op {
                case "suma":
                n2 = Double(lblRpta.text!)!
                lrp = n1 + n2
                lblRpta.text = "\(lrp)"
            case "resta":
                n2 = Double(lblRpta.text!)!
                lrp = n1 - n2
                lblRpta.text = "\(lrp)"
            case "multiplicacion":
                n2 = Double(lblRpta.text!)!
                lrp = n1 * n2
                lblRpta.text = "\(lrp)"
            case "division":
                n2 = Double(lblRpta.text!)!
                lrp = n1 / n2
                lblRpta.text = "\(lrp)"
                default:
                print("mal")
            }
        }
    }
}

