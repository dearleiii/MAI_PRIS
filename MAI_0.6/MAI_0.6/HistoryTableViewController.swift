//
//  HistoryTableViewController.swift
//  MAI_0.6
//
//  Created by dearleiii on 6/23/19.
//  Copyright © 2019 dearleiii. All rights reserved.
//

import UIKit

// define a UITableViewCell subclass to access your cell’s views.
// class HistoryEntryCell: UITableViewCell {}

class HistoryTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //class HistoryEntryCell: UITableViewCell {
      //  @IBOutlet var DroneLocation: UIImageView!
        
    //}
    
    @IBOutlet var tableView: UITableView!
    
    let historyEntries = [
        "near",
        "near",
        "vnear",
        "midrange",
        "midrange",
        "vnear",
        "near",
        "near",
        "vnear",
        "midrange",
        "midrange",
        "vnear",
    ]
    
    // let images = [dronelogo1, dronelogo2, dronelogo3]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(historyEntries[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyEntries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Ask for a cell of the appropriate type
        // let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryEntry", for: IndexPath) as! HistoryEntryCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryEntry", for: indexPath)
        
        // fetch data from storage
        // let theHistory = historyEntries[indexPath.row]

        // Configure the cell's contents with the row and section number
        // The basic cell stype gurantees a label view is present in textLabel
        // Content of the cell include: textLabel, detailTextLabel, imageView
        cell.textLabel!.text =  "Entry \(indexPath.row)   " +  historyEntries[indexPath.row] // historyEntries[IndexPath.row]
        // cell.detailTextLabel!.text = "Fill in most recent detection time;\n Current detection time; \n Detection location "
        // cell.informationText?.text = theHistory + " fill in sample detection date"
        // cell.droneLocationImage?.image = A dronelogo2
        // cell.tapViewLabel?.text = "Tap to view"
        
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
