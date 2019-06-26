//
//  HistoryTableViewController.swift
//  MAI_0.6
//
//  Created by dearleiii on 6/23/19.
//  Copyright © 2019 dearleiii. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {
    
    // @IBOutlet var tableView: UITableView!
    
    var historyEntryCell : [cellCustom] = [cellCustom]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadHistoryArray()
        print(historyEntryCell[3].text)
        // tableView.register(UITableViewCell.self, forCellReuseIdentifier: "HistoryEntry")
        tableView.register(HistoryCell.self, forCellReuseIdentifier: "HistoryEntry")
    }
    
    override func didReceiveMemoryWarning() {
        print("memory warning ....\n")
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(historyEntryCell[indexPath.row].cellNum)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyEntryCell.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryEntry", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryEntry", for: indexPath) as! HistoryCell
        let currentLastItem = historyEntryCell[indexPath.row]
        // cell.textLabel?.text = currentLastItem.text
        cell.history = currentLastItem
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func loadHistoryArray() {
        historyEntryCell.append(cellCustom(cellNum: 1, text: "Testout the printing near ", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
        print("load the first cell infor good! \n cell text is \(historyEntryCell[1].text)\n")
        historyEntryCell.append(cellCustom(cellNum: 2, text: "Testout the printing midrange", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
        historyEntryCell.append(cellCustom(cellNum: 3, text: "Testout the printing near ", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
        historyEntryCell.append(cellCustom(cellNum: 4, text: "Testout the printing near ", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
        historyEntryCell.append(cellCustom(cellNum: 5, text: "Testout the printing near ", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
        historyEntryCell.append(cellCustom(cellNum: 6, text: "Testout the printing near ", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
        historyEntryCell.append(cellCustom(cellNum: 7, text: "Testout the printing near ", location: #imageLiteral(resourceName: "dronelogo2"), tap: "Tap to view"))
    }

}
