//
//  Headinsights Cell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit

class UBACAMNNIHeadinsights_Cell: UICollectionViewCell {
    
    let UBACAMNNIartisticHeader = UIImageView()
    
    let UBACAMNNIartisticSporty = UIImageView()
    let headwearName = UILabel()
    
    
    let UBACAMNNIartisticAttitude = UIImageView.init(image: UIImage.init(named: "UBACAMNNnotheadert"))//UBACAMNNnotheadertYES
    
    let UBACAMNNIartisticComment = UIImageView.init(image: UIImage.init(named: "UBACAMNNIcommentadertYES"))
    override init(frame: CGRect) {
        super.init(frame: frame)
        UBACAMNNIartisticHeader.layer.cornerRadius = 15
        UBACAMNNIartisticSporty.layer.masksToBounds = true
        contentView.addSubview(UBACAMNNIartisticSporty)
        UBACAMNNIartisticSporty.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let graUBACAMNNIdient = CAGradientLayer()
        graUBACAMNNIdient.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor]
        graUBACAMNNIdient.locations = [0, 1]
       
        graUBACAMNNIdient.startPoint = CGPoint(x: 0.5, y: 0.01)
        graUBACAMNNIdient.endPoint = CGPoint(x: 0.99, y: 0.99)
        self.contentView.layer.addSublayer(graUBACAMNNIdient)
        
        
        self.backgroundColor = .clear
        contentView.addSubview(UBACAMNNIartisticHeader)
        creativeExpression()
        contentView.addSubview(headwearName)
        
        trendsettinglooks()
        UBACAMNNIfashionMoments()
        
        UBACAMNNIrecommenUBACAMNNIdations()
    }
    
    private func creativeExpression()  {
        UBACAMNNIartisticSporty.contentMode = .scaleAspectFill
        UBACAMNNIartisticSporty.layer.cornerRadius = 12
        UBACAMNNIartisticSporty.layer.masksToBounds = true
        UBACAMNNIartisticHeader.layer.masksToBounds = true
        UBACAMNNIartisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  trendsettinglooks()  {
        headwearName.textColor = .white
        contentView.addSubview(UBACAMNNIartisticAttitude)
        headwearName.textAlignment = .left
        contentView.addSubview(UBACAMNNIartisticComment)
    }
    
    
    private func  UBACAMNNIfashionMoments()  {
        headwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        
        UBACAMNNIartisticHeader.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.width.height.equalTo(30)
            make.top.equalToSuperview().offset(10)
        }
        
        
        headwearName.snp.makeConstraints { make in
            make.trailing.equalTo(UBACAMNNIartisticHeader.snp.leading).offset(-2)
            make.leading.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(8)
            
        }
    }
    
    
    private func  UBACAMNNIrecommenUBACAMNNIdations()  {
        
        UBACAMNNIartisticAttitude.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-10)
            make.right.equalTo(self.contentView.snp.centerX).offset(-10)
        }
        
        UBACAMNNIartisticComment.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.bottom.equalToSuperview().offset(-10)
            make.left.equalTo(self.contentView.snp.centerX).offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
