//
//  MapsViewController.swift
//  MAI_0.6
//
//  Created by dearleiii on 6/24/19.
//  Copyright © 2019 dearleiii. All rights reserved.
//

import UIKit

class MapsViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var mapKokabooth: UIImageView!
    @IBOutlet var mapDukeGarden: UIImageView!
    
    @IBOutlet var zoomTapGestureRecognizer: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        zoomTapGestureRecognizer.numberOfTapsRequired = 2
    }
    

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return mapKokabooth
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.4) {
            self.scrollView.zoomScale = 1.5 * self.scrollView.zoomScale
        }
        
        // scrollView.zoomScale = 1.5 * scrollView.zoomScale
    }

}
