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
        UBACAMNNartisticSporty.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            UBACAMNNartisticSporty.topAnchor.constraint(equalTo: contentView.topAnchor),
            UBACAMNNartisticSporty.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            UBACAMNNartisticSporty.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            UBACAMNNartisticSporty.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
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
        
        UBACAMNNtConttnwearLbl.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
        
            UBACAMNNtConttnwearLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
          
            UBACAMNNtConttnwearLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
          
            UBACAMNNtConttnwearLbl.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -70)
        ])
        
       
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
       
        UBACAMNNartisticHeader.translatesAutoresizingMaskIntoConstraints = false
        UBACAMNNtTimewearLbl.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
         
            UBACAMNNartisticHeader.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            // make.width.height.equalTo(46)
            UBACAMNNartisticHeader.widthAnchor.constraint(equalToConstant: 46),
            UBACAMNNartisticHeader.heightAnchor.constraint(equalToConstant: 46),
            
            UBACAMNNartisticHeader.bottomAnchor.constraint(equalTo: UBACAMNNtConttnwearLbl.topAnchor, constant: -13),

          
            UBACAMNNtTimewearLbl.leadingAnchor.constraint(equalTo: UBACAMNNartisticHeader.trailingAnchor, constant: 9),
          
            UBACAMNNtTimewearLbl.bottomAnchor.constraint(equalTo: UBACAMNNartisticHeader.bottomAnchor)
        ])
        contentView.addSubview(UBACAMNNinteractionUser)
       
        UBACAMNNinteractionUser.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
           
            UBACAMNNinteractionUser.widthAnchor.constraint(equalToConstant: 28),
            UBACAMNNinteractionUser.heightAnchor.constraint(equalToConstant: 28),
            
            UBACAMNNinteractionUser.bottomAnchor.constraint(equalTo: UBACAMNNartisticHeader.bottomAnchor),
           
            UBACAMNNinteractionUser.trailingAnchor.constraint(equalTo: UBACAMNNartisticHeader.trailingAnchor)
        ])
        
        contentView.addSubview(UBACAMNNheadwearName)
       
        UBACAMNNheadwearName.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
           
            UBACAMNNheadwearName.leadingAnchor.constraint(equalTo: UBACAMNNartisticHeader.trailingAnchor, constant: 9),
           
            UBACAMNNheadwearName.topAnchor.constraint(equalTo: UBACAMNNartisticHeader.topAnchor, constant: 3)
        ])
        
        let UBACAMNNBrton = UIImageView(image: UIImage.init(named: "UBACAMNNIcospla"))
        contentView.addSubview(UBACAMNNBrton)
       
        UBACAMNNBrton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            UBACAMNNBrton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            UBACAMNNBrton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
          
            UBACAMNNBrton.widthAnchor.constraint(equalToConstant: 44),
            
          
            UBACAMNNBrton.heightAnchor.constraint(equalToConstant: 61)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
