//
//  MatchLabController.swift
//  UonniHeadB
//
//  Created by mumu on 2025/5/9.
//

import UIKit
import SVProgressHUD

class MatchLabController: ArtistryController {
    
    var guidance:Int = 1{
        didSet{
            trendsettingideas()
        }
    }
    private var recommendMonment:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    @IBOutlet weak var recommendationsView: UICollectionView!
    
    @IBOutlet weak var hatsForsession: UIButton!
    
    
    @IBOutlet weak var newruio: UIButton!
    
    func headwearArt() {
       
        hatsForsession.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
        newruio.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
    }
 
    
    private func personalizedStyle()  {
       
        hatsForsession.isSelected = false
        newruio.isSelected = false
        
    }
    
    @IBAction func beautySharing(_ sender: UIButton) {
        
        if sender.tag == 234 {
            let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/releaseVideos/index?"
            self.creativeExchange(Everyroute:mainRoute)
        }
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/Report/index?"
        self.creativeExchange(Everyroute:mainRoute)
    }
    
    
    @objc func bohemianStyles(acitonButon:UIButton)  {
        personalizedStyle()
        
        acitonButon.isSelected = true
        
        guidance = acitonButon.tag
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        trendsettingideas()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        styleRecommendations()
        headwearArt()
    }
    
    private func styleRecommendations() {
        recommendationsView.backgroundColor = .clear
        recommendationsView.delegate = self
        recommendationsView.dataSource = self
        recommendationsView.register(DnnovationVidrCell.self, forCellWithReuseIdentifier: "DnnovationVidrCell")
        
        
      
       
    }
}

extension MatchLabController{
    
    
    
    func trendsettingideas()  {
       
        let insights: [String:Any] = [
            "casualcaps": "51032696",
            "elegantheadbands":1,//dynamicType 动态类型1正常2其他等等
            "vintagehats":10,//size
            "luxuryheadpieces":guidance, //selectType 查询类型1热门2我的3关注的
                "bohemianstyles":1//current
            
        ]
        SVProgressHUD.show()
        ExplorationRequestBuilder.askForvirtualSstylist(path: "/ssvjeaitpqgz/kkatdxmagludyrk", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  let code = response["code"] as? Int,code == 200000,
                  let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "No data")
                
                return
            }
            
            self.recommendMonment = user.filter({ dic in
           
                return (dic["hatmatching"] as? String)  != nil
               
            })
           
            
            self.recommendationsView.reloadData()
            
        } failure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
}


extension MatchLabController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return UIScreen.main.bounds.size
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return recommendMonment.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "DnnovationVidrCell", for: indexPath) as! DnnovationVidrCell
        if let imglink = recommendMonment[indexPath.row]["hatmatching"] as? String,let imageUrl = URL(string: imglink) {
            uonnicell.artisticSporty.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        if let imglink = recommendMonment[indexPath.row]["hatcollections"] as? String,let imageHeaderUrl = URL(string: imglink) {
            uonnicell.artisticHeader.kf.setImage(with: imageHeaderUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
       
       
        return uonnicell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        guard let itemid = recommendMonment[indexPath.row]["chicaccessories"] as? String else { return  }
 
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/DynamicDetails/index?dynamicId="  + "\(itemid)"
        self.creativeExchange(Everyroute:mainRoute)
        
    }
    
    
}
