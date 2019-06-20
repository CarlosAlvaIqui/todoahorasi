//
//  ViewControllerTareaCompleta.swift
//  UaoCoreData
//
//  Created by MAC11 on 11/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllerTareaCompleta: UIViewController {
    
    @IBOutlet weak var tareaLabel: UILabel!
    @IBAction func CompletarTarea(_ sender: Any) {
        anteriorVC.tareas.remove(at: anteriorVC.indexSelecionado)
        anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    var tarea = Tarea()
    var anteriorVC = ViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tarea.importante {
            tareaLabel.text = "😇\(tarea.nombre)"
        }else{
            tareaLabel.text = tarea.nombre
        }
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
