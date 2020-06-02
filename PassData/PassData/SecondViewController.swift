//
//  SecondViewController.swift
//  PassData
//
//  Created by yurik on 5/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //свойство для получения данных с первого экрана
    var login: String?
    
    @IBOutlet weak var labelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //извлечение опционала и присваивание label
        guard let login = self.login else {return}
        labelTwo.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
}
