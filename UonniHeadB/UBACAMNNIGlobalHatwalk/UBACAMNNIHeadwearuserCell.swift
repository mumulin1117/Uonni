//
//  UBACAMNNIHeadwearuserCell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit

struct UBACAMNNIHeadwearCommunityMoment {
    let UBACAMNNHeadwearavatar: String
    let UBACAMNNHeadwearusername: String
    let UBACAMNNHeadwearmediaType: UBACAMNNMediaType
    let UBACAMNNHeadwearcontent: String
    let UBACAMNNHeadwearlikes: Int
    let UBACAMNNHeadwearcomments: Int
    
    enum UBACAMNNMediaType {
        case photo(String)
        case video(String)
    }
}



class UBACAMNNIHeadwearuserCell: UICollectionViewCell {
    
    let UBACAMNNIartisticHeader = UIImageView()
    let UBACAMNNheadwearName = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        UBACAMNNIartisticHeader.layer.cornerRadius = 19
        
        self.backgroundColor = UIColor(red: 0.41, green: 0.97, blue: 0.83, alpha: 1)
        contentView.addSubview(UBACAMNNIartisticHeader)
        UBACAMNNcreativeExpression()
        contentView.addSubview(UBACAMNNheadwearName)
        
        UBACAMNNtrendsettinglooks()
        UBACAMNNfashionMoments()
    }
    
    private func UBACAMNNcreativeExpression()  {
        UBACAMNNIartisticHeader.layer.masksToBounds = true
        UBACAMNNIartisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  UBACAMNNtrendsettinglooks()  {
        UBACAMNNheadwearName.textColor = .black
       
        UBACAMNNheadwearName.textAlignment = .center
    }
    
    
    private func  UBACAMNNfashionMoments()  {
        UBACAMNNheadwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
      
        UBACAMNNIartisticHeader.translatesAutoresizingMaskIntoConstraints = false
        UBACAMNNheadwearName.translatesAutoresizingMaskIntoConstraints = false

       
        NSLayoutConstraint.activate([
         
            UBACAMNNIartisticHeader.leadingAnchor.constraint(equalTo: UBACAMNNIartisticHeader.superview!.leadingAnchor, constant: 3),
            UBACAMNNIartisticHeader.widthAnchor.constraint(equalToConstant: 38),
            UBACAMNNIartisticHeader.heightAnchor.constraint(equalToConstant: 38),
            UBACAMNNIartisticHeader.centerYAnchor.constraint(equalTo: UBACAMNNIartisticHeader.superview!.centerYAnchor),
          
            UBACAMNNheadwearName.leadingAnchor.constraint(equalTo: UBACAMNNIartisticHeader.trailingAnchor, constant: 4),
            UBACAMNNheadwearName.trailingAnchor.constraint(equalTo: UBACAMNNheadwearName.superview!.trailingAnchor, constant: -5),
            UBACAMNNheadwearName.centerYAnchor.constraint(equalTo: UBACAMNNheadwearName.superview!.centerYAnchor)
        ])
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
