//
//  Headinsights Cell.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
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
        contentView.addSubview(artisticSporty)
        artisticSporty.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
        self.backgroundColor = .clear
        contentView.addSubview(artisticHeader)
        creativeExpression()
        contentView.addSubview(headwearName)
        
        trendsettinglooks()
        fashionMoments()
        
        recommendations()
    }
    
    private func creativeExpression()  {
        artisticSporty.layer.cornerRadius = 12
        artisticSporty.layer.masksToBounds = true
        artisticHeader.layer.masksToBounds = true
        artisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  trendsettinglooks()  {
        headwearName.textColor = .black
       
        headwearName.textAlignment = .center
        
        contentView.addSubview(artisticAttitude)
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
            make.top.equalToSuperview().offset(4)
            
        }
    }
    
    
    private func  recommendations()  {
        
        artisticAttitude.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-10)
            make.centerX.equalToSuperview().offset(-10)
        }
        
        artisticComment.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-10)
            make.centerX.equalToSuperview().offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
