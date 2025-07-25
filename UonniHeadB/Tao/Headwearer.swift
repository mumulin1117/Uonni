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
    private var snickerSculptor:WKWebView?
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    var prankPhysicist:TimeInterval = Date().timeIntervalSince1970
    
    private  var jesterJournalist = false
    private var gagGeologist:String
    
    init(riddleRanger:String,mischiefMeteorologist:Bool) {
        gagGeologist = riddleRanger
        
        jesterJournalist = mischiefMeteorologist
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        snickerSculptor?.configuration.userContentController.add(self, name: "rechargePay")
        snickerSculptor?.configuration.userContentController.add(self, name: "Close")
        snickerSculptor?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snickerSculptor?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func AestheticPlogging()  {
        let MicroNarrative = UIImage(named: "headerwear")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.frame = self.view.frame
        StoryWeaving.contentMode = .scaleAspectFill
        view.addSubview(StoryWeaving)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        AestheticPlogging()
        if jesterJournalist == true {
            let  punProcessor = UIButton.init()
            punProcessor.setBackgroundImage(UIImage.init(named: "mengBackg"), for: .normal)
            punProcessor.setTitle("Log in", for: .normal)
            punProcessor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            punProcessor.setTitleColor(.white, for: .normal)
            punProcessor.isUserInteractionEnabled = false
            view.addSubview(punProcessor)
            punProcessor.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                // make.centerX.equalToSuperview()
                punProcessor.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                // make.height.equalTo(52)
                punProcessor.heightAnchor.constraint(equalToConstant: 52),
                
                // make.width.equalTo(335)
                punProcessor.widthAnchor.constraint(equalToConstant: 335),
                
                // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
                punProcessor.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let jokeJuggler = WKWebViewConfiguration()
        jokeJuggler.allowsAirPlayForMediaPlayback = false
        jokeJuggler.allowsInlineMediaPlayback = true
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
        jokeJuggler.mediaTypesRequiringUserActionForPlayback = []
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        snickerSculptor = WKWebView.init(frame: UIScreen.main.bounds, configuration: jokeJuggler)
        snickerSculptor?.isHidden = true
        snickerSculptor?.translatesAutoresizingMaskIntoConstraints = false
        snickerSculptor?.scrollView.alwaysBounceVertical = false
        
        snickerSculptor?.scrollView.contentInsetAdjustmentBehavior = .never
        snickerSculptor?.navigationDelegate = self
        
        snickerSculptor?.uiDelegate = self
        snickerSculptor?.allowsBackForwardNavigationGestures = true
   
        if let trickTrapper = URL.init(string: gagGeologist) {
            snickerSculptor?.load(NSURLRequest.init(url:trickTrapper) as URLRequest)
            prankPhysicist = Date().timeIntervalSince1970
        }
        self.view.addSubview(snickerSculptor!)
        narrativeEngineCreate()
        self.activetyIndicator?.startAnimating()
       
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
        snickerSculptor?.isHidden = false
        
        
        self.activetyIndicator?.stopAnimating()
        if jesterJournalist == true {
            SVProgressHUD.showSuccess(withStatus: "Login successful")
           
            jesterJournalist = false
            
        }

        let illusionInvestigator = "/opi/v1/anget"
         let quirkQuark: [String: Any] = [
            "angeo":"\(Int(Date().timeIntervalSince1970 - self.prankPhysicist*1000))"
         ]
      
        AestheticTo.goofyGradient.sillySynapse( illusionInvestigator, pranktopia: quirkQuark)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let whimsyWatchmaker = message.body as? Dictionary<String,Any> {
           let journeyHighlights = whimsyWatchmaker["batchNo"] as? String ?? ""
           let orderCode = whimsyWatchmaker["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.activetyIndicator?.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(journeyHighlights, atomically: true) { psResult in
                self.activetyIndicator?.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                  
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier,
                          gettransID.count > 5
                    else {
                        SVProgressHUD.showInfo(withStatus: "No have receipt or ID is error")
                        
                        return
                      }
                    
                    guard let jsonData = try? JSONSerialization.data(withJSONObject: ["orderCode":orderCode], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: jsonData, encoding: .utf8) else{
                        
                        SVProgressHUD.showInfo(withStatus: "orderCode jsonString error")
                        
                        return
                    }

                    AestheticTo.goofyGradient.sillySynapse("/opi/v1/virtualp", pranktopia: [
                        "virtualp":ticketData.base64EncodedString(),//payload
                        "virtualt":gettransID,//transactionId
                        "virtualc":orderCodejsonString//callbackResult
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            SVProgressHUD.showSuccess(withStatus: "Purchase successful")
                            self.collisionDetection(charmUnitsValue:psPurch)
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
           
            let comedyConductor = UINavigationController.init(rootViewController: Seasonalntroller.init())
            comedyConductor.navigationBar.isHidden = true
            
            var whimsyWidget:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                whimsyWidget = giggleGardener
                
            }
            
            whimsyWidget?.rootViewController = comedyConductor
        }
        
        if message.name == "pageLoaded" {
            snickerSculptor?.isHidden = false
            self.activetyIndicator?.stopAnimating()
            
            
        }
    }
    private func collisionDetection(charmUnitsValue:PurchaseDetails) {
        let totlavalurPrice = [("ehssaktyuirzdexh","0.99"),
                          ("zfdaruukeozqypkz","1.99"),
                          ("ojwgvcmkxjneuloo","4.99"),
                          ("zjzzaeqsayvqsrax","9.99"),
                          ("edipfpvelzdfdofx","19.99"),
                          ("newapp1xyz","29.99"),
                          ("newapp2abc","39.99"),
                          ("rfbjyrmwjhvpkdbo","49.99"),
                          ("newapp3mno","89.99"),
                          ("sfiemdoazucfeztp","99.99")]
        
        
        
        
        
        
        if let valurPriceString = totlavalurPrice.filter({ selfer in
            selfer.0 == charmUnitsValue.productId
        }).first,
        let doubleValue = Double(valurPriceString.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): doubleValue,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let alyTransactionIdentifier = charmUnitsValue.transaction.transactionIdentifier{
                let event = ADJEvent(eventToken: "hdykzc")
                event?.setProductId(charmUnitsValue.productId)
                event?.setTransactionId(alyTransactionIdentifier)
                event?.setRevenue(doubleValue, currency: "USD")
                Adjust.trackEvent(event)
            }
        }
       
        
        
        

    }
    
}
