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

class History: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var histories: [HistoryClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // self.tableView.rowHeight = 200
        histories = loadHistoryArray()
        
    }

    func loadHistoryArray() -> [HistoryClass] {
        
        var tempHistories: [HistoryClass] = []
        
        let history1 = HistoryClass(image: #imageLiteral(resourceName: "dronelogo2"), info: "Current detection: ")
        let history2 = HistoryClass(image: #imageLiteral(resourceName: "dronelogo2"), info: "Most recent detection ")
        let history3 = HistoryClass(image: #imageLiteral(resourceName: "dronelogo2"), info: "Current detection: ")
        let history4 = HistoryClass(image: #imageLiteral(resourceName: "dronelogo2"), info: "Most recent detection ")
        let history5 = HistoryClass(image: #imageLiteral(resourceName: "dronelogo2"), info: "Current detection: ")
        let history6 = HistoryClass(image: #imageLiteral(resourceName: "dronelogo2"), info: "Most recent detection ")
        
        tempHistories.append(history1)
        tempHistories.append(history2)
        tempHistories.append(history3)
        tempHistories.append(history4)
        tempHistories.append(history5)
        tempHistories.append(history6)
        
        return tempHistories
    }
    
}

extension History: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return histories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let history = histories[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryEntryCell") as! HistoryEntryCell
        
        cell.setHistory(history: history)
        return cell
    }
}
