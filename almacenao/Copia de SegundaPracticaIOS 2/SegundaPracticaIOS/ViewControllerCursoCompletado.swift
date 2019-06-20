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
    override func viewDidLoad() {
        super.viewDidLoad()
        cursoLabel.text = curso!.nombre_curso
        nota1Label.text = String(curso!.nota1)
        nota2Label.text = String(curso!.nota2)
        nota3Label.text = String(curso!.nota3)
        nota4Label.text = String(curso!.nota4)
        promedioLabel.text = String(curso!.promedio)
        print(promedioLabel.text)
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
