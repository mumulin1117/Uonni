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
struct VirtualHatAvatar {
    let baseMesh: SCNGeometry
    let texture: UIImage
    let accessories: [SCNNode]
    var isARCompatible: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone && ARFaceTrackingConfiguration.isSupported
    }
}

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
        guard let cultural = signal.body  as? String else {
            return
        }
        SVProgressHUD.show()
        self.view.isUserInteractionEnabled = false
        headpieces(appeal:cultural)
      
    }
    private var enthusiasm:WKWebView?
    private var stylish:String
    init(_stylish: String) {
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
                self.navigationController?.pushViewController(DiversityViewController.init(_stylish:hat), animated: true)
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
                SVProgressHUD.showSuccess(withStatus: "pay successful!")
           
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
            let hats = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HandmadeController") as! HandmadeController
            
            window.rootViewController = hats
       
        }
    }
    
    
    lazy var globalCommunity: UIImageView = {
        let global = UIImageView(frame: UIScreen.main.bounds)
        
        global.image = UIImage.init(named: "seasonalFul")
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
