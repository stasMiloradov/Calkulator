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
        
        picker.datePickerMode = .countDownTimer   //.date
        
        self.view.addSubview(picker)
        
        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60
        
        let todayDate = Date()
        
        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
        let twoYearFromDate = todayDate.addingTimeInterval(2 * oneYearTime)
        
        picker.minimumDate = oneYearFromToday
        picker.maximumDate = twoYearFromDate
        
        picker.countDownDuration = 2 * 60
        
        picker.addTarget(self, action: #selector(dataPickerChenge(paramdatePicker:)), for: .valueChanged)
    }
    
    @objc func dataPickerChenge(paramdatePicker: UIDatePicker) {
        if paramdatePicker.isEqual(self.picker) {
            print("datachenge: = ", paramdatePicker.date)
        }
    }
}
