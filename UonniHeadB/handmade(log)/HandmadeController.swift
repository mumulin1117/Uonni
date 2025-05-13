//
//  HandmadeController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
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
            let Headwear = UILabel()
            Headwear.text = "Join the Headwear Community"
            Headwear.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
            Headwear.textColor = .label
            Headwear.textAlignment = .center
            Headwear.translatesAutoresizingMaskIntoConstraints = false
            return Headwear
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fashionHeadhair()
        HeadwearLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
       
        styleIconView()
        
    }
    private var currentPhase: AuthPhase = .welcome
       
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
        let gradient = CAGradientLayer()
               
       
       
        if artistry.isSelected == false {
            gradient.colors = [UIColor.systemPink.cgColor, UIColor.systemIndigo.cgColor]
            SVProgressHUD.showInfo(withStatus: "Please read and agree to our user privacy policy and terms!")
            return
        }
        gradient.frame = view.bounds
        
        guard let registailName = culturalField.text,registailName.count > 0 else{
            SVProgressHUD.showInfo(withStatus: "Please fill in your registered email first!")
            return
        }
        
        
        guard let signPasw = forwardTexifld.text,registailName.count > 0 else{
            SVProgressHUD.showInfo(withStatus: "Please enter your password first!")
            return
        }
        
        view.layer.insertSublayer(gradient, at: 0)
        fashionGuidance(signPasw:signPasw,registailName:registailName)
    }
    
    private func transition(to phase: AuthPhase, animated: Bool = true) {
           currentPhase = phase
           if animated {
               UIView.transition(with: view, duration: 0.35, options: .transitionCrossDissolve) {
                   self.startAuthFlow()
               }
           } else {
               startAuthFlow()
           }
      
    }
    func fashionGuidance(signPasw:String,registailName:String)  {
        let insights: [String: Any] = [
            "aestheticsharing": "51032696",
            "hatfashionista": registailName,
            "styleexploration": signPasw
        ]
        SVProgressHUD.show()
        let startButton = UIButton(type: .system)
        startButton.setTitle("Start config", for: .normal)
        
               
        SceneDelegate.askForvirtualSstylist(path: "/rbcjkngccdz/vwrguhl",vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let pices = response["data"] as? Dictionary<String,Any>
                    
            else {
                startButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
                startButton.backgroundColor = .white.withAlphaComponent(0.9)
                
                SVProgressHUD.showInfo(withStatus: "Username or password incorrect!")
                
                return
            }
            
            startButton.layer.cornerRadius = 24
            
            startButton.transform = CGAffineTransform(translationX: 0, y: 40)
            self.presentWelcomeScreen(headwearuser:pices)
            
            self.navigationController?.pushViewController(HeadpiecesMainController.init(), animated: false)
            
            SVProgressHUD.showSuccess(withStatus: "Log in successful!")
            if startButton.isHidden == true{
                self.view.addSubview(startButton)
            }
            
        } failure: { error in
            startButton.layer.cornerRadius = 24
            
            startButton.transform = CGAffineTransform(translationX: 0, y: 40)
            SVProgressHUD.showInfo(withStatus: error.localizedDescription)
           
        }

    }
    private func startAuthFlow() {
            switch currentPhase {
            case .welcome:
                fashionGuidance(signPasw:"",registailName:"")
            case .avatarSelection:
                break
            case .securitySetup:
                break
            case .completion:
                break
            }
        }
    
    func presentWelcomeScreen(headwearuser:Dictionary<String,Any>)  {
        var saveingHeader = Dictionary<String,Any>()
        saveingHeader["seasonalfashion"] = headwearuser["seasonalfashion"]
        saveingHeader["headweardiversity"] = headwearuser["headweardiversity"]
        
        SeasonalLoogController.enthusiasts = saveingHeader
        
        
    }
    
    @IBAction func HeadwearHaven(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
