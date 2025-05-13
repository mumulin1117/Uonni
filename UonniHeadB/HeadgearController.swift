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
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "beginFashionFundsRefresh" {
            guard let cultural = message.body  as? String else {
                return
            }
            SVProgressHUD.show()
            self.view.isUserInteractionEnabled = false
            headpieces(appeal:cultural)
        }
        
       
        
        if message.name == "transitionToVirtualBoutique" {
            if let hat =  message.body as? String{
             
                self.navigationController?.pushViewController(DiversityViewController.init(_stylish:hat), animated: true)
            }
            return
        }
        if message.name == "navigateToStyleDashboard" {
            self.navigationController?.popToRootViewController(animated: true)
            return
        }
           
        if message.name == "exitVirtualShowroom" {
            self.navigationController?.popViewController(animated: true)
            return
        }
        
        if message.name == "departFromTrendHub" {
            SeasonalLoogController.enthusiasts = nil
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            let hats = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HandmadeController") as! HandmadeController
            
            window.rootViewController = hats
            return
        }
        
       
    }
    
    private var enthusiasm:WKWebView?
    private var stylish:String
    init(_stylish: String) {
        self.stylish = _stylish
        super.init(nibName: nil, bundle: nil)
    }
   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
 
    private func headpieces(appeal:String)  {
        SwiftyStoreKit.purchaseProduct(appeal, atomically: true) { psResult in
            SVProgressHUD.dismiss()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let psPurch) = psResult {
               
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
                    self.view.isUserInteractionEnabled = true
                    return
                }
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
               
                
            }
        }
    }
    
    lazy var globalCommunity: UIImageView = {
        let global = UIImageView(frame: UIScreen.main.bounds)
        
        global.image = UIImage.init(named: "seasonalFul")
        return global
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        globalCommunity.contentMode = .scaleAspectFill
        
        view.addSubview(globalCommunity)
        
        let artistic = WKWebViewConfiguration()
      
        artistic.allowsInlineMediaPlayback = true
        artistic.mediaTypesRequiringUserActionForPlayback = []
     
        let insights = WKUserContentController()
     
       
        [
               "beginFashionFundsRefresh", "trendCreditsAddedWithFlair", "transitionToVirtualBoutique",
                 "exitVirtualShowroom","navigateToStyleDashboard","departFromTrendHub"
           
        ].forEach { handler in
            insights.add(self, name: handler)
        }
        artistic.userContentController = insights
        enthusiasm = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: artistic
           )
        enthusiasm?.navigationDelegate = self
        
        enthusiasm?.isHidden = true
        enthusiasm?.backgroundColor = .clear
        enthusiasm?.scrollView.bounces = false
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
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.enthusiasm?.isHidden = false
            SVProgressHUD.dismiss()
        }))
        
    }
    
}
