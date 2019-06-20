//
//  ViewController.swift
//  UsodeCoreData
//
//  Created by MAC11 on 16/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let tarea = tareas[indexPath.row]
        if tarea.importante {
            cell.textLabel?.text = "😀\(tarea.nombre)"
        }else{
            cell.textLabel?.text = "😞\(tarea.nombre)"
            
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexSeleccionado = indexPath.row
        let tarea = tareas[indexPath.row]
        performSegue(withIdentifier: "tareaSeleccionadaSegue", sender: tarea)
    }
    
    @IBAction func agregarTarea(_ sender: Any) {
        performSegue(withIdentifier: "agregarSegue", sender: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    
    func crearTareas()-> [Tarea] {
        let tarea1 = Tarea()
        tarea1.nombre = "Estudiar para el examen"
        tarea1.importante = false
        
        let tarea2 = Tarea()
        tarea2.nombre = "Hacer los laboratoios"
        tarea2.importante = true
        
        let tarea3 = Tarea()
        tarea3.nombre = "Hacer los laboratoios"
        tarea3.importante = true
        
        return [tarea1,tarea2,tarea3]
    }
    
    var tareas:[Tarea] = []
    var indexSeleccionado:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        tareas = crearTareas()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "agregarSegue"{
            let siguienteVC = segue.destination as! ViewControllerCrearTarea
            siguienteVC.anteriorVC = self
        }else if(segue.identifier == "tareaSeleccionadaSegue" ){
            let siguienteVC = segue.destination as! ViewControllerTareaCompletada
            siguienteVC.tarea = sender as! Tarea
            siguienteVC.anteriorVC = self
        }
    }


}

