//
//  OrangeViewController.swift
//  NavigController
//
//  Created by yurik on 5/28/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func buttonForward(_ sender: UIButton) {
       // константа доступ к StoryBoard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //ViewController  на который перейдем
        let vc = storyboard.instantiateViewController(withIdentifier: "GreenViewControllerID") as! GreenViewController
       //переход на нужный Вью
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func goToRedButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RedViewControllerID") as! RedViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func goToBlueButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BlueViewControllerID") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
