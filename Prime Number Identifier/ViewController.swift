//
//  ViewController.swift
//  Prime Number ID
//
//  Created by David Lee on 1/25/16.
//  Copyright © 2016 David Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var labelOutput: UILabel!
    
    
    @IBAction func primeButton(sender: AnyObject) {
        
        let inputNum = Int(input.text!)
        func isPrime (n : Int) -> Bool {
            if(n <= 1) {
                return false
            }
            if(n <= 3) {
                return true
            }
            var i = 2
            while (i*i <= n) {
                if (n % i == 0) {
                    return false
                }
                i = i + 1
            }
            return true
        }
        if( isPrime(inputNum!) == true ) {
            labelOutput.text = "Yes, \(inputNum!) is a prime number"
        }
        else {
            labelOutput.text = "No, \(inputNum!) is not a prime number"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

