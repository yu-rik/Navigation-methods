//
//  GreenViewController.swift
//  NavigController
//
//  Created by yurik on 5/28/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

 
    @IBAction func buttonBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToOrangeButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrangeViewControllerID") as! OrangeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func goToBlueButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BlueViewControllerID") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
