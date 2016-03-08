//
//  ViewController1.swift
//  swipeNavigation
//
//  Created by Adithya Bharadwaj on 11/13/15.
//  Copyright © 2015 adithya. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer()
    {
        timeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.MediumStyle)
        
        
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
