//
//  ViewController.swift
//  testPro
//
//  Created by Stanislav Miloradov on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        self.view.addSubview(picker)
        
        picker.addTarget(self, action: #selector(dataPickerChenge(paramdatePicker:)), for: .valueChanged)
    }
    
    @objc func dataPickerChenge(paramdatePicker: UIDatePicker) {
        if paramdatePicker.isEqual(self.picker) {
            print("datachenge: = ", paramdatePicker.date)
        }
    }
}
