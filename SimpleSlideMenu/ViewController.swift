//
//  ViewController.swift
//  SimpleSlideMenu
//
//  Created by Kamil Makowski on 24/12/14.
//  Copyright (c) 2014 Kamil Makowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func actionMenuTapped(sender: UIBarButtonItem) {
        self.revealViewController().revealToggle(sender)
    }
    
    @IBOutlet weak var barButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

