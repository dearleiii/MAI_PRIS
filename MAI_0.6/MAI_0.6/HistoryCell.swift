//
//  HistoryCell.swift
//  MAI_0.6
//
//  Created by dearleiii on 6/25/19.
//  Copyright © 2019 dearleiii. All rights reserved.
//

import Foundation
import UIKit

class HistoryCell : UITableViewCell {
    
    var history : cellCustom? {
        didSet {
            // var cellNum: Int
            historyInformationText.text = history?.text
            historyLocImage.image = history?.location
            historyButtonLabel.text = history?.tap
        }
    }
    
    private var historyInformationText : UITextField {
        let info = UITextField()
        info.textColor = .black
        info.font = UIFont.systemFont(ofSize: 16)
        info.textAlignment = .left
        return info
    }
    
    private var historyButtonLabel : UILabel {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        return lbl
    }
    
    private var historyLocImage : UIImageView {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "dronelogo1"))
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(historyInformationText)
        addSubview(historyLocImage)
        // addSubview(historyButtonLabel)
        
        historyLocImage.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 100, height: 100, enableInsets: false)
        historyButtonLabel.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 100, height: 15, enableInsets: false)
        historyInformationText.anchor(top: topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 5, width: 300, height: 100, enableInsets: false)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
