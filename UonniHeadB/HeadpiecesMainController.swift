//
//  HeadpiecesMainController.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
//

import UIKit

class HeadpiecesMainController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = fashionForwardIdeas()
        trendsettingIdeas()
    }
    
    func fashionForwardIdeas() -> [SeasonalLoogController] {
        let innovation = [("artistic",GlobalHatwalkController.init()),
                         
                         ("headpiec",HatChatController.init()),
                         
                         ("headpiec",MatchLabController.init()),
                             ("fashion",StyleSpotlightController.init())] as [(String,UIViewController)]
        var creativity:Array<SeasonalLoogController> = Array<SeasonalLoogController>()
        innovation.forEach { tababrData in
            tababrData.1.tabBarItem.title = nil
            tababrData.1.tabBarItem.titlePositionAdjustment = .zero
            
            tababrData.1.tabBarItem.image = UIImage.init(named: tababrData.0)
            tababrData.1.tabBarItem.selectedImage = UIImage.init(named:tababrData.0 + "_hi" )
            let diver = SeasonalLoogController.init(rootViewController: tababrData.1)
           
            creativity.append(diver)
        }
        return creativity
    }

    
    func trendsettingIdeas()  {
        tabBar.isTranslucent = false
        tabBar.backgroundColor = UIColor(red: 0.11, green: 0.02, blue: 0.22, alpha: 1)
       
    }
}


class SeasonalLoogController: UINavigationController{
    static var enthusiasts:Dictionary<String,Any>?{

        get{
            return UserDefaults.standard.object(forKey: "enthusiasts") as? [String:Any]
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "enthusiasts")
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        awareness()
    }
    private func awareness()  {
        self.navigationBar.backgroundColor = .clear
        self.navigationBar.isHidden = true
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
       
        if children.count > 0  && !viewController.isMember(of:ArtistryController.self) {
           
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
}


class ArtistryController: UIViewController {
    
}
