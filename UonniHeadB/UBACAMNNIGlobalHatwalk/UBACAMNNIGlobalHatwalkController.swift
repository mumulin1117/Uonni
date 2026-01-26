//
//  UBACAMNNIGlobalHatwalkController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import SVProgressHUD
import UIKit
import Kingfisher

class UBACAMNNIGlobalHatwalkController: UBACAMNNIArtistryController {
    var UBACAMNNIguidance:Int = 1{
        didSet{
            UBACAMNNItrendsettingideas()
        }
    }
    private var UBACAMNNIrecommentuser:Dictionary<String,Array<Dictionary<String,Any>>>  = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    
    private var recommendMonment:Dictionary<String,Array<Dictionary<String,Any>>> = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    
    @IBOutlet weak var UBACAMNNrecommendationsView: UICollectionView!
    @IBOutlet weak var UBACAMNNartistryView: UICollectionView!
    
    @IBOutlet weak var UBACAMNNhatsTrending: UIButton!
    
    @IBOutlet weak var UBACAMNNhatsForsession: UIButton!
    
    
    @IBOutlet weak var UBACAMNNnewruio: UIButton!
    
    private enum UBACAMNNISection: Int, CaseIterable {
        case UBACAMNNtrending
        case recommendations
        case moments
        
    }
    
    private let UBACAMNNIselectionRing = CAShapeLayer()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UBACAMNNfashionGuidance()
        UBACAMNNapplyInitialSnapshot()
        UBACAMNNItrendsettingideas()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UBACAMNNIheadwearArt()
        
        UBACAMNNstyleRecommendations()
    }
    
   
    private func UBACAMNNIconfigureHierarchy() {
           title = ""
           view.backgroundColor = .systemGroupedBackground
           
        UBACAMNNhatsForsession.addTarget(self, action: #selector(UBACAMNNbohemianStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
        UBACAMNNnewruio.addTarget(self, action: #selector(UBACAMNNbohemianStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
      
    }
    func UBACAMNNIheadwearArt() {
        UBACAMNNhatsTrending.addTarget(self, action: #selector(UBACAMNNbohemianStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
        UBACAMNNhatsForsession.addTarget(self, action: #selector(UBACAMNNbohemianStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
        UBACAMNNnewruio.addTarget(self, action: #selector(UBACAMNNbohemianStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
    }
 
    
    private func UBACAMNNIpersonalizedStyle()  {
        UBACAMNNhatsTrending.isSelected = false
        UBACAMNNhatsForsession.isSelected = false
        UBACAMNNnewruio.isSelected = false
        
    }
    
    @IBAction func UBACAMNNbeautySharing(_ sender: UIButton) {
        UBACAMNNIselectionRing.strokeColor = UIColor.clear.cgColor
                
       
        let mainRoute =  SceneDelegate.UBACAMNNfashionInspiration + "pcaegiexst/vRremlgegaesxejDeygnratmjiqcg/vianwdledxe?".UBACAMNNIextractHeadWearPattern()
        UBACAMNNIselectionRing.fillColor = UIColor.clear.cgColor
        
        self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: sender.backgroundColor ?? .clear)
        UBACAMNNIselectionRing.lineWidth = 2
    }
   
    private func UBACAMNNstyleRecommendations() {
        UBACAMNNrecommendationsView.backgroundColor = .clear
        UBACAMNNrecommendationsView.delegate = self
        UBACAMNNrecommendationsView.dataSource = self
        UBACAMNNrecommendationsView.register(UBACAMNNIHeadwearuserCell.self, forCellWithReuseIdentifier: "HeadwearuserCell")
        
        UBACAMNNartistryView.contentInset = UIEdgeInsets(top: 0, left: 12, bottom: 100, right: 12)
        UBACAMNNartistryView.backgroundColor = .clear
        UBACAMNNartistryView.delegate = self
        UBACAMNNartistryView.dataSource = self
        UBACAMNNartistryView.register(UBACAMNNIHeadinsights_Cell.self, forCellWithReuseIdentifier: "Headinsights_Cell")
       
    }
    
    
    
    @objc func UBACAMNNbohemianStyles(UBACAMNNacitonButon:UIButton)  {
        UBACAMNNIpersonalizedStyle()
        
        UBACAMNNacitonButon.isSelected = true
        
        UBACAMNNIguidance = UBACAMNNacitonButon.tag
    }
    
}


extension UBACAMNNIGlobalHatwalkController{
    
    private func UBACAMNNapplyInitialSnapshot() {
        
        
        let trendingItems = (0..<5).map { _ in
                   UBACAMNNIHeadwearTrendingItem(
                    UBACAMNNHeadwearimageURL: "",
                    UBACAMNNHeadweartitle: "",
                    UBACAMNNHeadweardescription: "",
                    UBACAMNNHeadwearinteractionCount: Int.random(in: 100..<1000)
                   )
               }
               
              
        let recommendations = (0..<4).map { _ in
            UBACAMNNIHeadwearRecommendation(
                coverImage: "",
                styleTags: ["Retro", "Vacation", "Bohemian"].shuffled(),
                matchScore: Double.random(in: 0.7...0.95)
            )
        }
        
        let moments = (0..<8).map { _ in
            UBACAMNNIHeadwearCommunityMoment(
                UBACAMNNHeadwearavatar: "",
                UBACAMNNHeadwearusername: "StyleIcon_\(Int.random(in: 1024...9999))",
                UBACAMNNHeadwearmediaType: .photo(""),
                UBACAMNNHeadwearcontent: "Just experimented with a brand new headwear combo today! What do you think?",
                UBACAMNNHeadwearlikes: Int.random(in: 120...850),
                UBACAMNNHeadwearcomments: Int.random(in: 5...88)
            )
            
        }
    }
    func UBACAMNNfashionGuidance()  {
        let insights: [String: Any] = [
            "headwearfashion": "51032696"
        ]
        UBACAMNNapplyInitialSnapshot()
        SceneDelegate.UBACAMNNIaskForvirtualSstylist(    UBACAMNNIpath: "/syydhnafgz/gbtyvidltckj",     UBACAMNNIvintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["dqaytea".UBACAMNNIextractHeadWearPattern()] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Naoz idvaytxa".UBACAMNNIextractHeadWearPattern())
                
                return
            }
            
            self.UBACAMNNIrecommentuser["GlobalHatwalk"] = user
            
            self.UBACAMNNrecommendationsView.reloadData()
            
        }     UBACAMNNIfailure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
    
    
    
    
    func UBACAMNNItrendsettingideas()  {
       
        let UBACAMNNinsights: [String:Any] = [
            "casualcaps": "51032696",
            "elegantheadbands":1,
            "vintagehats":12,
            "luxuryheadpieces":UBACAMNNIguidance,
                "bohemianstyles":1
            
        ]
        SVProgressHUD.show()
        SceneDelegate.UBACAMNNIaskForvirtualSstylist(    UBACAMNNIpath: "/ssvjeaitpqgz/kkatdxmagludyrk",     UBACAMNNIvintage: UBACAMNNinsights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["dqaytea".UBACAMNNIextractHeadWearPattern()] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Naoz idvaytxa".UBACAMNNIextractHeadWearPattern())
                
                return
            }
            
            self.recommendMonment["GlobalHatwalk"] = user.filter({ dic in
           
                return (dic["hatmatching"] as? String)  == nil
               
            })
            SVProgressHUD.dismiss()
            
            self.UBACAMNNartistryView.reloadData()
            
        }     UBACAMNNIfailure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
}


extension UBACAMNNIGlobalHatwalkController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.UBACAMNNrecommendationsView {
            return CGSize(width: 100, height: 44)
        }
        return CGSize(width: (UIScreen.main.bounds.width - 24 - 9)/2, height: 238)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        9
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        9
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.UBACAMNNrecommendationsView {
            return UBACAMNNIrecommentuser["GlobalHatwalk"]?.count ?? 0
        }
        return recommendMonment["GlobalHatwalk"]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.UBACAMNNrecommendationsView {
            let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeadwearuserCell", for: indexPath) as! UBACAMNNIHeadwearuserCell
            if let imglink = UBACAMNNIrecommentuser["GlobalHatwalk"]?[indexPath.row]["creativeheadpieces"] as? String,let imageUrl = URL(string: imglink) {
                uonnicell.UBACAMNNIartisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])

            }
            uonnicell.UBACAMNNheadwearName.text = UBACAMNNIrecommentuser["GlobalHatwalk"]?[indexPath.row]["trendycaps"] as? String
            return uonnicell
        }
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "Headinsights_Cell", for: indexPath) as! UBACAMNNIHeadinsights_Cell
        if let headerpiceice = (recommendMonment["GlobalHatwalk"]?[indexPath.row]["fashioncreativity"] as? Array<String>)?.first,let imageUrl = URL(string: headerpiceice) {
            uonnicell.UBACAMNNIartisticSporty.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        if let UBACAMNNheaderpiceice = recommendMonment["GlobalHatwalk"]?[indexPath.row]["hatcollections"] as? String,let imageHeaderUrl = URL(string: UBACAMNNheaderpiceice) {
            uonnicell.UBACAMNNIartisticHeader.kf.setImage(with: imageHeaderUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
       
        uonnicell.UBACAMNNIartisticAttitude.image = UIImage(named: ((recommendMonment["GlobalHatwalk"]?[indexPath.row]["headwearart"] as? Int) == 1) ? "UBACAMNNnotheadertYES" : "UBACAMNNnotheadert")
        uonnicell.headwearName.text = recommendMonment["GlobalHatwalk"]?[indexPath.row]["trendsettinglooks"] as? String
        return uonnicell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        UBACAMNNIselectionRing.strokeColor = UIColor.clear.cgColor
                
        
        
        if collectionView == self.UBACAMNNrecommendationsView {
            guard let UBACAMNNheadwearIDD = UBACAMNNIrecommentuser["GlobalHatwalk"]?[indexPath.row]["stylishhats"] as? Int else { return  }
            UBACAMNNIselectionRing.fillColor = UIColor.clear.cgColor
            let mainRoute =  SceneDelegate.UBACAMNNfashionInspiration + "poangiexsv/nHhojmkeyPhaygfej/sivnedvedxu?muusqebrjIvdw=".UBACAMNNIextractHeadWearPattern()  + "\(UBACAMNNheadwearIDD)"
            UBACAMNNIselectionRing.lineWidth = 2
            self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: collectionView.backgroundColor ?? .clear)
            return
        }
        
        
        guard let UBACAMNNheadwearID = recommendMonment["GlobalHatwalk"]?[indexPath.row]["chicaccessories"] as? Int else { return  }
        UBACAMNNIselectionRing.fillColor = UIColor.clear.cgColor
        let mainRoute =  SceneDelegate.UBACAMNNfashionInspiration + "pyamgwecst/cDrytneaamiiucbDweltuajiflesu/kianpdneexy?vddyknuaamxiucmIfdb=".UBACAMNNIextractHeadWearPattern()  + "\(UBACAMNNheadwearID)"
        UBACAMNNIselectionRing.lineWidth = 2
        self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor:  collectionView.backgroundColor ?? .clear)
        
    }
    
    
}
