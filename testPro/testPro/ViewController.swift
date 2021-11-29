//
//  ViewController.swift
//  testPro
//
//  Created by Stanislav Miloradov on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch2 = UISwitch()
    let button = UIButton()
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
            self.button.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
            self.button.backgroundColor = UIColor.green
            self.button.setTitle("ok", for: .normal)
            self.button.setTitle("hhhhhhh", for: .highlighted)
            
            self.view.addSubview(self.button)
            
        self.mySwitch2.frame = CGRect.zero
        
        self.mySwitch2.center = self.view.center
        self.view.addSubview(self.mySwitch2)
        //off
        self.mySwitch2.tintColor = UIColor.green
        
        
        //рычажок
        self.mySwitch2.thumbTintColor = UIColor.red
        
        
        //on
        self.mySwitch2.onTintColor = UIColor.purple
            
            self.mySwitch2.addTarget(self, action: #selector(isOn(target:)), for: .valueChanged)
        
    }

    @objc func isOn(target: UISwitch) {
        if target.isOn {
            self.button.isUserInteractionEnabled = false
        }else {
            self.button.isUserInteractionEnabled = true
        }
    }

}

