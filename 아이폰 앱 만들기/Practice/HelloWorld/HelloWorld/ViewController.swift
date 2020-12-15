//
//  ViewController.swift
//  HelloWorld
//
//  Created by 지아손 on 2020. 7. 8..
//  Copyright © 2020년 JAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHello: UILabel!
    
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }

}

