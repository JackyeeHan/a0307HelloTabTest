//
//  ViewController.swift
//  HelloTabTest
//
//  Created by 黃柏瀚 on 2022/2/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
        let value = userDefaults.value(forKey: "lastInputDate")
        if let date = value as? Date{
            let formater = DateFormatter()
            formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
            formater.locale = Locale.init(identifier: "zh-TW")
            let dateString = formater.string(from: date)
            displayLabel.text = dateString
            
        }
    }

    @IBAction func dateSelect(_ sender: UIDatePicker) {
        let dateSelected = sender.date
        
        let userDefaults = UserDefaults.standard
        userDefaults.setValue(dateSelected, forKey: "lastInputDate")
        userDefaults.synchronize()
        
        
        
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formater.locale = Locale.init(identifier: "zh-TW")
        let dateString = formater.string(from: dateSelected)
        
        displayLabel.text = dateString
        
        
        
        
    }
    
}

