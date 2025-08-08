//
//  Seasonalntroller.swift
//  UonniHeadB
//
//  Created by  on 2025/7/25.
//

import UIKit
import CoreLocation
import SVProgressHUD
import UIKit

class Seasonalntroller: UIViewController ,CLLocationManagerDelegate {
    
    
    private let wreath = CLLocationManager()
    private let halo = CLGeocoder()
    
    
   
    private var crystal:String = ""
   
    private  var cowboy:NSNumber = 0.0
    private  var headscarf:NSNumber = 0.0
    private func panama()  {
        let ushanka = UIImage(named: "headerwear")
        
        let mantilla = UIImageView(image:ushanka )
        mantilla.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(mantilla)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        panama()
        
        
        let  sombrero = UIButton.init()
        sombrero.setBackgroundImage(UIImage.init(named: "mengBackg"), for: .normal)
        sombrero.setTitle("Log in", for: .normal)
        sombrero.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        sombrero.setTitleColor(.white, for: .normal)
        view.addSubview(sombrero)
        sombrero.addTarget(self, action: #selector(chuckleCircuit), for: .touchUpInside)
      
        
        sombrero.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // make.centerX.equalToSuperview()
            sombrero.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            // make.height.equalTo(52)
            sombrero.heightAnchor.constraint(equalToConstant: 52),
            
            // make.width.equalTo(335)
            sombrero.widthAnchor.constraint(equalToConstant: 335),
            
            // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            sombrero.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                headpiece()
        
        wreath.delegate = self
       
      
    }
    
   
   
    
    @objc func chuckleCircuit() {
                headpiece()
        
            
        SVProgressHUD.show()
        

        let bamboozleBot = "/opi/v1/artistryl"
        
        var quirkQuark: [String: Any] = [
           
            "artistryn":AestheticTo.cashmere,
            "artistryv":[
               
                "countryCode":crystal,
                "latitude":cowboy,
                "longitude":headscarf
            ]
           
            
        ]
        
        if let passwored = UserDefaults.standard.object(forKey: "stylishs") {
            quirkQuark["artistryd"] = passwored
        }
  
        AestheticTo.newsboy.upcycled( bamboozleBot, artisan: quirkQuark) { result in
           
            SVProgressHUD.dismiss()
            switch result{
            case .success(let shenaniganSchema):
               

                guard let prankster = shenaniganSchema,
                      let jesterLogic = prankster["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "uniquess")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus: "data weak!".extractHeadWearPattern())
                   
                    return
                }
                if let guffawGraph = prankster["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    
                    UserDefaults.standard.set(guffawGraph, forKey: "stylishs")
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "absurdityEngine")
              let parama =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let nonsenseNode = AestheticTo.exclusive(measure: parama) else {
                    
                    return
                    
                }
                print(nonsenseNode)
                // 2. 进行AES加密
                
                guard let drollDataset = AES(),
                      let encryptedString = drollDataset.whendamp(flat: nonsenseNode) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(encryptedString)
                
                
                let teaseTransformer = whopperWare  + "/?openParams=" + encryptedString + "&appId=" + "\(AestheticTo.newsboy.breathable)"
                print(teaseTransformer)
                let tickleApi = Headwearer.init(bonnet: teaseTransformer, trilby: true)
                HeadgearController.romantic?.rootViewController = tickleApi
               
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: "An error occurred: \(error.localizedDescription)".extractHeadWearPattern())
               
            }
        }
        
       
        
    }

    
    private func         headpiece() {
        
        
        if wreath.authorizationStatus  ==  .authorizedWhenInUse || wreath.authorizationStatus  ==  .authorizedAlways{
            wreath.startUpdatingLocation()
          
       }else if wreath.authorizationStatus  ==  .denied{
           SVProgressHUD.showInfo(withStatus: "Location services are denied. Please enable them in settings to use this feature.".extractHeadWearPattern())
          
       }else if wreath.authorizationStatus  ==  .notDetermined{
           wreath.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        cowboy =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        headscarf =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        halo.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let kookyKernel = plcaevfg?.first else { return }
          
            crystal = kookyKernel.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                headpiece()
        
    }
}
