//
//  ViewController.swift
//  mHealth
//
//  Created by Guillermo Kardolus on 9/17/14.
//  Copyright (c) 2014 Open mHealth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        test()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func test(){
        Caller().connect()
        Authenticator().connect()
        Connector().connect()
    }

}

