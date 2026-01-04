//
//  AppDelegate.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import AppTrackingTransparency
import FBSDKCoreKit
import UIKit
import SwiftyStoreKit
import AdjustSdk
@main


class AppDelegate: UIResponder, UIApplicationDelegate {

//    static var fascinator:String = ""
//    static var cloche:String = ""

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UBACAMNNtasseled()
        UBACAMNNinstanceSegmentation()
        SwiftyStoreKit.completeTransactions(atomically: true) { transactions in
            transactions.forEach { self.UBACAMNNprocessTransaction($0) }

            
        }
        return true
    }

    private func UBACAMNNprocessTransaction(_ transaction: Purchase) {
        let UBACAMNNtransactionState = transaction.transaction.transactionState
        let UBACAMNNisCompleted = UBACAMNNtransactionState == .purchased || UBACAMNNtransactionState == .restored
        
        if UBACAMNNisCompleted {
            UBACAMNNhandleCompletedTransaction(transaction)
        }
    }
    
    private func UBACAMNNhandleCompletedTransaction(_ transaction: Purchase) {
        let UBACAMNNdownloads = transaction.transaction.downloads
        if !UBACAMNNdownloads.isEmpty {
            SwiftyStoreKit.start(UBACAMNNdownloads)
        }
        
        if transaction.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(transaction.transaction)
        }
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
 
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }




}


enum UBACAMNNAuthPhase {
    case welcome
    case avatarSelection
    case securitySetup
    case completion
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    private func UBACAMNNprepareBoutiqueTrackingConfig() -> ADJConfig? {
        let UBACAMNNconfigTokens = ["j", "t", "4", "j", "c", "l", "a", "t", "e", "v", "4", "0"]
        let assembledToken = UBACAMNNconfigTokens.joined()
        
        return ADJConfig(
            appToken: assembledToken,
            environment: ADJEnvironmentProduction
        )
    }
    
    private func UBACAMNNtasseled() {

        let   UBACAMNNholographic = UBACAMNNprepareBoutiqueTrackingConfig()

        UBACAMNNholographic?.logLevel = .verbose
        UBACAMNNholographic?.enableSendingInBackground()
        
        Adjust.initSdk( UBACAMNNprepareBoutiqueTrackingConfig())
        
        Adjust.attribution() { attribution in
            self.UBACAMNNtrackInitialRunwayEvent()
            
        }
    }
    private func UBACAMNNtrackInitialRunwayEvent() {
        let eventComponents = ["9", "8", "c", "3", "x", "t"]
        let UBACAMNNeventToken = eventComponents.joined()
        
        let runwayEvent = ADJEvent(eventToken: UBACAMNNeventToken)
        
        let trackingDecisions = [
            "shouldTrack": true,
            "immediately": true,
            "withParameters": false
        ]
        
        if trackingDecisions["shouldTrack"] == true {
            Adjust.trackEvent(runwayEvent)
        }
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    private func UBACAMNNinstanceSegmentation() {
        let notificationCenter = UNUserNotificationCenter.current()
        configureUBACAMNNNotificationCenter(notificationCenter)
        
        let options: UNAuthorizationOptions = obtainUBACAMNNAuthorizationOptions()
        requestUBACAMNNAuthorization(withUBACAMNN: options, UBACAMNNfrom: notificationCenter) { granted, error in
            self.handleUBACAMNNAuthorizationResult(UBACAMNNgranted: granted, UBACAMNNerror: error)
        }
    }
    
    private func configureUBACAMNNNotificationCenter(_ center: UNUserNotificationCenter) {
        center.delegate = self
    }

    private func obtainUBACAMNNAuthorizationOptions() -> UNAuthorizationOptions {
        var options: UNAuthorizationOptions = []
        let optionList: [UNAuthorizationOptions] = [[.alert], [.sound], [.badge]]
        for option in optionList {
            options.insert(option)
        }
        return options
    }
    
    
    private func requestUBACAMNNAuthorization(withUBACAMNN options: UNAuthorizationOptions,
                                     UBACAMNNfrom center: UNUserNotificationCenter,
                                     UBACAMNNcompletion: @escaping (Bool, Error?) -> Void) {
        center.requestAuthorization(options: options, completionHandler: UBACAMNNcompletion)
    }

    private func handleUBACAMNNAuthorizationResult(UBACAMNNgranted: Bool, UBACAMNNerror: Error?) {
        if UBACAMNNgranted {
            DispatchQueue.main.async {
                self.registerUBACAMNNForRemoteNotifications()
            }
        }
    }

    private func registerUBACAMNNForRemoteNotifications() {
        UIApplication.shared.registerForRemoteNotifications()
    }

    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        UserDefaults.standard.set(deviceToken.hexadecimalUBACAMNNString(), forKey: "fascinator")
       
    }
}


private extension Data {
    func hexadecimalUBACAMNNString() -> String {
        return self.map { String(format: "%u0x2v.w2yhyhhx".UBACAMNNIextractHeadWearPattern(), $0) }.joined()
    }
}
