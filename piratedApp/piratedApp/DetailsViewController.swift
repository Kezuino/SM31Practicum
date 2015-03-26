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

    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.lblName.text = self.selectedPirate?.name;
        self.lblLife.text = self.selectedPirate?.life;
        self.lblActiveYears.text = self.selectedPirate?.yearsActive;
        self.lblCountryBirth.text = self.selectedPirate?.counrtyOrigin;
        self.tvComments.text = self.selectedPirate?.comments;

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
