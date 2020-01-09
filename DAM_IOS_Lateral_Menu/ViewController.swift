//
//  ViewController.swift
//  DAM_IOS_Lateral_Menu
//
//  Created by raul.ramirez on 09/01/2020.
//  Copyright © 2020 Raul Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var rightButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.sideMenus()
        self.customizeNavBar()
    }
    
    func sideMenus(){
        if revealViewController() != nil{
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            rightButton.target = revealViewController()
            rightButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 276
            revealViewController()?.rightViewRevealWidth = 160
            
        view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        }
    }
    
    func customizeNavBar(){
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor(red: 50/255, green: 170/255, blue: 196/255, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}

