//
//  TableViewControllerNuevo.swift
//  TableViewController
//
//  Created by MAC11 on 28/03/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit


class TableViewControllerNuevo: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        setEditing(true, animated: true)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing,animated:animated)
        if(self.isEditing){
            self.editButtonItem.title = "Editar"
        }
        else {
            self.editButtonItem.title = "Hecho"
        }
    }

    // MARK: - Table view data source
    var arregloNumeros: [String] = ["Lamborghini","Kia","Ferrari","Honda","Bugatti","Volkswagen","Ford","Jaguar","Nissan","Chevrolet","tico"]
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arregloNumeros.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = arregloNumeros[indexPath.row]
        switch cell.textLabel?.text {
        case "Lamborghini":
            cell.imageView?.image = UIImage(named: "carritos/carro_lamborghini1.jp2")
            cell.detailTextLabel?.text = "Carro Lamborgini"
        case "Kia":
            cell.imageView?.image = UIImage(named: "carritos/carro_kia2.jpg")
            cell.detailTextLabel?.text = "Carro Kia "
        case "Ferrari":
            cell.imageView?.image = UIImage(named: "carritos/carro_ferrari3.jpg")
            cell.detailTextLabel?.text = "Carro Ferrari "
        case "Honda":
            cell.imageView?.image = UIImage(named: "carritos/carro_honda4.jpeg")
            cell.detailTextLabel?.text = "Carro Honda "
        case "Bugatti":
            cell.imageView?.image = UIImage(named: "carritos/carro_bugatti5.jpg")
            cell.detailTextLabel?.text = "Carro Bugatti "
        case "Volkswagen":
            cell.imageView?.image = UIImage(named: "carritos/carro_volkswagen6.jpg")
            cell.detailTextLabel?.text = "Carro Volkswagen "
        case "Ford":
            cell.imageView?.image = UIImage(named: "carritos/carro_ford7.jp2")
            cell.detailTextLabel?.text = "Carro Ford "
        case "Jaguar":
            cell.imageView?.image = UIImage(named: "carritos/carrito_jaguar1.jp2")
            cell.detailTextLabel?.text = "Carro Jaguar "
        case "Nissan":
            cell.imageView?.image = UIImage(named: "carritos/carro_nissan9.jpg")
            cell.detailTextLabel?.text = "Carro Nissan "
        case "Chevrolet":
            cell.imageView?.image = UIImage(named: "carritos/carro_chevrolet10.jp2")
            cell.detailTextLabel?.text = "Carro Chevrolet "
        case "tico":
            cell.imageView?.image = UIImage(named: "carritos/carro_tico11.jpeg")
            cell.detailTextLabel?.text = "Carro Tico "
        default:
            print("No hay mas elementos para llenar la imagen")
            cell.detailTextLabel?.text = "Celda numero 4"
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ultimoElemento = indexPath.row
        self.performSegue(withIdentifier: "pantalla2segues", sender: ultimoElemento)
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arregloNumeros.remove(at: indexPath.row)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let botonEliminar = UITableViewRowAction(style: .normal, title: "Eliminar")
    { (accionesFila, indiceFila) in
        self.arregloNumeros.remove(at: indexPath.row)
        tableView.reloadData()
    }
        botonEliminar.backgroundColor = UIColor.red
        let botonInsertar = UITableViewRowAction(style: .normal, title: "Insertar")
        { (accionesFila, indiceFila) in
            let ultimoElemento = self.arregloNumeros[self.arregloNumeros.count-1]
            self.arregloNumeros.append(String(Int(ultimoElemento)! + 1))
            tableView.reloadData()
        }
        
        let botonIngresar = UITableViewRowAction(style: .normal, title: "Ingresar")
        { (accionesFila, indiceFila) in
            let ultimoElemento = indexPath.row
            self.performSegue(withIdentifier: "pantalla2segues", sender: ultimoElemento)
        }
        botonIngresar.backgroundColor = UIColor.orange
        botonInsertar.backgroundColor = UIColor.purple
        botonEliminar.backgroundColor = UIColor.red
        return[botonEliminar,botonInsertar,botonIngresar]
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let objetoMovido = self.arregloNumeros[fromIndexPath.row]
        arregloNumeros.remove(at: fromIndexPath.row)
        arregloNumeros.insert(objetoMovido, at: to.row)
        NSLog("%@", "\(fromIndexPath.row) => \(to.row) \(arregloNumeros)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantalla2segues"{
            let idrecibido = sender as! Int
            let pantalla2:ViewController = segue.destination as! ViewController
            pantalla2.Titu = arregloNumeros[idrecibido]
        }
    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
