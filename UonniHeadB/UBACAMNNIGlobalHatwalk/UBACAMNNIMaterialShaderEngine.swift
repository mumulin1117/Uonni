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
            presets["Lace Cutout"] = UBACAMNNSCNMaterial()
            presets["Lace Cutout"]?.diffuse = "satin_diffuse"
            presets["Lace Cutout"]?.specular = "satin_specular"
            presets["Lace Cutout"]?.shininess = 0.8
            
          
            
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
