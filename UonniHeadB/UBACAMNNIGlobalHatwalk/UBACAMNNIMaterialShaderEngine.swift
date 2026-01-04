//
//  UBACAMNNIMaterialShaderEngine.swift
//  UonniHeadB
//
//  Created by  on 2025/5/13.
//

import UIKit

class UBACAMNNIMaterialShaderEngine: NSObject {
    private let UBACAMNNmaterialPresets: [String: UBACAMNNSCNMaterial] = {
            var presets = [String: UBACAMNNSCNMaterial]()
            
            // 绸缎材质配置
            presets["绸缎光泽"] = UBACAMNNSCNMaterial()
            presets["绸缎光泽"]?.diffuse = "satin_diffuse"
            presets["绸缎光泽"]?.specular = "satin_specular"
            presets["绸缎光泽"]?.shininess = 0.8
            
          
            
            return presets
        }()
        
    func UBACAMNNapplyMaterial(_ materialName: String, to node: String) {
            guard let material = UBACAMNNmaterialPresets[materialName] else { return }
          
        }
}
struct UBACAMNNSCNMaterial {
    var diffuse:String?
    
    var specular:String?
    var shininess:CGFloat?
}
