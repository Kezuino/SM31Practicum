//
//  TableViewController.swift
//  piratedApp
//
//  Created by fhict on 26/03/15.
//  Copyright (c) 2015 fhict. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    private var pirates = [Pirate]();

    func loadJsonData()
    {
        var err:NSError?;
        var url = "http://athena.fhict.nl/users/i886625/pirates.json";
        request(.GET, url, parameters: nil, encoding : ParameterEncoding.JSON)
            .responseJSON(options: NSJSONReadingOptions.MutableContainers, completionHandler: {(req, urlResp, json, err) in
                println(NSJSONSerialization.isValidJSONObject(json!));
                println(json!);
                var js = json! as NSArray;
                self.parseJsonData(js);
                self.tableView.reloadData();
            });
    }
    
    func parseJsonData(data: NSArray)
    {
        for x: AnyObject! in data {
            var dict:NSDictionary = x as NSDictionary;
            var name = dict.objectForKey("name") as String;
            var life = dict.objectForKey("life") as String;
            var years = dict.objectForKey("years_active") as String;
            var country = dict.objectForKey("country_of_origin") as String;
            var comments = dict.objectForKey("comments") as String;
            var pirate = Pirate(
                name: name,
                life: life,
                yearsActive: years,
                countryOrigin: country,
                comments: comments
            );
            self.pirates.append(pirate);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.loadJsonData();

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.pirates.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        var currentRow = indexPath.row;
        var currentPirate = self.pirates[currentRow];
        
        cell.textLabel?.text = currentPirate.name;

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        var selectedRow = self.tableView.indexPathForSelectedRow();
        var selectedPirate = self.pirates[selectedRow!.row];
        
        var controller = segue.destinationViewController as DetailsViewController;
        controller.selectedPirate = selectedPirate;
    }
}
