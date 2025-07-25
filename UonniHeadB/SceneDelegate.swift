//
//  SceneDelegate.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
import AppTrackingTransparency
import AdjustSdk

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    static  var fashionInspiration: String {
        return "hotitgpy:z/a/pwywpwn.htshhusnhdwetrycnldadpa4b5o6g.oxdymzb/i#".extractHeadWearPattern()
    }
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
 
        guard let _ = (scene as? UIWindowScene) else { return }
        gestureRecognition()
        significant()
    }
    private func gestureRecognition()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    // MARK: - Core Request Method
   class func askForvirtualSstylist(
    path: String,
    vintage: [String: Any],
    
    completed: ((Any?) -> Void)?,
    failure: ((Error) -> Void)?
) {
    let urlString = "hutntkpl:l/r/cwewtwg.ltyhuufnadtebrrcdlnaipt4b5m6n.sxsyrzc/ubnafcgkxoenke".extractHeadWearPattern() + path
    guard let url = URL(string: urlString) else {
        failure?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL: \(urlString)"]))
        return
    }
    
    var request = ExplorationRequestBuilder.createSedssionRequest(url: url, vintage: vintage)
    let headers = ExplorationRequestBuilder.createSedssionHeader()
    headers.forEach { request.setValue($1, forHTTPHeaderField: $0) }
    
    let config = URLSessionConfiguration.default
    config.timeoutIntervalForRequest = 30
    config.timeoutIntervalForResource = 60
    
    let session = URLSession(configuration: config)
    
    let task = session.dataTask(with: request) { data, response, error in
        DispatchQueue.main.async {
           
            if let error = error {
                failure?(error)
                return
            }
            
            // 2. Validate HTTP response
            guard let httpResponse = response as? HTTPURLResponse else {
                failure?(NSError(domain: "NetworkError", code: -2, userInfo: [NSLocalizedDescriptionKey: "Invalid response type"]))
                return
            }
     
    
            guard let data = data else {
                failure?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }
            
        
            
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

}

extension SceneDelegate{
    
   

    
    func significant() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.amndexid = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.amndexid = location
                    }
                }
            }
        }
    }
}
