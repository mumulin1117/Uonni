//
//  VirtualBesthetic.swift
//  UonniHeadB
//
//  Created by  on 2025/8/29.
//

import UIKit

class VirtualBesthetic: NSObject {
    
    // 钥匙串服务标识符
       private static let trendsetting: String = {
           return Bundle.main.bundleIdentifier ?? "com.hairni.uonni"
       }()
       
       // 账户标识符
       private static let looks = "uonni_device_id"
       private static let dialogue = "uonni_user_password"
       
       // MARK: - 设备ID管理

       static func expression() -> String {
      
           if let aesthetic = fashionmoments(nnjiunt: looks) {
               
              
               return aesthetic
           }
         
           let stylish = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
         
           trendsetting(stylish: stylish, diversity: looks)
           
           return stylish
       }
       
     
      
       
       // MARK: - 密码管理
       
       /// 保存用户密码到钥匙串
       static func headwear(_ password: String) {
           trendsetting(stylish: password, diversity: dialogue)
       }
       
       /// 从钥匙串获取用户密码
       static func guidance() -> String? {
           return fashionmoments(nnjiunt: dialogue)
       }
       

       // MARK: - 通用钥匙串操作方法
       
       /// 从钥匙串读取数据
       private static func fashionmoments(nnjiunt: String) -> String? {
           let fashion: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: trendsetting,
               kSecAttrAccount as String: nnjiunt,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var cultural: AnyObject?
           let artistic = SecItemCopyMatching(fashion as CFDictionary, &cultural)
           
           guard artistic == errSecSuccess,
                 let data = cultural as? Data,
                 let value = String(data: data, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
       
       /// 保存数据到钥匙串
       private static func trendsetting(stylish: String, diversity: String) {
           // 先删除可能存在的旧值
           headwear(forward: diversity)
           
           guard let exploration = stylish.data(using: .utf8) else { return }
           
           let headwear: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: trendsetting,
               kSecAttrAccount as String: diversity,
               kSecValueData as String: exploration,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(headwear as CFDictionary, nil)
       }
       
       /// 从钥匙串删除数据
       private static func headwear(forward: String) {
           let stylish: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: trendsetting,
               kSecAttrAccount as String: forward
           ]
           
           SecItemDelete(stylish as CFDictionary)
       }
       

}
