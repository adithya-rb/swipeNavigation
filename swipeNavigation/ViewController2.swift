//
//  ViewController2.swift
//  swipeNavigation
//
//  Created by Adithya Bharadwaj on 11/13/15.
//  Copyright © 2015 adithya. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
rounded(btn3)
        rounded(btn2)
        rounded(btn1)
        password.text = ""
    
    /*
       btn3.layer.cornerRadius = btn3.layer.frame.size.width/2
        btn3.clipsToBounds = true
        btn3.layer.borderWidth = 2
        btn3.layer.borderColor = UIColor.blackColor().CGColor
     */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rounded(sender : UIButton)
    {
     var x = sender
        x.layer.cornerRadius = x.layer.frame.size.width/2
        x.clipsToBounds = true
        x.layer.borderWidth = 2
        x.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        
        
    }


    

    @IBAction func emergencyAction(sender: AnyObject) {

        if password.text == "123"
        {
            print("Success")
        }
        else
        {
            print("Failure")
        }
        
        
        
        
        
    }
 
    @IBAction func btn1Action(sender: AnyObject) {
        
        password.text = password.text! + "1"
    }
   
    @IBAction func btn2Action(sender: AnyObject) {
        password.text = password.text! + "2"

    }
    
    @IBAction func btn3Action(sender: AnyObject) {
        password.text = password.text! + "3"
    }
    
    @IBAction func cancelBtn(sender: AnyObject) {
        password.text = ""
        
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
