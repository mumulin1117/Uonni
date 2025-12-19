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
    
    let artisticHeader = UIImageView()
    
    let artisticSporty = UIImageView()
    let headwearName = UILabel()
    
    let postTimewearLbl = UILabel()
    let postConttnwearLbl = UILabel()
   
    
    let interactionUser = UIButton.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        artisticHeader.layer.cornerRadius = 22
        
        contentView.addSubview(artisticSporty)
        artisticSporty.contentMode = .scaleAspectFill
        artisticSporty.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor]
        gradient.locations = [0, 1]
       
        gradient.startPoint = CGPoint(x: 0.5, y: 0.18)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.contentView.layer.addSublayer(gradient)
        
        
        self.backgroundColor = .clear
       
        creativeExpression()
        trendsettinglooks()
        
        
        
        
        fashionMoments()
        
        recommendations()
    }
    
    private func creativeExpression()  {
    
        artisticHeader.layer.masksToBounds = true
        artisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  trendsettinglooks()  {
        headwearName.textColor = .white
        postConttnwearLbl.numberOfLines = 2
        headwearName.textAlignment = .left
        contentView.addSubview(postConttnwearLbl)
        contentView.addSubview(artisticHeader)
        contentView.addSubview(postTimewearLbl)
        interactionUser.setImage(UIImage.init(named: "UBACAMNNIdiversityIN"), for: .normal)
        contentView.addSubview(headwearName)
        contentView.addSubview(interactionUser)
        postConttnwearLbl.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().offset(-70)
        }
        
       
        recommendations()
    }
    
    
    private func  fashionMoments()  {
        headwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        postTimewearLbl.textColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        postTimewearLbl.font = UIFont(name: "Helvetica", size: 13)
        
        postConttnwearLbl.textColor = .white
        postConttnwearLbl.font = UIFont(name: "Helvetica", size: 15)
        
    }
    
    
    private func  recommendations()  {
        artisticHeader.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.width.height.equalTo(46)
            make.bottom.equalTo(postConttnwearLbl.snp.top).offset(-13)
        }
        
        postTimewearLbl.snp.makeConstraints { make in
            make.left.equalTo(artisticHeader.snp.right).offset(9)
            make.bottom.equalTo(artisticHeader)
        }
        
        contentView.addSubview(interactionUser)
        interactionUser.snp.makeConstraints { make in
            make.width.height.equalTo(28)
            make.bottom.right.equalTo(artisticHeader)
        }
        
        contentView.addSubview(headwearName)
        headwearName.snp.makeConstraints { make in
            make.left.equalTo(artisticHeader.snp.right).offset(9)
            make.top.equalTo(artisticHeader).offset(3)
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
