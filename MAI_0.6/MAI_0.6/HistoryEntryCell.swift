//
//  HistoryEntry.swift
//  MAI_0.6
//
//  Created by dearleiii on 6/26/19.
//  Copyright © 2019 dearleiii. All rights reserved.
//

import UIKit

class HistoryEntryCell: UITableViewCell {

    @IBOutlet var historyImageView: UIImageView!
    @IBOutlet var historyInfoText: UITextField!
    
    func setHistory(history: HistoryClass) {
        historyImageView.image = history.image
        historyInfoText.text = history.info
    }
}
