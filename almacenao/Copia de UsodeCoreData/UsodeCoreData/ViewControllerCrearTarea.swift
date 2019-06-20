//
//  ViewControllerCrearTarea.swift
//  UsodeCoreData
//
//  Created by MAC11 on 16/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllerCrearTarea: UIViewController {

    @IBOutlet weak var txtNombreTarea: UITextField!
    
    @IBOutlet weak var swImportante: UISwitch!
    
    
    @IBAction func agregar(_ sender: Any) {
        let tarea = Tarea()
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        anteriorVC.tareas.append(tarea)
        anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    var anteriorVC = ViewController()
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
