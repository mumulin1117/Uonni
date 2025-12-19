//
//  UBACAMNNIHeadwearuserCell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import SnapKit
import UIKit

struct UBACAMNNIHeadwearCommunityMoment {
    let Headwearavatar: String
    let Headwearusername: String
    let HeadwearmediaType: MediaType
    let Headwearcontent: String
    let Headwearlikes: Int
    let Headwearcomments: Int
    
    enum MediaType {
        case photo(String)
        case video(String)
    }
}



class UBACAMNNIHeadwearuserCell: UICollectionViewCell {
    
    let UBACAMNNIartisticHeader = UIImageView()
    let headwearName = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        UBACAMNNIartisticHeader.layer.cornerRadius = 19
        
        self.backgroundColor = UIColor(red: 0.41, green: 0.97, blue: 0.83, alpha: 1)
        contentView.addSubview(UBACAMNNIartisticHeader)
        creativeExpression()
        contentView.addSubview(headwearName)
        
        trendsettinglooks()
        fashionMoments()
    }
    
    private func creativeExpression()  {
        UBACAMNNIartisticHeader.layer.masksToBounds = true
        UBACAMNNIartisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  trendsettinglooks()  {
        headwearName.textColor = .black
       
        headwearName.textAlignment = .center
    }
    
    
    private func  fashionMoments()  {
        headwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        UBACAMNNIartisticHeader.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(3)
            make.width.height.equalTo(38)
            make.centerY.equalToSuperview()
        }
        
        
        headwearName.snp.makeConstraints { make in
            make.leading.equalTo(UBACAMNNIartisticHeader.snp.trailing).offset(4)
            make.trailing.equalToSuperview().offset(-5)
            make.centerY.equalToSuperview()
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
