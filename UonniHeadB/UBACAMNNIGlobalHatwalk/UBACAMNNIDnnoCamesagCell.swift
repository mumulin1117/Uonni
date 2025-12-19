//
//  UBACAMNNIDnnoCamesagCell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/12.
//

import UIKit
struct UBACAMNNIHeadwearMessage {
    let senderAvatar: String
    let senderName: String
    let messageContent: String
    let messageType: MessageType
    let timestamp: Date
    
    enum MessageType {
        case text
        case videoShare
        case aiRecommendation
    }
}
class UBACAMNNIDnnoCamesagCell: UICollectionViewCell {
 
    @IBOutlet weak var artisticHeader: UIImageView!
    
    @IBOutlet weak var headwearName: UILabel!
    @IBOutlet weak var postConttnwearLbl: UILabel!
    
    @IBOutlet weak var tovhatki: UIButton!
    private let aiRecommendationBadge: UIView = {
        let iRecommenda = UIView()
        iRecommenda.backgroundColor = UIColor(red: 0.25, green: 0.65, blue: 1.0, alpha: 0.15)
        iRecommenda.layer.cornerRadius = 10
        iRecommenda.isHidden = true
        return iRecommenda
        
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        tovhatki.isUserInteractionEnabled = false
        self.layer.cornerRadius = 12
       
        setupLayout()
        self.layer.masksToBounds = true
    }
    
    private func setupLayout() {
        artisticHeader.layer.cornerRadius = 12
        artisticHeader.contentMode = .scaleAspectFill
        artisticHeader.layer.masksToBounds = true
        
    }

}
