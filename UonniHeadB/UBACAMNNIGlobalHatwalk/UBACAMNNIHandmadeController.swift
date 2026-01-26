//
//  HandmadeController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import SVProgressHUD
import UIKit

class UBACAMNNIHandmadeController: UIViewController {
    
    @IBOutlet weak var UBACAMNNtiop: UILabel!
    
    @IBOutlet weak var UBACAMNNcontinueby: UILabel!
    
    @IBOutlet weak var UBACAMNNtrendsLabel: UIImageView!
    
    @IBOutlet weak var UBACAMNNforwardTexifld: UITextField!
    
    
    @IBOutlet weak var UBACAMNNartistry: UIButton!
    @IBOutlet weak var UBACAMNNculturalField: UITextField!
 

    @IBOutlet weak var UBACAMNNartistrylbl: UILabel!
    @IBOutlet weak var UBACAMNNuniquelbl: UILabel!
    private let UBACAMNNHeadwearLabel: UILabel = {
            let UBACAMNNHeadwear = UILabel()
          
            UBACAMNNHeadwear.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
            UBACAMNNHeadwear.textColor = .label
            UBACAMNNHeadwear.textAlignment = .center
            UBACAMNNHeadwear.translatesAutoresizingMaskIntoConstraints = false
            return UBACAMNNHeadwear
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        UBACAMNNfashionHeadhair()
        UBACAMNNHeadwearLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
       
        UBACAMNNstyleIconView()
        
    }
    private var UBACAMNNcurrentPhase: UBACAMNNAuthPhase = .welcome
       
    private func UBACAMNNstyleIconView()  {
        UBACAMNNartistrylbl.isUserInteractionEnabled = true
        UBACAMNNHeadwearLabel.backgroundColor = .systemIndigo
        UBACAMNNculturalField.attributedPlaceholder =  NSAttributedString(string: "Ejnutnefrp xeamaapiqlt waldzdircetsqs".UBACAMNNIextractHeadWearPattern(), attributes: [
            .font:  UIFont.systemFont(ofSize:18, weight: .semibold),
            .foregroundColor:UIColor.white,
            .kern: 0.5
        ])
        
        UBACAMNNforwardTexifld.attributedPlaceholder =  NSAttributedString(string: "Ednatuezrn apmahsnsxwvokryd".UBACAMNNIextractHeadWearPattern(), attributes: [
            .font:  UIFont.systemFont(ofSize:18, weight: .semibold),
            .foregroundColor:UIColor.white,
            .kern: 0.5
        ])
        
        
        UBACAMNNuniquelbl.isUserInteractionEnabled = true
    }
    
    
    private func UBACAMNNfashionHeadhair()  {
        UBACAMNNartistrylbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(UBACAMNNdividerViewterm)))
        UBACAMNNHeadwearLabel.tintColor = .white
        UBACAMNNartistrylbl.text = "<sTsevrymcsb koxfq uUysueg>".UBACAMNNIextractHeadWearPattern()
        UBACAMNNuniquelbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(UBACAMNNdividerView)))
        UBACAMNNuniquelbl.text = "<sPfrlifvcalcjyo fPtoelioscayu>".UBACAMNNIextractHeadWearPattern()
        UBACAMNNHeadwearLabel.layer.cornerRadius = 8
        UBACAMNNtiop.text = "Iyfl aniod vaaclcsoxumnstv,zWyeh twmimlqlb pcnrbefautmek joonqej ofionry rysoouk gaxubtnoummaxtligcvaglclvy".UBACAMNNIextractHeadWearPattern()
        
        UBACAMNNcontinueby.text = "Biyc trieqgwirsftxeyrbimnhge,j oyfoduz safggrteqea btaot mtwhie ".UBACAMNNIextractHeadWearPattern()
    }
    
    @objc func UBACAMNNdividerView() {
       
        self.navigationController?.pushViewController(UBACAMNNIHeadwearPolicyController(currentPolicy: .styleProtection), animated: true)
    }
    
    @objc func UBACAMNNdividerViewterm() {
        self.navigationController?.pushViewController(UBACAMNNIHeadwearPolicyController(currentPolicy: .communityTerms), animated: true)
        
    }
  
    @IBAction func UBACAMNNhandleStylishContinue(_ sender: UIButton) {
        let UBACAMNNgradient = CAGradientLayer()
               
       
       
        if UBACAMNNartistry.isSelected == false {
            UBACAMNNgradient.colors = [UIColor.systemPink.cgColor, UIColor.systemIndigo.cgColor]
            SVProgressHUD.showInfo(withStatus: "Pzlnexaosyez lrtevaudz kannydl caeglruehea gtcol xokugra gucspewru vpbrvifvraxczyw npnovlnizcmya iaznndf itzevrpmysr!".UBACAMNNIextractHeadWearPattern())
            return
        }
        UBACAMNNgradient.frame = view.bounds
        
        guard let registailName = UBACAMNNculturalField.text,registailName.count > 0 else{
            SVProgressHUD.showInfo(withStatus: "Psluezaxsaem sfkinlllk cienk bymoyuqrc arpeggpifsntaegrkeddx eexmrakitlc sfiisrssitl!".UBACAMNNIextractHeadWearPattern())
            return
        }
        
        
        guard let signPasw = UBACAMNNforwardTexifld.text,registailName.count > 0 else{
            SVProgressHUD.showInfo(withStatus: "Prlneeaxsaez gennltpeurz kykolulry npoavsesnwmomridl ffyibrysetj!".UBACAMNNIextractHeadWearPattern())
            return
        }
        
        view.layer.insertSublayer(UBACAMNNgradient, at: 0)
        UBACAMNNfashionGuidance(UBACAMNNsignPasw:signPasw,UBACAMNNregistailName:registailName)
    }
    
    private func UBACAMNNtransition(to phase: UBACAMNNAuthPhase, UBACAMNNanimated: Bool = true) {
           UBACAMNNcurrentPhase = phase
           if UBACAMNNanimated {
               UIView.transition(with: view, duration: 0.35, options: .transitionCrossDissolve) {
                   self.UBACAMNNstartAuthFlow()
               }
           } else {
               UBACAMNNstartAuthFlow()
           }
      
    }
    func UBACAMNNfashionGuidance(UBACAMNNsignPasw:String,UBACAMNNregistailName:String)  {
        let insights: [String: Any] = [
            "aestheticsharing": "51032696",
            "hatfashionista": UBACAMNNregistailName,
            "styleexploration": UBACAMNNsignPasw
        ]
        SVProgressHUD.show()
        let UBACAMNNstartButton = UIButton(type: .system)
        UBACAMNNstartButton.setTitle("", for: .normal)
        
               
        SceneDelegate.UBACAMNNIaskForvirtualSstylist(    UBACAMNNIpath: "/rbcjkngccdz/vwrguhl",    UBACAMNNIvintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let UBACAMNNpices = response["dqaytea".UBACAMNNIextractHeadWearPattern()] as? Dictionary<String,Any>
                    
            else {
                UBACAMNNstartButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
                UBACAMNNstartButton.backgroundColor = .white.withAlphaComponent(0.9)
                
                SVProgressHUD.showInfo(withStatus: "Ypoiudrs lUisoeyrzngajmvea lovrh dpuarsgscwpogrjdg zimnxcyoxrzrjerccts!".UBACAMNNIextractHeadWearPattern())
                
                return
            }
            
            UBACAMNNstartButton.layer.cornerRadius = 24
            
            UBACAMNNstartButton.transform = CGAffineTransform(translationX: 0, y: 40)
            self.UBACAMNNpresentWelcomeScreen(UBACAMNNheadwearuser:UBACAMNNpices)
            
            self.navigationController?.pushViewController(UBACAMNNIHeadpiecesMainController.init(), animated: false)
            
            SVProgressHUD.showSuccess(withStatus: "Lpokgs biwnm usnuycbczezsessfluwlh!".UBACAMNNIextractHeadWearPattern())
            if UBACAMNNstartButton.isHidden == true{
                self.view.addSubview(UBACAMNNstartButton)
            }
            
        }     UBACAMNNIfailure: { error in
            UBACAMNNstartButton.layer.cornerRadius = 24
            
            UBACAMNNstartButton.transform = CGAffineTransform(translationX: 0, y: 40)
            SVProgressHUD.showInfo(withStatus: error.localizedDescription)
           
        }

    }
    private func UBACAMNNstartAuthFlow() {
            switch UBACAMNNcurrentPhase {
            case .welcome:
                UBACAMNNfashionGuidance(UBACAMNNsignPasw:"",UBACAMNNregistailName:"")
            case .avatarSelection:
                break
            case .securitySetup:
                break
            case .completion:
                break
            }
        }
    
    func UBACAMNNpresentWelcomeScreen(UBACAMNNheadwearuser:Dictionary<String,Any>)  {
        var UBACAMNNsaveingHeader = Dictionary<String,Any>()
        UBACAMNNsaveingHeader["seasonalfashion"] = UBACAMNNheadwearuser["seasonalfashion"]
        UBACAMNNsaveingHeader["headweardiversity"] = UBACAMNNheadwearuser["headweardiversity"]
        
        UBACAMNNSeasonalLoogController.UBACAMNNenthusiasts = UBACAMNNsaveingHeader
        
        
    }
    
    @IBAction func UBACAMNNHeadwearHaven(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
