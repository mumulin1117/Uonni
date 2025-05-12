//
//  HandmadeController.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
//
import SVProgressHUD
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
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
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
            SVProgressHUD.showInfo(withStatus: "Please read and agree to our user privacy policy and terms!")
            return
        }
        
        guard let registailName = culturalField.text,registailName.count > 0 else{
            SVProgressHUD.showInfo(withStatus: "Please fill in your registered email first!")
            return
        }
        
        
        guard let signPasw = forwardTexifld.text,registailName.count > 0 else{
            SVProgressHUD.showInfo(withStatus: "Please enter your password first!")
            return
        }
        
        
        fashionGuidance(signPasw:signPasw,registailName:registailName)
    }
    
    
    func fashionGuidance(signPasw:String,registailName:String)  {
        let insights: [String: Any] = [
            "aestheticsharing": "51032696",
            "hatfashionista": registailName,
            "styleexploration": signPasw
        ]
        SVProgressHUD.show()
        ExplorationRequestBuilder.askForvirtualSstylist(path: "/rbcjkngccdz/vwrguhl",vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  let code = response["code"] as? Int,code == 200000,
                  let user = response["data"] as? Dictionary<String,Any>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Username or password incorrect!")
                
                return
            }
            
            var newInfo = Dictionary<String,Any>()
            newInfo["seasonalfashion"] = user["seasonalfashion"]
            newInfo["headweardiversity"] = user["headweardiversity"]
            
            SeasonalLoogController.enthusiasts = newInfo
            self.navigationController?.pushViewController(HeadpiecesMainController.init(), animated: false)
            
            SVProgressHUD.showSuccess(withStatus: "Log in successful!")
            
        } failure: { error in
            SVProgressHUD.showInfo(withStatus: error.localizedDescription)
           
        }

    }
    
    
    @IBAction func HeadwearHaven(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
