//
//  ViewController.swift
//  SegundaPracticaIOS
//
//  Created by MAC11 on 17/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var usuario:String = "DSIS"
    var contraseña:String = "TECSUP"
    
    @IBOutlet weak var TxtUsuario: UITextField!
    
    @IBOutlet weak var txtContaseña: UITextField!
    
    @IBAction func Entrar_Listado(_ sender: Any) {
        
        if TxtUsuario.text == usuario && txtContaseña.text == contraseña {
            print("buen camino")
            performSegue(withIdentifier: "segueEntrarTabla", sender: nil)
        }else{
            print("mal camino")
            TxtUsuario.text = ""
            txtContaseña.text = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

