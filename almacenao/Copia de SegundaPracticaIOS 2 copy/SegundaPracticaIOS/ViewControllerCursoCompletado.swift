//
//  ViewControllerCursoCompletado.swift
//  SegundaPracticaIOS
//
//  Created by MAC11 on 17/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllerCursoCompletado: UIViewController {

    var curso:Cur? = nil
    //var anteriorVC = ViewControllertabla()
    @IBOutlet weak var cursoLabel: UILabel!
    
    @IBOutlet weak var nota1Label: UILabel!
    
    @IBOutlet weak var nota2Label: UILabel!
    
    
    @IBOutlet weak var nota3Label: UILabel!
    
    @IBOutlet weak var nota4Label: UILabel!
    
    @IBOutlet weak var promedioLabel: UILabel!
    
    @IBOutlet weak var txtncurso: UITextField!
    
    @IBOutlet weak var txtnotan1: UITextField!
    
    @IBOutlet weak var txtnotan2: UITextField!
    
    @IBOutlet weak var txtnotan3: UITextField!
    
    @IBOutlet weak var txtnotan4: UITextField!
    
    @IBOutlet weak var txtplabs: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        cursoLabel.text = curso!.nombre_curso
        nota1Label.text = String(curso!.nota1)
        nota2Label.text = String(curso!.nota2)
        nota3Label.text = String(curso!.nota3)
        nota4Label.text = String(curso!.nota4)
        promedioLabel.text = String(curso!.promedio)
        
        txtncurso.text = curso!.nombre_curso
        txtnotan1.text = String(curso!.nota1)
        txtnotan2.text = String(curso!.nota2)
         txtnotan3.text = String(curso!.nota3)
         txtnotan4.text = String(curso!.nota4)
        txtplabs.text = String(curso!.promedio)

        let n1 = curso!.nota1
      	let n2 = curso!.nota2
        
        let result = n1 + n2
        print("Q FUEEEEEE",  result ,"ultra violento joder"   )
            // Do any additional setup after loading the view.
    }
    
    @IBAction func editar(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        curso!.nombre_curso = txtncurso.text!
        curso!.nota1 = Double(txtnotan1.text!)!
        curso!.nota2 = Double(txtnotan2.text!)!
        curso!.nota3 = Double(txtnotan3.text!)!
        curso!.nota4 = Double(txtnotan4.text!)!
        curso!.promedio = Double(txtplabs.text!)!
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //anteriorVC.cursos.append(curso)
        //anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
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
