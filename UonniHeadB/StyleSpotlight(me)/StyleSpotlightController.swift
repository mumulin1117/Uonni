//
//  StyleSpotlightController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit

class StyleSpotlightController: ArtistryController {

    @IBOutlet weak var relationFriendUo: UIButton!
    @IBOutlet weak var relationFolloweUo: UIButton!
    @IBOutlet weak var relationFansUo: UIButton!
    
    @IBOutlet weak var suresite: UIButton!
    
    @IBOutlet weak var epationPayi: UIButton!
    
    @IBOutlet weak var ecoEdit: UIButton!
    
    @IBOutlet weak var headwearName: UILabel!
    @IBOutlet weak var artisticHeader: UIImageView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fashionGuidance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artisticHeader.layer.cornerRadius = 60
        addTouchupinside()
        
        creativeExpression()
        relationFriendUo.layer.cornerRadius = 12
        relationFriendUo.layer.masksToBounds = true
    }
    
    private func creativeExpression()  {
        artisticHeader.layer.masksToBounds = true
        relationFolloweUo.layer.cornerRadius = 12
        relationFolloweUo.layer.masksToBounds = true
        artisticHeader.contentMode = .scaleAspectFill
    }
    
    
   
    

}
extension StyleSpotlightController{
    func fashionGuidance()  {
        let insights: [String: Any] = [
            "stylesharing": "\(SeasonalLoogController.enthusiasts?["headweardiversity"] as? Int ?? 0)"
        ]
        
        SceneDelegate.askForvirtualSstylist(path: "/jiyhqvz/wjbxauzuh", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["dqaytea".extractHeadWearPattern()] as? Dictionary<String,Any>
                    
            else {
                
                return
            }
            
            self.stylerecommendations(neda:user)
            
        } failure: { error in
            
        }
        
    }
    
    private func addTouchupinside()
    {
        
        relationFansUo.layer.cornerRadius = 12
        relationFansUo.layer.masksToBounds = true
        
        
        ecoEdit.addTarget(self, action: #selector(didtapRelaitonGo(relaButton:)), for: .touchUpInside)
        relationFriendUo.addTarget(self, action: #selector(didtapRelaitonGo(relaButton:)), for: .touchUpInside)
        relationFriendUo.addTarget(self, action: #selector(didtapRelaitonGo(relaButton:)), for: .touchUpInside)
        relationFriendUo.addTarget(self, action: #selector(didtapRelaitonGo(relaButton:)), for: .touchUpInside)
        suresite.addTarget(self, action: #selector(didtapRelaitonGo(relaButton:)), for: .touchUpInside)
        epationPayi.addTarget(self, action: #selector(didtapRelaitonGo(relaButton:)), for: .touchUpInside)
    }
    
    private func stylerecommendations(neda:Dictionary<String,Any>)  {
        headwearName.text = neda["creativecommunity"] as? String
        if let headerpiceice = neda["trendinspiration"] as? String,let imageUrl = URL(string: headerpiceice) {
            artisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        
        let friendcount = "\(neda["headwearpassion"] as? Int ?? 0)"
        relationFriendUo.titleLabel?.numberOfLines = 2
        relationFriendUo.titleLabel?.textAlignment = .center
        relationFriendUo.setTitle(friendcount + "\nFriends", for: .normal)
       
        let followcount = "\(neda["virtualinspiration"] as? Int ?? 0)"
        relationFolloweUo.setTitle(followcount + "\nFollowings", for: .normal)
        relationFolloweUo.titleLabel?.numberOfLines = 2
        relationFolloweUo.titleLabel?.textAlignment = .center
        
        
        let fanscount = "\(neda["aestheticappeal"] as? Int ?? 0)"
        relationFansUo.setTitle(fanscount + "\nFans", for: .normal)
        relationFansUo.titleLabel?.numberOfLines = 2
        relationFansUo.titleLabel?.textAlignment = .center
       
    }
    
    
    
   @objc func didtapRelaitonGo(relaButton:UIButton)  {
        
      
       
       var headwear = SceneDelegate.fashionInspiration
       
       if relaButton == suresite {
           headwear = headwear +  "ptasgielsg/qSxexthtaimnngk/qipnfdyevxk?".extractHeadWearPattern()
       } else if relaButton == epationPayi {
           headwear = headwear +  "poawgwexsx/jVcojuucqhhetrrCdetnmtgeere/biknodkewxd?".extractHeadWearPattern()
           
       }else if relaButton == relationFriendUo {
           headwear = headwear +  "ptawgqenst/camtjtzeznutxiaomni/aiunydkefxv?ptvyipeem=m1".extractHeadWearPattern()
           
       }else if relaButton == relationFolloweUo {
           headwear = headwear +  "psamgledso/fartttyepnztniyoqnk/ciynhddezxf?atkyxpwee=n2".extractHeadWearPattern()
           
       }else if relaButton == relationFansUo {
           headwear = headwear +  "pqaogiemsi/kaytqtxeintttiaonnb/zirnsduesxp?dtjyapler=e3".extractHeadWearPattern()
           
       }else if relaButton == ecoEdit {
           headwear = headwear +  "pvapgcevsg/fEwdqivtdDwaxtaad/aiqnkdaeyxj?".extractHeadWearPattern()
           
       }
    
      
       self.creativeExchange(Everyroute:headwear, foreColor: relaButton.backgroundColor ?? .clear)
    }
    
}
