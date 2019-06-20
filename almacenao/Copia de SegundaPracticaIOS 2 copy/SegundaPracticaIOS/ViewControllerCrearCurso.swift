//
//  ViewControllerCrearCurso.swift
//  SegundaPracticaIOS
//
//  Created by MAC11 on 17/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllerCrearCurso: UIViewController {
    var anteriorVC = ViewControllertabla()
    //txtCurso_Nom
    
    @IBOutlet weak var txtCursi_Nom: UITextField!
    @IBOutlet weak var txtNotanumero1: UITextField!
    
    @IBOutlet weak var txtNotanumero2: UITextField!
    
    @IBOutlet weak var txtNotanumero3: UITextField!
    
    @IBOutlet weak var txtNotanumero4: UITextField!
    
    @IBOutlet weak var promedio_lab: UITextField!
    @IBAction func agregar(_ sender: Any) {
        //let curso = Cur()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let curso = Cur(context: context)
        curso.nombre_curso = txtCursi_Nom.text!
        curso.nota1 = Double(txtNotanumero1.text!)!
        curso.nota2 = Double(txtNotanumero2.text!)!
        curso.nota3 = Double(txtNotanumero3.text!)!
        curso.nota4 = Double(txtNotanumero4.text!)!
        curso.promedio = Double(promedio_lab.text!)!
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //anteriorVC.cursos.append(curso)
        //anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
