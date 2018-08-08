//
//  ViewController.swift
//  myLib
//
//  Created by Ricky on 08/08/2018.
//  Copyright (c) 2018 Ricky. All rights reserved.
//

import UIKit
import myLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let circular = MLProgressBar()
        present(circular, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

