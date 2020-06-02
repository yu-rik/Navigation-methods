//
//  ViewController.swift
//  PassData
//
//  Created by yurik on 5/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    //свойство для принятия информации с другого экрана
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTaped(_ sender: UIButton) {
        // переход на нужный экран(если segue привязан к виду)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    //метод скрытия клавиатуры
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //пердача данных с одного экрана на другой
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        //присваивание свойству login(второй экран) значения текстФила
        dvc.login = loginTF.text
    }
    
    //метод для возвращения на предыдущий экран
    @IBAction func unwindToMainScreen(unwindSegue: UIStoryboardSegue) {
       guard unwindSegue.identifier == "unwindSegue" else {return}
        
        guard let sourceViewController = unwindSegue.source as? SecondViewController else {return}
        self.resultLabel.text = sourceViewController.labelTwo.text
       
    }
}

