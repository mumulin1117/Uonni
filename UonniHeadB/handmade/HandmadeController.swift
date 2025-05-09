//
//  HandmadeController.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
//

import UIKit
//log

class HandmadeController: UIViewController {

    @IBOutlet weak var trendsLabel: UIImageView!
    
    @IBOutlet weak var forwardTexifld: UITextField!
    
    
    @IBOutlet weak var artistry: UIButton!
    @IBOutlet weak var culturalField: UITextField!
    
    
    
    @IBOutlet weak var artistrylbl: UILabel!
    @IBOutlet weak var uniquelbl: UILabel!
    private let HeadwearLabel: UILabel = {
            let label = UILabel()
            label.text = "Join the Headwear Community"
            label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
            label.textColor = .label
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fashionHeadhair()
        HeadwearLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
       
        styleIconView()
        
    }
    
    private func styleIconView()  {
        artistrylbl.isUserInteractionEnabled = true
        HeadwearLabel.backgroundColor = .systemIndigo
        culturalField.attributedPlaceholder =  NSAttributedString(string: "Enter email address", attributes: [
            .font:  UIFont.systemFont(ofSize:18, weight: .semibold),
            .foregroundColor:UIColor.white,
            .kern: 0.5
        ])
        
        forwardTexifld.attributedPlaceholder =  NSAttributedString(string: "Enter password", attributes: [
            .font:  UIFont.systemFont(ofSize:18, weight: .semibold),
            .foregroundColor:UIColor.white,
            .kern: 0.5
        ])
        
        
        uniquelbl.isUserInteractionEnabled = true
    }
    
    
    private func fashionHeadhair()  {
        artistrylbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dividerViewterm)))
        HeadwearLabel.tintColor = .white
        
        uniquelbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dividerView)))
        HeadwearLabel.layer.cornerRadius = 8
    }
    
    @objc func dividerView() {
        //pri
        self.navigationController?.pushViewController(HeadwearPolicyController(currentPolicy: .styleProtection), animated: true)
    }
    
    @objc func dividerViewterm() {
        self.navigationController?.pushViewController(HeadwearPolicyController(currentPolicy: .communityTerms), animated: true)
        
    }
  
    @IBAction func handleStylishContinue(_ sender: UIButton) {
        if artistry.isSelected == false {
            
            return
        }
        
        
      
    }
    
    
    
    @IBAction func HeadwearHaven(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
