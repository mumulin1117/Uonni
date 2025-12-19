//
//  UBACAMNNIMaterialShaderEngine.swift
//  UonniHeadB
//
//  Created by  on 2025/5/13.
//

import UIKit

class UBACAMNNIMaterialShaderEngine: NSObject {
    private let materialPresets: [String: SCNMaterial] = {
            var presets = [String: SCNMaterial]()
            
            // 绸缎材质配置
            presets["绸缎光泽"] = SCNMaterial()
            presets["绸缎光泽"]?.diffuse = "satin_diffuse"
            presets["绸缎光泽"]?.specular = "satin_specular"
            presets["绸缎光泽"]?.shininess = 0.8
            
          
            
            return presets
        }()
        
    func applyMaterial(_ materialName: String, to node: String) {
            guard let material = materialPresets[materialName] else { return }
          
        }
}
struct SCNMaterial {
    var diffuse:String?
    
    var specular:String?
    var shininess:CGFloat?
}
