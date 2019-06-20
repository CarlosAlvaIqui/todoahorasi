//
//  ViewController.swift
//  ColeccionDeJuegos
//
//  Created by MAC11 on 25/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var juegos:[Juego] = []
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return juegos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let juego = juegos[indexPath.row]
        let tit = juego.titulo
        let cat = juego.categoria
        print(tit)
        print(cat)
     
        cell.textLabel?.text = juego.titulo! + "este juego es de " + juego.categoria!
        cell.detailTextLabel?.text = "juego.categoria"
        cell.imageView?.image = UIImage(data: (juego.imagen!))
        
        return cell
        
    }
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let juego = juegos[indexPath.row]
        performSegue(withIdentifier: "juegoSegue", sender: juego)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteVC = segue.destination as! JuegosViewController
        siguienteVC.juego = sender as? Juego
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            try juegos = context.fetch(Juego.fetchRequest())
            tableView.reloadData()
        }catch{
            print("error en la coredata")
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let elim = self.juegos[indexPath.row]
            context.delete(elim)
            juegos.remove(at: indexPath.row)
            tableView.reloadData()
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }else if editingStyle == .insert{
            
        }
    }			
    
    
     func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     let objetomovido = self.juegos[fromIndexPath.row]
     NSLog("%@", "\(fromIndexPath.row) => \(to.row)  \(juegos)")
     }

    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        if (self.isEditing){
            self.editButtonItem.title = "Editar"
            self.tableView.isEditing = false
        } else{
            self.editButtonItem.title = "Hecho"
            self.tableView.isEditing = true
        }
    }
}

