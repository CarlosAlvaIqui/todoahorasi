//
//  ViewController.swift
//  UaoCoreData
//
//  Created by MAC11 on 11/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func agregarTarea(_ sender: Any) {
        performSegue(withIdentifier: "agregarSegue", sender: nil)
    }
    
    
    var indexSelecionado:Int = 0
    
    var tareas:[Tarea] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tarea = tareas[indexPath.row]
        indexSelecionado = indexPath.row
        performSegue(withIdentifier: "tareaSelecionadaSegue", sender: tarea)
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        tareas = crearTareas()
    }
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "agregarSegue"{
        let siguienteVC = segue.destination as! ViewControllerCrearTarea
        siguienteVC.anteriorVC = self
        }else if(segue.identifier == "tareaSelecionadaSegue" ){
            let siguienteVC = segue.destination as! ViewControllerTareaCompleta
            siguienteVC.tarea = sender as! Tarea
            siguienteVC.anteriorVC = self
        }
        
    }
    


}

