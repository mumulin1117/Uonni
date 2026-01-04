//
//  UBACAMNNIDnnoCamesagCell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/12.
//

import UIKit
struct UBACAMNNIHeadwearMessage {
    let UBACAMNNsenderAvatar: String
    let UBACAMNNsenderName: String
    let UBACAMNNmessageContent: String
    let UBACAMNNmessageType: UBACAMNNMessageType
    let UBACAMNNtimestamp: Date
    
    enum UBACAMNNMessageType {
        case UBACAMNNtext
        case UBACAMNNvideoShare
        case UBACAMNNaiRecommendation
    }
}
class UBACAMNNIDnnoCamesagCell: UICollectionViewCell {
 
    @IBOutlet weak var UBACAMNNartisticHeader: UIImageView!
    
    @IBOutlet weak var UBACAMNNheadwearName: UILabel!
    @IBOutlet weak var UBACAMNNpostConttnwearLbl: UILabel!
    
    @IBOutlet weak var UBACAMNNtovhatki: UIButton!
    private let UBACAMNNaiRecommendationBadge: UIView = {
        let UBACAMNNiRecommenda = UIView()
        UBACAMNNiRecommenda.backgroundColor = UIColor(red: 0.25, green: 0.65, blue: 1.0, alpha: 0.15)
        UBACAMNNiRecommenda.layer.cornerRadius = 10
        UBACAMNNiRecommenda.isHidden = true
        return UBACAMNNiRecommenda
        
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        UBACAMNNtovhatki.isUserInteractionEnabled = false
        self.layer.cornerRadius = 12
       
        UBACAMNNsetupLayout()
        self.layer.masksToBounds = true
    }
    
    private func UBACAMNNsetupLayout() {
        UBACAMNNartisticHeader.layer.cornerRadius = 12
        UBACAMNNartisticHeader.contentMode = .scaleAspectFill
        UBACAMNNartisticHeader.layer.masksToBounds = true
        
    }

}
