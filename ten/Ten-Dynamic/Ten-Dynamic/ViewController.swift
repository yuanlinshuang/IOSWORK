//
//  ViewController.swift
//  Ten-Dynamic
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 yls. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myview: UIView!
    lazy var animator = UIDynamicAnimator(referenceView: self.myview)
    let gravity = UIGravityBehavior()
    let collision = UICollisionBehavior()
    override func viewDidLoad() {
        super.viewDidLoad()
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        collision.translatesReferenceBoundsIntoBoundary = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addview(_ sender: Any) {
        let width = Int(myview.bounds.width / 10)
        let randx = Int(arc4random() % 10) * width
        let label = UILabel(frame: CGRect(x:randx ,y: 0,width: width,height: width))
        label.text = "yls"
        label.backgroundColor = UIColor.blue
        label.textAlignment = .center
        myview.addSubview(label)
        
        gravity.addItem(label)
        collision.addItem(label)
    }
    @IBAction func up(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: 0,dy: -1)
    }
    @IBAction func down(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: 0,dy: 1)
    }
    @IBAction func left(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: -1,dy: 0)
    }
    @IBAction func right(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: 1,dy: 0)
    }
    @IBAction func del(_ sender: Any) {
        for item in self.myview.subviews{
            if item is UILabel{
                item.removeFromSuperview()
                gravity.removeItem(item)
                collision.removeItem(item)
            }
        }
    }
    
}

