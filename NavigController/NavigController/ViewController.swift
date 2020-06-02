//
//  ViewController.swift
//  NavigController
//
//  Created by yurik on 5/28/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }

    @IBAction func goToGreenButton(_ sender: UIButton) {
       //  let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard?.instantiateViewController(withIdentifier: "GreenViewControllerID") as! GreenViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToRedButton(_ sender: UIButton) {
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RedViewControllerID") as! RedViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

