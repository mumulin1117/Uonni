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
    var infinitySync: NWPath.Status = .requiresConnection
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        chuckleCompiler()
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        IQKeyboardManager.shared().isEnabled = true
        let vertexSpin = NWPathMonitor()
            
        vertexSpin.pathUpdateHandler = { [weak self] path in
           
            self?.infinitySync = path.status
            
           
        }
        
        let orbitStep = DispatchQueue(label: "com.youapp.network.monitor")
        vertexSpin.start(queue: orbitStep)
        
        
        AestheticPlogging()
       
        IQKeyboardManager.shared().isEnabled = true
       
      
        narrativeEngineCreate()
    }
    
    private func AestheticPlogging()  {
        let MicroNarrative = UIImage(named: "headerwear")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.frame = self.view.frame
        StoryWeaving.contentMode = .scaleAspectFill
        view.addSubview(StoryWeaving)
    }

    
  
  


    static  var whimsyWidget:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var giggleGenerator:Int = 0
   
    
    
   
    private  func chuckleCompiler()  {
         
        if self.infinitySync != .satisfied  {
          
            if self.giggleGenerator <= 5 {
                self.giggleGenerator += 1
                self.chuckleCompiler()
               
                return
            }
            self.prankProcessor()
            
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
//                    self.giggleGeometer()
//                }
//#endif
            

       
    }
    
    private func prankProcessor() {
        let jesterJunction = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.chuckleCompiler()
        }
        jesterJunction.addAction(truoncetiomFME)
        present(jesterJunction, animated: true)
    }
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    private func gagGenerator()  {
        
        self.activetyIndicator?.startAnimating()
         

        let bamboozleBot = "/opi/v1/thetico"
        let quirkQuark: [String: Any] = [
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

       
        
        print(quirkQuark)
       
           

        AestheticTo.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in
//#if DEBUG
//            #else
            self.activetyIndicator?.stopAnimating()
//#endif
            
            switch result{
            case .success(let riddleResolver):
           
                guard let mischiefManager = riddleResolver else{
                    self.giggleGeometer()
                    return
                }

                let laughterLocator = mischiefManager["openValue"] as? String
                
                let fooleryFinder = mischiefManager["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(laughterLocator, forKey: "uniquess")

                if fooleryFinder == 1 {
                    
                    guard let token = UserDefaults.standard.object(forKey: "absurdityEngine") as? String,
                          let openValue = laughterLocator else{
                    //没有登录
                        HeadgearController.whimsyWidget?.rootViewController = Seasonalntroller.init()
                        return
                    }
                    
                    
                    let pranksterPortal =  [
                          "token":token,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let trickTuner = AestheticTo.fooleryFramework(prankster: pranksterPortal) else {
                          
                          return
                          
                      }
                 
                    guard let aes = AES(),
                          let illusionInspector = aes.encrypt(string: trickTuner) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(illusionInspector)
                    
                    
                    let whimsyWizard = openValue  + "/?openParams=" + illusionInspector + "&appId=\(AestheticTo.goofyGradient.illusionInterface)"
                    print(whimsyWizard)
                   
                  
                    let comedyCartographer = Headwearer.init(riddleRanger: whimsyWizard, mischiefMeteorologist: false)
                    HeadgearController.whimsyWidget?.rootViewController = comedyCartographer
                    return
                }
                
                if fooleryFinder == 0 {
                   
                   
                    HeadgearController.whimsyWidget?.rootViewController = Seasonalntroller.init()
                }
                
                
                
            case .failure(_):
            
                self.giggleGeometer()
                
                
            }
            
        }
       
    }
    
    
    func giggleGeometer(){
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
