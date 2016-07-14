//
//  ViewController.swift
//  test
//
//  Created by Diego  Collao on 14-07-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 1
    var container: Int = 0
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    func fibonacci(number: Int) -> (Int) {
        if number <= 1 {
            return number
        } else {
            return fibonacci(number: number - 1) + fibonacci(number: number - 2)
        }
    }
    
    
    @IBAction func `onButtonPressed`(_ sender: UIButton!) {
        number += 1
        container = fibonacci(number: number)
        updateLabel()
        
    }
    
    func updateLabel(){
        label.text = "\(container)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "Fibonacci"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

