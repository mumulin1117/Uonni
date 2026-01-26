//
//  UBACAMNNIStyleSpotlightController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit

class UBACAMNNIStyleSpotlightController: UBACAMNNIArtistryController {

    @IBOutlet weak var UBACAMNNpost: UILabel!
    
    @IBOutlet weak var UBACAMNNnoost: UILabel!
    
    
    
    @IBOutlet weak var UBACAMNNrelationFriendUo: UIButton!
    @IBOutlet weak var UBACAMNNrelationFolloweUo: UIButton!
    @IBOutlet weak var UBACAMNNrelationFansUo: UIButton!
    
    @IBOutlet weak var UBACAMNNsuresite: UIButton!
    
    @IBOutlet weak var UBACAMNNepationPayi: UIButton!
    
    @IBOutlet weak var UBACAMNNecoEdit: UIButton!
    
    @IBOutlet weak var headUBACAMNNwearName: UILabel!
    @IBOutlet weak var artisticUBACAMNNHeader: UIImageView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UBACAMNNfashionGuidance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UBACAMNNpost.text =  "PhOmSwT".UBACAMNNIextractHeadWearPattern()
        UBACAMNNnoost.text =  "Nzox hPzoesot".UBACAMNNIextractHeadWearPattern()
        
        artisticUBACAMNNHeader.layer.cornerRadius = 60
        UBACAMNNaddTouchupinside()
        
        creativeExpression()
        UBACAMNNrelationFriendUo.layer.cornerRadius = 12
        UBACAMNNrelationFriendUo.layer.masksToBounds = true
    }
    
    private func creativeExpression()  {
        artisticUBACAMNNHeader.layer.masksToBounds = true
        UBACAMNNrelationFolloweUo.layer.cornerRadius = 12
        UBACAMNNrelationFolloweUo.layer.masksToBounds = true
        artisticUBACAMNNHeader.contentMode = .scaleAspectFill
    }
    
    
   
    

}
extension UBACAMNNIStyleSpotlightController{
    func UBACAMNNfashionGuidance()  {
        let UBACAMNNinsights: [String: Any] = [
            "stylesharing": "\(UBACAMNNSeasonalLoogController.UBACAMNNenthusiasts?["headweardiversity"] as? Int ?? 0)"
        ]
        
        SceneDelegate.UBACAMNNIaskForvirtualSstylist(    UBACAMNNIpath: "/jiyhqvz/wjbxauzuh",     UBACAMNNIvintage: UBACAMNNinsights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["dqaytea".UBACAMNNIextractHeadWearPattern()] as? Dictionary<String,Any>
                    
            else {
                
                return
            }
            
            self.stylereUBACAMNNcommendations(UBACAMNNneda:user)
            
        }     UBACAMNNIfailure: { error in
            
        }
        
    }
    
    private func UBACAMNNaddTouchupinside()
    {
        
        UBACAMNNrelationFansUo.layer.cornerRadius = 12
        UBACAMNNrelationFansUo.layer.masksToBounds = true
        
        
        UBACAMNNecoEdit.addTarget(self, action: #selector(UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:)), for: .touchUpInside)
        UBACAMNNrelationFriendUo.addTarget(self, action: #selector(UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:)), for: .touchUpInside)
        UBACAMNNrelationFriendUo.addTarget(self, action: #selector(UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:)), for: .touchUpInside)
        UBACAMNNrelationFriendUo.addTarget(self, action: #selector(UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:)), for: .touchUpInside)
        UBACAMNNsuresite.addTarget(self, action: #selector(UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:)), for: .touchUpInside)
        UBACAMNNepationPayi.addTarget(self, action: #selector(UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:)), for: .touchUpInside)
    }
    
    private func stylereUBACAMNNcommendations(UBACAMNNneda:Dictionary<String,Any>)  {
        headUBACAMNNwearName.text = UBACAMNNneda["creativecommunity"] as? String
        if let headerpiceice = UBACAMNNneda["trendinspiration"] as? String,let imageUrl = URL(string: headerpiceice) {
            artisticUBACAMNNHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        
        let friendcount = "\(UBACAMNNneda["headwearpassion"] as? Int ?? 0)"
        UBACAMNNrelationFriendUo.titleLabel?.numberOfLines = 2
        UBACAMNNrelationFriendUo.titleLabel?.textAlignment = .center
        UBACAMNNrelationFriendUo.setTitle(friendcount + "\nFriends", for: .normal)
       
        let followcount = "\(UBACAMNNneda["virtualinspiration"] as? Int ?? 0)"
        UBACAMNNrelationFolloweUo.setTitle(followcount + "\nFollowings", for: .normal)
        UBACAMNNrelationFolloweUo.titleLabel?.numberOfLines = 2
        UBACAMNNrelationFolloweUo.titleLabel?.textAlignment = .center
        
        
        let fanscount = "\(UBACAMNNneda["aestheticappeal"] as? Int ?? 0)"
        UBACAMNNrelationFansUo.setTitle(fanscount + "\nFans", for: .normal)
        UBACAMNNrelationFansUo.titleLabel?.numberOfLines = 2
        UBACAMNNrelationFansUo.titleLabel?.textAlignment = .center
       
    }
    
    
    
   @objc func UBACAMNNdidtapRelaitonGo(UBACAMNNrelaButton:UIButton)  {
        
      
       
       var headwear = SceneDelegate.UBACAMNNfashionInspiration
       
       if UBACAMNNrelaButton == UBACAMNNsuresite {
           headwear = headwear +  "ptasgielsg/qSxexthtaimnngk/qipnfdyevxk?".UBACAMNNIextractHeadWearPattern()
       } else if UBACAMNNrelaButton == UBACAMNNepationPayi {
           headwear = headwear +  "poawgwexsx/jVcojuucqhhetrrCdetnmtgeere/biknodkewxd?".UBACAMNNIextractHeadWearPattern()
           
       }else if UBACAMNNrelaButton == UBACAMNNrelationFriendUo {
           headwear = headwear +  "ptawgqenst/camtjtzeznutxiaomni/aiunydkefxv?ptvyipeem=m1".UBACAMNNIextractHeadWearPattern()
           
       }else if UBACAMNNrelaButton == UBACAMNNrelationFolloweUo {
           headwear = headwear +  "psamgledso/fartttyepnztniyoqnk/ciynhddezxf?atkyxpwee=n2".UBACAMNNIextractHeadWearPattern()
           
       }else if UBACAMNNrelaButton == UBACAMNNrelationFansUo {
           headwear = headwear +  "pqaogiemsi/kaytqtxeintttiaonnb/zirnsduesxp?dtjyapler=e3".UBACAMNNIextractHeadWearPattern()
           
       }else if UBACAMNNrelaButton == UBACAMNNecoEdit {
           headwear = headwear +  "pvapgcevsg/fEwdqivtdDwaxtaad/aiqnkdaeyxj?".UBACAMNNIextractHeadWearPattern()
           
       }
    
      
       self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:headwear, UBACAMNNforeColor: UBACAMNNrelaButton.backgroundColor ?? .clear)
    }
    
}
