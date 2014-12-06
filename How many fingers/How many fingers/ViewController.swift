//
//  ViewController.swift
//  How many fingers
//
//  Created by Talha Qamar on 12/6/14.
//  Copyright (c) 2014 Talha Qamar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var output: UILabel!
    @IBOutlet var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    output.text = "Please enter any no between 0 - 5"
    }
    @IBAction func buttonpress(sender: AnyObject) {
        
        if(input.text.isEmpty){
        output.text = "Please enter any no between 0 - 5"
        }
        else
        {
            var nooffingers = Int(arc4random()%6)
        //    var inp = input.text.toInt()
            if(nooffingers == input.text.toInt())
            {
                output.text = "Congrats guess no was right.Hurrah!"
            }
            else { output.text = "Random no was \(nooffingers).Try again"}
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

