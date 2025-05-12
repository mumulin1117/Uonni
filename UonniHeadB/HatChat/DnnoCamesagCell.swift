//
//  DnnoCamesagCell.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/12.
//

import UIKit

class DnnoCamesagCell: UICollectionViewCell {
 
    @IBOutlet weak var artisticHeader: UIImageView!
    
    @IBOutlet weak var headwearName: UILabel!
    @IBOutlet weak var postConttnwearLbl: UILabel!
    
    @IBOutlet weak var tovhatki: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 12
        artisticHeader.layer.cornerRadius = 12
        
        artisticHeader.layer.masksToBounds = true
      
        self.layer.masksToBounds = true
    }

}
