//
//  ViewController.swift
//  10.2.transition
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 xtx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func changeColor(_ sender: Any) {

        UIView.transition(with: testView, duration: 1, options: .transitionFlipFromLeft, animations: {
            self.testView.backgroundColor = UIColor.red
        }, completion: nil)
    }
    @IBAction func changeView(_ sender: Any) {
        let view1 =  UIView(frame: self.testView.bounds)
        view1.backgroundColor = self.testView.backgroundColor
            let view2 = UIView(frame: testView.bounds)
        testView.addSubview(view1)
        view2.backgroundColor = UIColor.blue
            
            UIView.transition(from: view1, to: view2, duration: 2, options: [.transitionFlipFromLeft] , completion: nil
                
            )
        
    }
    
}

