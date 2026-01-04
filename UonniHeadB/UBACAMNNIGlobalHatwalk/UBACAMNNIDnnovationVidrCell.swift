//
//  UBACAMNNIDnnovationVidrCell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/12.
//

import UIKit
struct UBACAMNNIHeadwearRecommendation {
    let coverImage: String
    let styleTags: [String]
    let matchScore: Double
}
class UBACAMNNIDnnovationVidrCell: UICollectionViewCell {
    
    let UBACAMNNartisticHeader = UIImageView()
    
    let UBACAMNNartisticSporty = UIImageView()
    let UBACAMNNheadwearName = UILabel()
    
    let UBACAMNNtTimewearLbl = UILabel()
    let UBACAMNNtConttnwearLbl = UILabel()
   
    
    let UBACAMNNinteractionUser = UIButton.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        UBACAMNNartisticHeader.layer.cornerRadius = 22
        
        contentView.addSubview(UBACAMNNartisticSporty)
        UBACAMNNartisticSporty.contentMode = .scaleAspectFill
        UBACAMNNartisticSporty.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let UBACAMNNgradient = CAGradientLayer()
        UBACAMNNgradient.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor]
        UBACAMNNgradient.locations = [0, 1]
       
        UBACAMNNgradient.startPoint = CGPoint(x: 0.5, y: 0.18)
        UBACAMNNgradient.endPoint = CGPoint(x: 1, y: 1)
        self.contentView.layer.addSublayer(UBACAMNNgradient)
        
        
        self.backgroundColor = .clear
       
        UBACAMNNcreativeExpression()
        UBACAMNNtrendsettinglooks()
        
        
        
        
        UBACAMNNfashionMoments()
        
        UBACAMNNrecommendations()
    }
    
    private func UBACAMNNcreativeExpression()  {
    
        UBACAMNNartisticHeader.layer.masksToBounds = true
        UBACAMNNartisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  UBACAMNNtrendsettinglooks()  {
        UBACAMNNheadwearName.textColor = .white
        UBACAMNNtConttnwearLbl.numberOfLines = 2
        UBACAMNNheadwearName.textAlignment = .left
        contentView.addSubview(UBACAMNNtConttnwearLbl)
        contentView.addSubview(UBACAMNNartisticHeader)
        contentView.addSubview(UBACAMNNtTimewearLbl)
        UBACAMNNinteractionUser.setImage(UIImage.init(named: "UBACAMNNIdiversityIN"), for: .normal)
        contentView.addSubview(UBACAMNNheadwearName)
        contentView.addSubview(UBACAMNNinteractionUser)
        UBACAMNNtConttnwearLbl.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().offset(-70)
        }
        
       
        UBACAMNNrecommendations()
    }
    
    
    private func  UBACAMNNfashionMoments()  {
        UBACAMNNheadwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        UBACAMNNtTimewearLbl.textColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        UBACAMNNtTimewearLbl.font = UIFont(name: "Helvetica", size: 13)
        
        UBACAMNNtConttnwearLbl.textColor = .white
        UBACAMNNtConttnwearLbl.font = UIFont(name: "Helvetica", size: 15)
        
    }
    
    
    private func  UBACAMNNrecommendations()  {
        UBACAMNNartisticHeader.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.width.height.equalTo(46)
            make.bottom.equalTo(UBACAMNNtConttnwearLbl.snp.top).offset(-13)
        }
        
        UBACAMNNtTimewearLbl.snp.makeConstraints { make in
            make.left.equalTo(UBACAMNNartisticHeader.snp.right).offset(9)
            make.bottom.equalTo(UBACAMNNartisticHeader)
        }
        
        contentView.addSubview(UBACAMNNinteractionUser)
        UBACAMNNinteractionUser.snp.makeConstraints { make in
            make.width.height.equalTo(28)
            make.bottom.right.equalTo(UBACAMNNartisticHeader)
        }
        
        contentView.addSubview(UBACAMNNheadwearName)
        UBACAMNNheadwearName.snp.makeConstraints { make in
            make.left.equalTo(UBACAMNNartisticHeader.snp.right).offset(9)
            make.top.equalTo(UBACAMNNartisticHeader).offset(3)
        }
        
        let aiuu = UIImageView(image: UIImage.init(named: "UBACAMNNIcospla"))
        contentView.addSubview(aiuu)
        aiuu.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(44)
            make.height.equalTo(61)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
