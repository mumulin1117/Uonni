//
//  Headwearer.swift
//  UonniHeadB
//
//  Created by  on 2025/7/25.
//

import UIKit
import SwiftyStoreKit
import FBSDKCoreKit
import WebKit
import SVProgressHUD
import AdjustSdk


class Headwearer: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var snapback:WKWebView?
   
    var beanie:TimeInterval = Date().timeIntervalSince1970
    
    private  var trapper = false
    private var headscarf:String
    
    init(bonnet:String,trilby:Bool) {
        headscarf = bonnet
        
        trapper = trilby
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        snapback?.configuration.userContentController.add(self, name: "rechargePay")
        snapback?.configuration.userContentController.add(self, name: "Close")
        snapback?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snapback?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func AestheticPlogging()  {
        let ushanka = UIImage(named: "headerwear")
        
        let kippah = UIImageView(image:ushanka )
        kippah.frame = self.view.frame
        kippah.contentMode = .scaleAspectFill
        view.addSubview(kippah)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        AestheticPlogging()
        if trapper == true {
            let  mantilla = UIButton.init()
            mantilla.setBackgroundImage(UIImage.init(named: "mengBackg"), for: .normal)
            mantilla.setTitle("Log in", for: .normal)
            mantilla.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            mantilla.setTitleColor(.white, for: .normal)
            mantilla.isUserInteractionEnabled = false
            view.addSubview(mantilla)
            mantilla.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                // make.centerX.equalToSuperview()
                mantilla.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                // make.height.equalTo(52)
                mantilla.heightAnchor.constraint(equalToConstant: 52),
                
                // make.width.equalTo(335)
                mantilla.widthAnchor.constraint(equalToConstant: 335),
                
                // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
                mantilla.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let bridal = WKWebViewConfiguration()
        bridal.allowsAirPlayForMediaPlayback = false
        bridal.allowsInlineMediaPlayback = true
        bridal.preferences.javaScriptCanOpenWindowsAutomatically = true
        bridal.mediaTypesRequiringUserActionForPlayback = []
        bridal.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        snapback = WKWebView.init(frame: UIScreen.main.bounds, configuration: bridal)
        snapback?.isHidden = true
        snapback?.translatesAutoresizingMaskIntoConstraints = false
        snapback?.scrollView.alwaysBounceVertical = false
        
        snapback?.scrollView.contentInsetAdjustmentBehavior = .never
        snapback?.navigationDelegate = self
        
        snapback?.uiDelegate = self
        snapback?.allowsBackForwardNavigationGestures = true
   
        if let wreath = URL.init(string: headscarf) {
            snapback?.load(NSURLRequest.init(url:wreath) as URLRequest)
            beanie = Date().timeIntervalSince1970
        }
        self.view.addSubview(snapback!)
        SVProgressHUD.show()
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        snapback?.isHidden = false
        
        
        SVProgressHUD.dismiss()
        if trapper == true {
            SVProgressHUD.showSuccess(withStatus: "Login successful")
           
            trapper = false
            
        }

        let headband = "/opi/v1/anget"
         let veil: [String: Any] = [
            "angeo":"\(Int(Date().timeIntervalSince1970*1000 - self.beanie*1000))"
         ]
      
        AestheticTo.newsboy.upcycled( headband, artisan: veil)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let sequin = message.body as? Dictionary<String,Any> {
           let cap = sequin["batchNo"] as? String ?? ""
           let embroidered = sequin["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            SVProgressHUD.show()
            
            SwiftyStoreKit.purchaseProduct(cap, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                  
                   
                   
                
                    guard let feather = SwiftyStoreKit.localReceiptData,
                          let leather = psPurch.transaction.transactionIdentifier,
                          leather.count > 5
                    else {
                        SVProgressHUD.showInfo(withStatus: "No have receipt or ID is error")
                        
                        return
                      }
                    
                    guard let crochet = try? JSONSerialization.data(withJSONObject: ["orderCode":embroidered], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: crochet, encoding: .utf8) else{
                        
                        SVProgressHUD.showInfo(withStatus: "orderCode jsonString error")
                        
                        return
                    }

                    AestheticTo.newsboy.upcycled("/opi/v1/virtualp", artisan: [
                        "virtualp":feather.base64EncodedString(),//payload
                        "virtualt":leather,//transactionId
                        "virtualc":orderCodejsonString//callbackResult
                    ],ispaGood: true) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            SVProgressHUD.showSuccess(withStatus: "Purchase successful")
                            self.designer(spotl:psPurch)
                        case .failure(let error):
                            
                            SVProgressHUD.showError(withStatus: "Purchase failed")
                            
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        SVProgressHUD.showError(withStatus: "Purchase failed")
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "absurdityEngine")// 清除本地token
           
            let handwoven = UINavigationController.init(rootViewController: Seasonalntroller.init())
            handwoven.navigationBar.isHidden = true
            
          
            HeadgearController.romantic?.rootViewController = handwoven
        }
        
        if message.name == "pageLoaded" {
            snapback?.isHidden = false
            SVProgressHUD.dismiss()
            
            
        }
    }
    private func designer(spotl:PurchaseDetails) {
        let pageant = [("oztvqyxuuxnjmabx","99.99"),
                          ("vksevccjfrrloraq","49.99"),
                          ("cuptndpchkpqytbm","19.99"),
                          ("fgxomzpcmsktmiks","9.99"),
                          ("dhbjxrzxwpveajfx","4.99"),
                          ("zkdhupekdlofripe","1.99"),
                          ("spxdkkklbrztfvfk","0.99"),
                          ("new_uonni_001_abc123","2.99"),
                          ("new_uonni_002_def456","6.99"),
                          ("new_uonni_003_ghi789","29.99")]
        
        
        
        
        
        
        if let material = pageant.filter({             outfit in
                        outfit.0 == spotl.productId
        }).first,
        let seasonal = Double(material.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): seasonal,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let occasion = spotl.transaction.transactionIdentifier{
                let fabric = ADJEvent(eventToken: "3aub4k")
                fabric?.setProductId(spotl.productId)
                fabric?.setTransactionId(occasion)
                fabric?.setRevenue(seasonal, currency: "USD")
                Adjust.trackEvent(fabric)
            }
        }
       
        
        
        

    }
    
}
