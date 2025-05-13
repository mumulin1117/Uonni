//
//  GlobalHatwalkController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import SVProgressHUD
import UIKit
import Kingfisher

class GlobalHatwalkController: ArtistryController {
    var guidance:Int = 1{
        didSet{
            trendsettingideas()
        }
    }
    private var recommentuser:Dictionary<String,Array<Dictionary<String,Any>>>  = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    
    private var recommendMonment:Dictionary<String,Array<Dictionary<String,Any>>> = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    
    @IBOutlet weak var recommendationsView: UICollectionView!
    @IBOutlet weak var artistryView: UICollectionView!
    
    @IBOutlet weak var hatsTrending: UIButton!
    
    @IBOutlet weak var hatsForsession: UIButton!
    
    
    @IBOutlet weak var newruio: UIButton!
    
    private enum Section: Int, CaseIterable {
        case trending
        case recommendations
        case moments
        
    }
    
    private let selectionRing = CAShapeLayer()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fashionGuidance()
        applyInitialSnapshot()
        trendsettingideas()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headwearArt()
        
        styleRecommendations()
    }
    
   
    private func configureHierarchy() {
           title = "头饰美学馆"
           view.backgroundColor = .systemGroupedBackground
           
        hatsForsession.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
        newruio.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
      
    }
    func headwearArt() {
        hatsTrending.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
        hatsForsession.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
        newruio.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
    }
 
    
    private func personalizedStyle()  {
        hatsTrending.isSelected = false
        hatsForsession.isSelected = false
        newruio.isSelected = false
        
    }
    
    @IBAction func beautySharing(_ sender: UIButton) {
        selectionRing.strokeColor = UIColor.clear.cgColor
                
       
        let mainRoute =  SceneDelegate.fashionInspiration + "pages/ReleaseDynamic/index?"
        selectionRing.fillColor = UIColor.clear.cgColor
        
        self.creativeExchange(Everyroute:mainRoute, foreColor: sender.backgroundColor ?? .clear)
        selectionRing.lineWidth = 2
    }
   
    private func styleRecommendations() {
        recommendationsView.backgroundColor = .clear
        recommendationsView.delegate = self
        recommendationsView.dataSource = self
        recommendationsView.register(HeadwearuserCell.self, forCellWithReuseIdentifier: "HeadwearuserCell")
        
        artistryView.contentInset = UIEdgeInsets(top: 0, left: 12, bottom: 100, right: 12)
        artistryView.backgroundColor = .clear
        artistryView.delegate = self
        artistryView.dataSource = self
        artistryView.register(Headinsights_Cell.self, forCellWithReuseIdentifier: "Headinsights_Cell")
       
    }
    
    
    
    @objc func bohemianStyles(acitonButon:UIButton)  {
        personalizedStyle()
        
        acitonButon.isSelected = true
        
        guidance = acitonButon.tag
    }
    
}


extension GlobalHatwalkController{
    
    private func applyInitialSnapshot() {
        
        
        let trendingItems = (0..<5).map { _ in
                   HeadwearTrendingItem(
                    HeadwearimageURL: "https://via.placeholder.com/300x200",
                    Headweartitle: "2024春夏头饰流行趋势",
                    Headweardescription: "贝雷帽的100种可能",
                    HeadwearinteractionCount: Int.random(in: 100..<1000)
                   )
               }
               
              
        let recommendations = (0..<4).map { _ in
            HeadwearRecommendation(
                coverImage: "https://via.placeholder.com/200x150",
                styleTags: ["复古", "度假", "波西米亚"].shuffled(),
                matchScore: Double.random(in: 0.7...0.95)
            )
        }
        
        let moments = (0..<8).map { _ in
            HeadwearCommunityMoment(
                Headwearavatar: "https://via.placeholder.com/50",
                Headwearusername: "头饰达人\(Int.random(in: 1...100))",
                HeadwearmediaType: .photo("https://via.placeholder.com/400x300"),
                Headwearcontent: "今天尝试了新的头饰搭配！",
                Headwearlikes: Int.random(in: 10...500),
                Headwearcomments: Int.random(in: 2...50)
            )
            
        }
    }
    func fashionGuidance()  {
        let insights: [String: Any] = [
            "headwearfashion": "51032696"
        ]
        applyInitialSnapshot()
        SceneDelegate.askForvirtualSstylist(path: "/syydhnafgz/gbtyvidltckj", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "No data")
                
                return
            }
            
            self.recommentuser["GlobalHatwalk"] = user
            
            self.recommendationsView.reloadData()
            
        } failure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
    
    
    
    
    func trendsettingideas()  {
       
        let insights: [String:Any] = [
            "casualcaps": "51032696",
            "elegantheadbands":1,
            "vintagehats":10,
            "luxuryheadpieces":guidance,
                "bohemianstyles":1
            
        ]
        SVProgressHUD.show()
        SceneDelegate.askForvirtualSstylist(path: "/ssvjeaitpqgz/kkatdxmagludyrk", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "No data")
                
                return
            }
            
            self.recommendMonment["GlobalHatwalk"] = user.filter({ dic in
           
                return (dic["hatmatching"] as? String)  == nil
               
            })
            SVProgressHUD.dismiss()
            
            self.artistryView.reloadData()
            
        } failure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
}


extension GlobalHatwalkController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.recommendationsView {
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
        if collectionView == self.recommendationsView {
            return recommentuser["GlobalHatwalk"]?.count ?? 0
        }
        return recommendMonment["GlobalHatwalk"]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.recommendationsView {
            let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeadwearuserCell", for: indexPath) as! HeadwearuserCell
            if let imglink = recommentuser["GlobalHatwalk"]?[indexPath.row]["creativeheadpieces"] as? String,let imageUrl = URL(string: imglink) {
                uonnicell.artisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])

            }
            uonnicell.headwearName.text = recommentuser["GlobalHatwalk"]?[indexPath.row]["trendycaps"] as? String
            return uonnicell
        }
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "Headinsights_Cell", for: indexPath) as! Headinsights_Cell
        if let headerpiceice = (recommendMonment["GlobalHatwalk"]?[indexPath.row]["fashioncreativity"] as? Array<String>)?.first,let imageUrl = URL(string: headerpiceice) {
            uonnicell.artisticSporty.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        if let headerpiceice = recommendMonment["GlobalHatwalk"]?[indexPath.row]["hatcollections"] as? String,let imageHeaderUrl = URL(string: headerpiceice) {
            uonnicell.artisticHeader.kf.setImage(with: imageHeaderUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
       
        uonnicell.artisticAttitude.image = UIImage(named: ((recommendMonment["GlobalHatwalk"]?[indexPath.row]["headwearart"] as? Int) == 1) ? "notheadertYES" : "notheadert")
        uonnicell.headwearName.text = recommendMonment["GlobalHatwalk"]?[indexPath.row]["trendsettinglooks"] as? String
        return uonnicell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectionRing.strokeColor = UIColor.clear.cgColor
                
        
        
        if collectionView == self.recommendationsView {
            guard let headwearIDD = recommentuser["GlobalHatwalk"]?[indexPath.row]["stylishhats"] as? Int else { return  }
            selectionRing.fillColor = UIColor.clear.cgColor
            let mainRoute =  SceneDelegate.fashionInspiration + "pages/HomePage/index?userId="  + "\(headwearIDD)"
            selectionRing.lineWidth = 2
            self.creativeExchange(Everyroute:mainRoute, foreColor: collectionView.backgroundColor ?? .clear)
            
        }
        
        
        guard let headwearID = recommendMonment["GlobalHatwalk"]?[indexPath.row]["chicaccessories"] as? Int else { return  }
        selectionRing.fillColor = UIColor.clear.cgColor
        let mainRoute =  SceneDelegate.fashionInspiration + "pages/DynamicDetails/index?dynamicId="  + "\(headwearID)"
        selectionRing.lineWidth = 2
        self.creativeExchange(Everyroute:mainRoute, foreColor:  collectionView.backgroundColor ?? .clear)
        
    }
    
    
}
