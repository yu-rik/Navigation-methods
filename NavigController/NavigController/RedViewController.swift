//
//  RedViewController.swift
//  NavigController
//
//  Created by yurik on 5/28/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func buttonGoToFirst(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func buttonBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToOrangeButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrangeViewControllerID") as! OrangeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func goToGreenButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "GreenViewControllerID") as! GreenViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
