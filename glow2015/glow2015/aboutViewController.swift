//
//  aboutViewController.swift
//  glow2015
//
//  Created by fhict on 12/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var btnDisplay: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnShowField(sender: UIButton) {
        txtMessage.hidden = !txtMessage.hidden
        btnDisplay.hidden = !btnDisplay.hidden
    }
    
    @IBAction func btnDisplayMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "A very useful message!", message: txtMessage.hasText() ? txtMessage.text : "You did not type a message!!", preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
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
