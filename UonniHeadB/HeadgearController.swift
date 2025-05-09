//
//  ViewController.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
//

import UIKit
//launch
import IQKeyboardManager
class HeadgearController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IQKeyboardManager.shared().isEnabled = true
        if SeasonalLoogController.enthusiasts != nil {
            self.navigationController?.pushViewController(HeadpiecesMainController.init(), animated: false)
            return
        }
        
        headwearCulture()
    }

    
    func headwearCulture() {
        let hats = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HandmadeController") as! HandmadeController
          
        self.navigationController?.pushViewController(hats, animated: false)
    }

}

