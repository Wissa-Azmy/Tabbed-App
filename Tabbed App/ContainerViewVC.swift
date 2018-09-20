//
//  ContainerViewVC.swift
//  Tabbed App
//
//  Created by Wissa Azmy on 9/19/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class ContainerViewVC: UIViewController {
    
    @IBOutlet weak var textLbl: UILabel!
    
    var notificationName = NSNotification.Name(rawValue: "UpdateView")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: OperationQueue.main) { (notification) in
            if let object = notification.object as? String {
                self.textLbl.text = object
                if object == "Tab 1" {
                    self.view.backgroundColor = #colorLiteral(red: 0.156167984, green: 1, blue: 0.4294558764, alpha: 1)
                } else {
                    self.view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                }
            }
        }
    }
    

}
