//
//  ViewController.swift
//  Animate3
//
//  Created by Teodik Abrami on 7/11/18.
//  Copyright © 2018 Teodik Abrami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //containerView.transform = CGAffineTransform(scaleX: 0, y: 0)
        containerView.transform = CGAffineTransform(translationX: 0, y: -1000)
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, delay: 2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8, options: [.curveEaseInOut], animations: {
            self.containerView.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

