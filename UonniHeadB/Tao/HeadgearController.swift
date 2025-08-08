//
//  ViewController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import WebKit
import UIKit
import SVProgressHUD
import IQKeyboardManager
import SwiftyStoreKit
import ARKit
import LocalAuthentication
import CryptoKit
import AdjustSdk
import FBSDKCoreKit
//launch

struct VirtualHatAvatar {
    let baseMesh: SCNGeometry
    let texture: UIImage
    let accessories: [SCNNode]
    var isARCompatible: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone && ARFaceTrackingConfiguration.isSupported
    }
}

class HeadgearController: UIViewController {
    var seasonal: NWPath.Status = .requiresConnection
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        instructions()
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        IQKeyboardManager.shared().isEnabled = true
        let limited = NWPathMonitor()
            
        limited.pathUpdateHandler = { [weak self] path in
           
            self?.seasonal = path.status
            
           
        }
        
        let edition = DispatchQueue(label: "com.youapp.network.monitor")
        limited.start(queue: edition)
        
        
        minimalist()
       
        IQKeyboardManager.shared().isEnabled = true
       
      
        SVProgressHUD.show()
    }
    
    private func minimalist()  {
        let capsule = UIImage(named: "headerwear")
        
        let editorial = UIImageView(image:capsule )
        editorial.frame = self.view.frame
        editorial.contentMode = .scaleAspectFill
        view.addSubview(editorial)
    }

    
  
  


    static  var romantic:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var behind:Int = 0
   
    
    
   
    private  func instructions()  {
         
        if self.seasonal != .satisfied  {
          
            if self.behind <= 5 {
                self.behind += 1
                self.instructions()
               
                return
            }
            self.handmadelove()
            
            return
            
        }
        
//#if DEBUG
                self.gagGenerator()
//#else
//
//                if (Date().timeIntervalSince1970 > 1735743657 ) == true {
//
//                    self.gagGenerator()
//
//                }else{
//
//                    self.velvet()
//                }
//#endif
            

       
    }
    
    private func handmadelove() {
        let batch = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let store = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.instructions()
        }
        batch.addAction(store)
        present(batch, animated: true)
    }
    
    
    private func gagGenerator()  {
        
        SVProgressHUD.show()
         

        let sunlight = "/opi/v1/thetico"
        let reshape: [String: Any] = [
//            "thetice":Locale.preferredLanguages
//                .map { Locale(identifier: $0).languageCode ?? $0 }
//                .reduce(into: [String]()) { result, code in
//                    if !result.contains(code) {
//                        result.append(code)
//                    }
//                },//language,
//            "thetict":TimeZone.current.identifier,//时区
//            "thetick":UITextInputMode.activeInputModes
//                .compactMap { $0.primaryLanguage }
//                .filter { $0 != "dictation" },//keyboards
            "theticg":1

        ]

       
        
        print(reshape)
       
           

        AestheticTo.newsboy.upcycled( sunlight, artisan: reshape) { result in
//#if DEBUG
//            #else
            SVProgressHUD.dismiss()
//#endif
            
            switch result{
            case .success(let refine):
           
                guard let avoiding = refine else{
                    self.velvet()
                    return
                }

                let category = avoiding["openValue"] as? String
                
                let moisture = avoiding["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(category, forKey: "uniquess")

                if moisture == 1 {
                    
                    guard let limited = UserDefaults.standard.object(forKey: "absurdityEngine") as? String,
                          let denim = category else{
                    //没有登录
                        HeadgearController.romantic?.rootViewController = Seasonalntroller.init()
                        return
                    }
                    
                    
                    let headwear =  [
                          "token":limited,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let theatrical = AestheticTo.exclusive(measure: headwear) else {
                          
                          return
                          
                      }
                 
                    guard let cosplay = AES(),
                          let headwear = cosplay.whendamp(flat: theatrical) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(headwear)
                    
                    
                    let fantasy = denim  + "/?openParams=" + headwear + "&appId=\(AestheticTo.newsboy.breathable)"
                    print(fantasy)
                   
                  
                    let satin = Headwearer.init(bonnet: fantasy, trilby: false)
                    HeadgearController.romantic?.rootViewController = satin
                    return
                }
                
                if moisture == 0 {
                   
                   
                    HeadgearController.romantic?.rootViewController = Seasonalntroller.init()
                }
                
                
                
            case .failure(_):
            
                self.velvet()
                
                
            }
            
        }
       
    }
    
    
    func velvet(){
        if SeasonalLoogController.enthusiasts != nil {
            self.navigationController?.pushViewController(HeadpiecesMainController.init(), animated: false)
            return
        }
        
        embroidered()
        
    }
    
    
   

    
    func embroidered() {
        let beaded = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HandmadeController") as! HandmadeController
          
        self.navigationController?.pushViewController(beaded, animated: false)
    }

}



class DiversityViewController: UIViewController , WKScriptMessageHandler {
    
    private  let actionButton = UIButton(type: .system)
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "exitVirtualShowroom" {
            self.navigationController?.popViewController(animated: true)
            return
        }
        
        handleDesignFundRefresh(using: message)
       
        
        navigateBoutiqueSpace(using: message)
           
       
        
        returnToRunwayDashboard(using: message)
        
       
    }
    private func handleDesignFundRefresh(using signal: WKScriptMessage) {
        if signal.name == "beginFashionFundsRefresh" {
            guard let cultural = signal.body  as? String else {
                return
            }
            SVProgressHUD.show()
            self.view.isUserInteractionEnabled = false
            headpieces(appeal:cultural)
        }
      
      
    }
    private var enthusiasm:WKWebView?
    private var stylish:String
    private var ShareingImage:UIImage
    init(_stylish: String,ShareingImage:UIImage) {
        self.ShareingImage = ShareingImage
        self.stylish = _stylish
        super.init(nibName: nil, bundle: nil)
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        actionButton.setTitleColor(.white, for: .normal)
               
       
    }
   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    private func navigateBoutiqueSpace(using signal: WKScriptMessage) {
        actionButton.layer.borderColor = UIColor.black.cgColor
        actionButton.layer.borderWidth = 1
       
        if signal.name == "transitionToVirtualBoutique" {
            if let hat =  signal.body as? String{
                actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
                let shareimgge = UIImage.init(named: "seasonalFul")!
                
                self.navigationController?.pushViewController(DiversityViewController.init(_stylish:hat, ShareingImage: shareimgge), animated: true)
            }
            return
        }
        if signal.name == "navigateToStyleDashboard" {
            self.navigationController?.popToRootViewController(animated: true)
            actionButton.layer.cornerRadius = 8
            
        }
        
    }
    private func headpieces(appeal:String)  {
        actionButton.layer.borderColor = UIColor.black.cgColor
        self.actionButton.layer.borderWidth = 1
        
        SwiftyStoreKit.purchaseProduct(appeal, atomically: true) { psResult in
            SVProgressHUD.dismiss()
            self.actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
            self.view.isUserInteractionEnabled = true
            if case .success(let psPurch) = psResult {
                self.actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
                let cultural = psPurch.transaction.downloads
                if !cultural.isEmpty {
                    SwiftyStoreKit.start(cultural)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
                SVProgressHUD.showSuccess(withStatus: "phagyx hssuicqceeusjsnfhudln!".extractHeadWearPattern())
           
                self.enthusiasm?.evaluateJavaScript("trendCreditsAddedWithFlair()", completionHandler: nil)
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                    self.actionButton.layer.cornerRadius = 8
                    self.view.isUserInteractionEnabled = true
                    return
                }
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
               
                self.actionButton.layer.cornerRadius = 8
                self.actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
            }
        }
    }
    
    
    func returnToRunwayDashboard(using signal: WKScriptMessage)  {
        self.actionButton.layer.cornerRadius = 8
        self.actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        if signal.name == "departFromTrendHub" {
            SeasonalLoogController.enthusiasts = nil
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            let hats = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeadgearController") as! HeadgearController
            
            window.rootViewController = hats
       
        }
    }
    
    
    private lazy var globalCommunity: UIImageView = {
        let global = UIImageView(frame: UIScreen.main.bounds)
        
        global.image = ShareingImage
        return global
    }()
   
    
    func disableInteractionsTemporarily() {
        
        enthusiasm?.backgroundColor = .clear
        enthusiasm?.scrollView.bounces = false
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        globalCommunity.contentMode = .scaleAspectFill
        
        view.addSubview(globalCommunity)
        
        let artistic = WKWebViewConfiguration()
      
        artistic.allowsInlineMediaPlayback = true
        artistic.mediaTypesRequiringUserActionForPlayback = []
     
        let ToRunway = WKUserContentController()
     
        [
               "beginFashionFundsRefresh", "trendCreditsAddedWithFlair", "transitionToVirtualBoutique",
                 "exitVirtualShowroom","navigateToStyleDashboard","departFromTrendHub"
           
        ].forEach { handler in
            ToRunway.add(self, name: handler)
        }
        artistic.userContentController = ToRunway
        enthusiasm = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: artistic
           )
        enthusiasm?.navigationDelegate = self
        
        enthusiasm?.isHidden = true
        disableInteractionsTemporarily()
        enthusiasm?.uiDelegate = self
       
        
        enthusiasm?.scrollView.contentInsetAdjustmentBehavior = .never
        
       
        if let artistry = enthusiasm  {
            
            self.view.addSubview(artistry)
            
            if  let url = URL(string: stylish) {
                artistry.load(URLRequest(url: url))
            }
            
        }
        
        
       
    }
    
   
  
}


extension DiversityViewController:WKNavigationDelegate,WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        actionButton.setTitleColor(.white, for: .normal)
               
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.enthusiasm?.isHidden = false
            self.actionButton.layer.borderColor = UIColor.black.cgColor
            self.actionButton.layer.borderWidth = 1
           
            SVProgressHUD.dismiss()
        }))
        
    }
    
    
    
}
