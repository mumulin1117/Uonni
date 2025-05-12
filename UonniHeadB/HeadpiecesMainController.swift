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
     func creativeExchange(Everyroute:String)  {
        
        let  line = Everyroute +  "&token=" +  (SeasonalLoogController.enthusiasts?["seasonalfashion"] as? String ?? "") + "&appID=51032696"
        self.navigationController?.pushViewController(DiversityViewController.init(_stylish: line), animated: true)
    }
}


class ExplorationRequestBuilder {

  
    static let headpiecesID: String = "51032696"
    
    static var uniqueHeadgear: String {
        return "http://www.thunderclap456.xyz/backone"
    }
    
    static  var fashionInspiration: String {
        return "http://www.thunderclap456.xyz/#"
    }
    
    // MARK: - Core Request Method
   class func askForvirtualSstylist(
    path: String,
    vintage: [String: Any],
    
    completed: ((Any?) -> Void)?,
    failure: ((Error) -> Void)?
) {
    let urlString = uniqueHeadgear + path
    guard let url = URL(string: urlString) else {
        failure?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL: \(urlString)"]))
        return
    }
    
    var request = createSedssionRequest(url: url, vintage: vintage)
    let headers = createSedssionHeader()
    headers.forEach { request.setValue($1, forHTTPHeaderField: $0) }
    
    let config = URLSessionConfiguration.default
    config.timeoutIntervalForRequest = 30
    config.timeoutIntervalForResource = 60
    
    let session = URLSession(configuration: config)
    
    let task = session.dataTask(with: request) { data, response, error in
        DispatchQueue.main.async {
            // 1. Check for fundamental errors
            if let error = error {
                failure?(error)
                return
            }
            
            // 2. Validate HTTP response
            guard let httpResponse = response as? HTTPURLResponse else {
                failure?(NSError(domain: "NetworkError", code: -2, userInfo: [NSLocalizedDescriptionKey: "Invalid response type"]))
                return
            }
     
            
            // 4. Check data exists
            guard let data = data else {
                failure?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }
            
            // 5. Debug raw response (if needed)
            print("Raw response:", String(data: data, encoding: .utf8) ?? "Non-UTF8 data")
            
            // 6. Try parsing
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [.mutableContainers, .allowFragments])
                completed?(json)
            } catch let parseError {
                // 7. Provide detailed parse error
                failure?(NSError(
                    domain: "ParseError",
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: "Failed to parse response: \(parseError.localizedDescription)",
                        "rawResponse": String(data: data, encoding: .utf8) ?? "Non-text data",
                        "underlyingError": parseError
                    ]
                ))
            }
        }
    }
    task.resume()
}
    
    private class func createSedssionHeader() -> [String: String] {
        // Set headers
        var matching = ["Content-Type": "application/json"]
       
        matching["key"] = headpiecesID
        matching["token"] = SeasonalLoogController.enthusiasts?["seasonalfashion"] as? String
       return matching
    }
    
    private class func createSedssionRequest(url:URL,vintage: [String: Any]) -> URLRequest {
        var request = URLRequest(
                    url: url,
                    cachePolicy: .useProtocolCachePolicy,
                    timeoutInterval: 30
                )
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        
        request.httpBody = try? JSONSerialization.data(withJSONObject: vintage, options: [])
        
        
       
        return request
     }
   
}
