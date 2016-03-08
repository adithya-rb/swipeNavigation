//
//  ViewController.swift
//  swipeNavigation
//
//  Created by Adithya Bharadwaj on 11/13/15.
//  Copyright © 2015 adithya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollLabel: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        let vc1 = ViewController1(nibName : "ViewController1", bundle: nil)
        self.addChildViewController(vc1)
        self.scrollLabel.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        
        let vc2 = ViewController2(nibName : "ViewController2", bundle: nil)
        
        var frame1 = vc2.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc2.view.frame = frame1
        self.addChildViewController(vc2)
        self.scrollLabel.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        
        self.scrollLabel.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

