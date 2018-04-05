//
//  SecondObserverViewController.swift
//  NotificationExample
//
//  Created by Sukumar Anup Sukumaran on 10/11/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import UIKit

class SecondObserverViewController: UIViewController {

    
    @IBOutlet weak var DevilLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: SingleTonPratice.sharedInstance.HiddenEntityReliever, object: nil, queue: nil){ notification in print("Show the entity om \(notification)")
            self.DevilLabel.isHidden = false }

    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    



}
