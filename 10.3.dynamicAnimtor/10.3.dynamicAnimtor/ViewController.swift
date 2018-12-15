//
//  ViewController.swift
//  10.3.dynamicAnimtor
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 xtx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backView: UIView!
    lazy var animator = UIDynamicAnimator(referenceView: self.backView)
    let gravity = UIGravityBehavior()
    let collision = UICollisionBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        collision.translatesReferenceBoundsIntoBoundary = true    }

    @IBAction func addView(_ sender: Any) {
        let width = Int(backView.bounds.width / 10)
        let randx = Int(arc4random()%10) * width
        let label = UILabel(frame: CGRect(x: randx, y: 0, width: width, height: width))
        label.backgroundColor = UIColor.red
        label.text = "i"
        label.textAlignment = .center
        backView.addSubview(label)
        
        gravity.addItem(label)
        collision.addItem(label)
    }
    
    @IBAction func deleteAll(_ sender: Any) {
        for item in self.backView.subviews{
            if item is UILabel{
                item.removeFromSuperview()
                gravity.removeItem(item)
                collision.removeItem(item)
            }
        }
    }
}

