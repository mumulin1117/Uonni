//
//  Headinsights Cell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit

class Headinsights_Cell: UICollectionViewCell {
    
    let artisticHeader = UIImageView()
    
    let artisticSporty = UIImageView()
    let headwearName = UILabel()
    
    
    let artisticAttitude = UIImageView.init(image: UIImage.init(named: "notheadert"))//notheadertYES
    
    let artisticComment = UIImageView.init(image: UIImage.init(named: "commentadertYES"))
    override init(frame: CGRect) {
        super.init(frame: frame)
        artisticHeader.layer.cornerRadius = 15
        artisticSporty.layer.masksToBounds = true
        contentView.addSubview(artisticSporty)
        artisticSporty.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor]
        gradient.locations = [0, 1]
       
        gradient.startPoint = CGPoint(x: 0.5, y: 0.01)
        gradient.endPoint = CGPoint(x: 0.99, y: 0.99)
        self.contentView.layer.addSublayer(gradient)
        
        
        self.backgroundColor = .clear
        contentView.addSubview(artisticHeader)
        creativeExpression()
        contentView.addSubview(headwearName)
        
        trendsettinglooks()
        fashionMoments()
        
        recommendations()
    }
    
    private func creativeExpression()  {
        artisticSporty.contentMode = .scaleAspectFill
        artisticSporty.layer.cornerRadius = 12
        artisticSporty.layer.masksToBounds = true
        artisticHeader.layer.masksToBounds = true
        artisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  trendsettinglooks()  {
        headwearName.textColor = .white
        contentView.addSubview(artisticAttitude)
        headwearName.textAlignment = .left
        contentView.addSubview(artisticComment)
    }
    
    
    private func  fashionMoments()  {
        headwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        
        artisticHeader.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.width.height.equalTo(30)
            make.top.equalToSuperview().offset(10)
        }
        
        
        headwearName.snp.makeConstraints { make in
            make.trailing.equalTo(artisticHeader.snp.leading).offset(-2)
            make.leading.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(8)
            
        }
    }
    
    
    private func  recommendations()  {
        
        artisticAttitude.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-10)
            make.right.equalTo(self.contentView.snp.centerX).offset(-10)
        }
        
        artisticComment.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-10)
            make.left.equalTo(self.contentView.snp.centerX).offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
