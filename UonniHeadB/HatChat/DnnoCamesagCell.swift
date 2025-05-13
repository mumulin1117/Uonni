//
//  DnnoCamesagCell.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/12.
//

import UIKit

class DnnoCamesagCell: UICollectionViewCell {
 
    @IBOutlet weak var artisticHeader: UIImageView!
    
    @IBOutlet weak var headwearName: UILabel!
    @IBOutlet weak var postConttnwearLbl: UILabel!
    
    @IBOutlet weak var tovhatki: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tovhatki.isUserInteractionEnabled = false
        self.layer.cornerRadius = 12
        artisticHeader.layer.cornerRadius = 12
        artisticHeader.contentMode = .scaleAspectFill
        artisticHeader.layer.masksToBounds = true
      
        self.layer.masksToBounds = true
    }

}
