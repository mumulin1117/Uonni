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
    private var recommentuser:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    private var recommendMonment:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var recommendationsView: UICollectionView!
    @IBOutlet weak var artistryView: UICollectionView!
    
    @IBOutlet weak var hatsTrending: UIButton!
    
    @IBOutlet weak var hatsForsession: UIButton!
    
    
    @IBOutlet weak var newruio: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fashionGuidance()
        
        trendsettingideas()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headwearArt()
        
        styleRecommendations()
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
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/ReleaseDynamic/index?"
        self.creativeExchange(Everyroute:mainRoute)
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
    func fashionGuidance()  {
        let insights: [String: Any] = [
            "headwearfashion": "51032696"
        ]
      
        ExplorationRequestBuilder.askForvirtualSstylist(path: "/syydhnafgz/gbtyvidltckj", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "No data")
                
                return
            }
            
            self.recommentuser = user
            
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
        ExplorationRequestBuilder.askForvirtualSstylist(path: "/ssvjeaitpqgz/kkatdxmagludyrk", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "No data")
                
                return
            }
            
            self.recommendMonment = user.filter({ dic in
           
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
            return recommentuser.count
        }
        return recommendMonment.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.recommendationsView {
            let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeadwearuserCell", for: indexPath) as! HeadwearuserCell
            if let imglink = recommentuser[indexPath.row]["creativeheadpieces"] as? String,let imageUrl = URL(string: imglink) {
                uonnicell.artisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])

            }
            uonnicell.headwearName.text = recommentuser[indexPath.row]["trendycaps"] as? String
            return uonnicell
        }
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "Headinsights_Cell", for: indexPath) as! Headinsights_Cell
        if let imglink = (recommendMonment[indexPath.row]["fashioncreativity"] as? Array<String>)?.first,let imageUrl = URL(string: imglink) {
            uonnicell.artisticSporty.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        if let imglink = recommendMonment[indexPath.row]["hatcollections"] as? String,let imageHeaderUrl = URL(string: imglink) {
            uonnicell.artisticHeader.kf.setImage(with: imageHeaderUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
       
        uonnicell.artisticAttitude.image = UIImage(named: ((recommendMonment[indexPath.row]["headwearart"] as? Int) == 1) ? "notheadertYES" : "notheadert")
        uonnicell.headwearName.text = recommendMonment[indexPath.row]["trendsettinglooks"] as? String
        return uonnicell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.recommendationsView {
            guard let userid = recommentuser[indexPath.row]["stylishhats"] as? Int else { return  }
            let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/HomePage/index?userId="  + "\(userid)"
            self.creativeExchange(Everyroute:mainRoute)
            
        }
        
        
        guard let itemid = recommendMonment[indexPath.row]["chicaccessories"] as? Int else { return  }
 
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/DynamicDetails/index?dynamicId="  + "\(itemid)"
        self.creativeExchange(Everyroute:mainRoute)
        
    }
    
    
}
