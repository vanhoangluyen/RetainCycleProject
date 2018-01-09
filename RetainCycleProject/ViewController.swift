//
//  ViewController.swift
//  RetainCycleProject
//
//  Created by HoangLuyen on 1/9/18.
//  Copyright © 2018 HoangLuyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    weak var nextVC: ViewController?
    weak var previousVC: ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    deinit {
        print("\(type(of: self)) - deinit")
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        nextVC = segue.destination as? ViewController
        nextVC?.previousVC = self
    }

}
class VC1: ViewController{
    
}
class VC2: ViewController {
    
}
class VC3: ViewController {
    
}
