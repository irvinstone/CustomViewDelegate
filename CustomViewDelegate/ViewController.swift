//
//  ViewController.swift
//  CustomViewDelegate
//
//  Created by Irvin Leon on 11/7/19.
//  Copyright © 2019 Irvin Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController: CustomViewProtocol {
    func someAction() {
        print("Something went wrong")
    }
}

