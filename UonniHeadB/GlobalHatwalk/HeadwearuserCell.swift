//
//  HeadwearuserCell.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
//
import SnapKit
import UIKit
//在线用户
class HeadwearuserCell: UICollectionViewCell {
    
    let artisticHeader = UIImageView()
    let headwearName = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        artisticHeader.layer.cornerRadius = 19
        
        self.backgroundColor = UIColor(red: 0.41, green: 0.97, blue: 0.83, alpha: 1)
        contentView.addSubview(artisticHeader)
        creativeExpression()
        contentView.addSubview(headwearName)
        
        trendsettinglooks()
        fashionMoments()
    }
    
    private func creativeExpression()  {
        artisticHeader.layer.masksToBounds = true
        artisticHeader.contentMode = .scaleAspectFill
    }
    
    
    private func  trendsettinglooks()  {
        headwearName.textColor = .black
       
        headwearName.textAlignment = .center
    }
    
    
    private func  fashionMoments()  {
        headwearName.font = UIFont(name: "Apple SD Gothic Neo SemiBold", size: 16)
        
        artisticHeader.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(3)
            make.width.height.equalTo(38)
            make.centerY.equalToSuperview()
        }
        
        
        headwearName.snp.makeConstraints { make in
            make.leading.equalTo(artisticHeader.snp.trailing).offset(4)
            make.trailing.equalToSuperview().offset(-5)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
