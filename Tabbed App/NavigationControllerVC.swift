//
//  NavigationControllerVC.swift
//  Tabbed App
//
//  Created by Wissa Azmy on 9/19/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class NavigationControllerVC: UINavigationController {
    
    @IBOutlet weak var tabItem: UITabBarItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if tabItem.tag == 0 {
            print("Tab 1")
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "UpdateView"), object: "Tab 1")
        } else {
            print("Tab 2")
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "UpdateView"), object: "Tab 2")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
