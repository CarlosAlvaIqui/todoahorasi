//
//  lista_promedios.swift
//  SegundaPracticaIOS
//
//  Created by MAC11 on 24/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class lista_promedios: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    @IBOutlet weak var tableView: UITableView!
    var cursos:[Cur] = []
    var prac:Double = 0
    var promedio_final:Double = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cursos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let cursos = self.cursos[indexPath.row]
        let nnumero1 = cursos.nota1
        let nnumero2 = cursos.nota2
        let nnumero3 = cursos.nota3
        let nnumero4 = cursos.nota4
        let promedio_labs =  cursos.promedio
        
        if (nnumero1 < nnumero2 && nnumero1 < nnumero3 && nnumero1 < nnumero4){
            prac = nnumero2 + nnumero3 + nnumero4
            print(prac)
        }else if (nnumero2 < nnumero1 && nnumero2 < nnumero3 && nnumero2 < nnumero4){
            prac = nnumero1 + nnumero3 + nnumero4
            print(prac)
        }else if (nnumero3 < nnumero1 && nnumero3 < nnumero2 && nnumero3 < nnumero4){
            prac = nnumero1 + nnumero2 + nnumero4
            print(prac)
        }else if (nnumero4 < nnumero1 && nnumero4 < nnumero2 && nnumero4 < nnumero3){
            prac = nnumero1 + nnumero2 + nnumero3
            print(prac)
        }else{
            print("algun error haciendo la operacion")
        }
        promedio_final = (promedio_labs * 0.7)+((prac/3) * 0.3)
        if(promedio_final>=13 && promedio_final<=20){
            cell.textLabel?.text = "😀\(cursos.nombre_curso!) Y LA NOTA ES  \(promedio_final)"
            cell.backgroundColor = UIColor.green
        }else{
            cell.textLabel?.text = "😂\(cursos.nombre_curso!) Y LA NOTA ES  \(promedio_final)"
            cell.backgroundColor = UIColor.red
        }
        
        
        return cell
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        obtenerCursos()
        tableView.reloadData()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    

    
    func obtenerCursos(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            cursos = try context.fetch(Cur.fetchRequest()) as! [Cur]
        }catch{
            print("erro en la coredata")
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
