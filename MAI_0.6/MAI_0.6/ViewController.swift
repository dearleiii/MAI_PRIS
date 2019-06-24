//
//  ViewController.swift
//  MAI_0.6
//
//  Created by dearleiii on 6/23/19.
//  Copyright © 2019 dearleiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var danriverEnter: UIButton!
    
    @IBOutlet weak var kokaboothEnter: UIButton!
    
    @IBOutlet weak var dukegardenEnter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func danriverEnterTapped(_ sender: Any) {
        print("Choose Dan River Map")
    }
    
    @IBAction func kokaboothEnterTapped(_ sender: Any) {
        print("Choose Koka Booth Map")
    }
    
    @IBAction func dukeGardenEnterTapped(_ sender: Any) {
        print("Choose Dukar Garden Map")
    }
}

