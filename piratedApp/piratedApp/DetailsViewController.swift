//
//  DetailsViewController.swift
//  piratedApp
//
//  Created by fhict on 26/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var selectedPirate:Pirate?;
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLife: UILabel!
    @IBOutlet weak var lblActiveYears: UILabel!
    @IBOutlet weak var lblCountryBirth: UILabel!
    @IBOutlet weak var tvComments: UITextView!
    
    @IBAction func btnBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.lblName.text = self.selectedPirate?.getName();
        self.lblLife.text = self.selectedPirate?.getLife();
        self.lblActiveYears.text = self.selectedPirate?.getYearsActive();
        self.lblCountryBirth.text = self.selectedPirate?.getCountyOfOrigin();
        self.tvComments.text = self.selectedPirate?.getComments();

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
