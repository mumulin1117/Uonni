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
      
        UBACAMNNIartisticSporty.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
    
            UBACAMNNIartisticSporty.topAnchor.constraint(equalTo: contentView.topAnchor),
     
            UBACAMNNIartisticSporty.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
       
            UBACAMNNIartisticSporty.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            
         
            UBACAMNNIartisticSporty.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
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
       
        UBACAMNNIartisticHeader.translatesAutoresizingMaskIntoConstraints = false
        headwearName.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            UBACAMNNIartisticHeader.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
           
            UBACAMNNIartisticHeader.widthAnchor.constraint(equalToConstant: 30),
            UBACAMNNIartisticHeader.heightAnchor.constraint(equalToConstant: 30),
            
            
            UBACAMNNIartisticHeader.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),

            headwearName.trailingAnchor.constraint(equalTo: UBACAMNNIartisticHeader.leadingAnchor, constant: -2),
            
            headwearName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
           
            headwearName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8)
        ])
    }
    
    
    private func  UBACAMNNIrecommenUBACAMNNIdations()  {
       
        UBACAMNNIartisticAttitude.translatesAutoresizingMaskIntoConstraints = false
        UBACAMNNIartisticComment.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
         
            UBACAMNNIartisticAttitude.widthAnchor.constraint(equalToConstant: 44),
            UBACAMNNIartisticAttitude.heightAnchor.constraint(equalToConstant: 44),
            
            UBACAMNNIartisticAttitude.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
          
            UBACAMNNIartisticAttitude.trailingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -10),

            UBACAMNNIartisticComment.widthAnchor.constraint(equalToConstant: 44),
            UBACAMNNIartisticComment.heightAnchor.constraint(equalToConstant: 44),
           
            UBACAMNNIartisticComment.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
           
            UBACAMNNIartisticComment.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 10)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
