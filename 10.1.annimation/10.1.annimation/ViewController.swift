//
//  ViewController.swift
//  10.1.annimation
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

    @IBAction func changePosition(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.testView.center.x += 200.0
        }) { _ in
            UIView.animate(withDuration: 1, animations: {
                self.testView.center.x -= 200.0
            }, completion: nil)
        }
    }
    
    @IBAction func changeSize(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.testView.frame = CGRect(x: 50, y: 50, width: 260, height: 230)
        }) {_ in
            UIView.animate(withDuration: 1, animations: {
                self.testView.frame = CGRect(x: 100, y: 100, width: 160, height: 120)
            }, completion: nil)
        }
    }
    @IBAction func transform(_ sender: Any) {
        UIView.animate(withDuration: 2) {
            var transform = CGAffineTransform(scaleX: 2, y: 2)
            transform = transform.rotated(by: CGFloat(M_PI))
            transform = transform.translatedBy(x: 100, y: 100)
            self.testView.transform = transform
            self.testView.transform = CGAffineTransform.identity
        }
    }
}

