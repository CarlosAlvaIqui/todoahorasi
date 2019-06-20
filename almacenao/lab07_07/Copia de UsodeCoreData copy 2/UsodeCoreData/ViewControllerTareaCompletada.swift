//
//  ViewControllerTareaCompletada.swift
//  UsodeCoreData
//
//  Created by MAC11 on 16/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllerTareaCompletada: UIViewController {
    var tarea = Tarea()
   // var anteriorVC = ViewController()

    
    @IBOutlet weak var tareaLabel: UILabel!
    
    @IBAction func completarTarea(_ sender: Any) {
      //  anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado)
     //   anteriorVC.tableView.reloadData()
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(tarea)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tarea.importante {
            tareaLabel.text = "😇\(tarea.nombre!)"
        }else{
            tareaLabel.text = tarea.nombre!
        }
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
