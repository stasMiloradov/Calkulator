//
//  ViewController.swift
//  kalkulatorUIKIT
//
//  Created by Stanislav Miloradov on 16/10/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resaltLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .gray
        
        // Do any additional setup after loading the view.
        
        resaltLabel.text = "0"
    }
    
    @IBAction func action1(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "1"
        print(resaltLabel.text)
    }
    
    @IBAction func action2(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "2"
    }
    
    @IBAction func action3(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "3"
    }
    
    @IBAction func action4(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "4"
    }
    
    @IBAction func action5(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "5"
    }
    
    @IBAction func action6(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "6"
    }
    
    @IBAction func action7(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "7"
    }
    
    @IBAction func action8(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "8"
    }
    
    @IBAction func action9(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "9"
    }
    
    @IBAction func action0(_ sender: Any) {
        if resaltLabel.text == "0" {
            resaltLabel.text = ""
        }
        resaltLabel.text! += "0"
    }
    
    @IBAction func actionEqual(_ sender: Any) {
    }
    
    @IBAction func actionPlus(_ sender: Any) {
    }
    
    @IBAction func actionMinus(_ sender: Any) {
    }
    
    @IBAction func actionMultiply(_ sender: Any) {
        
    }
    
    
    
    
    
}


