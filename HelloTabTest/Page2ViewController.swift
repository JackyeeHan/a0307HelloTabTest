//
//  Page2ViewController.swift
//  HelloTabTest
//
//  Created by 黃柏瀚 on 2022/2/7.
//

import UIKit

class Page2ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("Page 2 loadview")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Page 2 willAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Page 2 willDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Page 2 willDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Page 2 didDisappear")
    }
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Page Two")

    }
    

}
