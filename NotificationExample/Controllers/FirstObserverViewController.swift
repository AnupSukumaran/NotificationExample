//
//  FirstObserverViewController.swift
//  NotificationExample
//
//  Created by Sukumar Anup Sukumaran on 10/11/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import UIKit

class FirstObserverViewController: UIViewController {

    
    @IBOutlet weak var AngelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: SingleTonPratice.sharedInstance.HiddenEntityReliever, object: nil, queue: nil, using: {notification in print("Show the entity om \(notification)")
            self.AngelLabel.isHidden = false })
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   

}
