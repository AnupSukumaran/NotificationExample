//
//  NotificationPoster.swift
//  NotificationExample
//
//  Created by Sukumar Anup Sukumaran on 10/11/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import UIKit

class NotificationPoster: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        print(2.square())
        
    }
    
    
    @IBAction func senderButton(_ sender: Any) {
        
        NotificationCenter.default.post(name: SingleTonPratice.sharedInstance.HiddenEntityReliever , object: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    

}

extension Int{
    
    func square() -> Int {
        return self * self
    }
    
}
