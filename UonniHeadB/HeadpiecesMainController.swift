//
//  HeadpiecesMainController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit

class HeadpiecesMainController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = fashionForwardIdeas()
        trendsettingIdeas()
    }
    
    func fashionForwardIdeas() -> [SeasonalLoogController] {
        let innovation = [("artistic", UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GlobalHatwalkController") as! GlobalHatwalkController),
                         
                        
                         
                         ("headpiec",UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MatchLabController") as! MatchLabController),
                          ("connection",UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HatChatController") as! HatChatController),
                             ("fashion",UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StyleSpotlightController") as! StyleSpotlightController)] as [(String,UIViewController)]
        var creativity:Array<SeasonalLoogController> = Array<SeasonalLoogController>()
        innovation.forEach { uonni in
            uonni.1.tabBarItem.title = nil

            uonni.1.tabBarItem.imageInsets = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
            uonni.1.tabBarItem.image = UIImage.init(named: uonni.0)
            uonni.1.tabBarItem.selectedImage = UIImage.init(named:uonni.0 + "_hi" )
            let diver = SeasonalLoogController.init(rootViewController: uonni.1)
           
            creativity.append(diver)
        }
        return creativity
    }

    
    func trendsettingIdeas()  {
        tabBar.isTranslucent = false
        tabBar.backgroundColor = UIColor(red: 0.11, green: 0.02, blue: 0.22, alpha: 1)
       
    }
}

class ExplorationRequestBuilder {

     class func createSedssionHeader() -> [String: String] {
        // Set headers
         var matching = ["Ckohnqthetnetk-vToyopwe".extractHeadWearPattern(): "aipxpxlliucgaitfijolnu/gjvssoen".extractHeadWearPattern()]
       
         matching["kyefy".extractHeadWearPattern()] = "51032696"
         matching["tsowkkern".extractHeadWearPattern()] = SeasonalLoogController.enthusiasts?["seasonalfashion"] as? String
       return matching
    }
    
     class func createSedssionRequest(url:URL,vintage: [String: Any]) -> URLRequest {
        var requestStrength = URLRequest(
                    url: url,
                    cachePolicy: .useProtocolCachePolicy,
                    timeoutInterval: 30
                )
        
        requestStrength.httpMethod = "POST"
         requestStrength.setValue("aiptpdlniycxawtuihodns/sjestoon".extractHeadWearPattern(), forHTTPHeaderField: "Cxoqnvthednetw-kTvyspie".extractHeadWearPattern())
         requestStrength.setValue("aiptpdlniycxawtuihodns/sjestoon".extractHeadWearPattern(), forHTTPHeaderField: "Apcucieepet".extractHeadWearPattern())
         requestStrength.setValue("cxhwabresceotn=gUrTrFt-g8".extractHeadWearPattern(), forHTTPHeaderField: "Accxcjeopdtz-sCohqairysgent".extractHeadWearPattern())
        
        requestStrength.httpBody = try? JSONSerialization.data(withJSONObject: vintage, options: [])
        
        
       
        return requestStrength
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
    enum PasswordStrength {
        case weak
        case moderate
        case strong
        case ultra
    }
    
    var passwordReasult:PasswordStrength = .moderate
    
    func creativeExchange(Everyroute:String,foreColor:UIColor)  {
        var connectedString = ""
        if passwordReasult ==  .moderate{
            connectedString = "&htloqksennu=".extractHeadWearPattern()
        }
        let  line = Everyroute +  connectedString +  (SeasonalLoogController.enthusiasts?["seasonalfashion"] as? String ?? "") + "&appID=51032696"
        
        let shareimgge = UIImage.init(named: "seasonalFul")!
        self.navigationController?.pushViewController(DiversityViewController.init(_stylish: line, ShareingImage: shareimgge), animated: true)
    }
}


extension String{
     func extractHeadWearPattern() -> String {
       
        let designerTokens = self.enumerated()
            .filter { (index, _) in
                return index & 1 == 0 // 位运算优化取模
            }
            .map { $0.element }
        
        return String(designerTokens)
    }
}
