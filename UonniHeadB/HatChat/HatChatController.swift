//
//  HatChatController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
import SVProgressHUD

class HatChatController: ArtistryController {
    
   
    private var recommendMonment:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    @IBOutlet weak var recommendationsView: UICollectionView!
    

    
    @IBOutlet weak var headgear: UIImageView!
    
    @IBOutlet weak var fusion: UILabel!
    
  
    
    @IBAction func beautySharing(_ sender: UIButton) {
        if sender.tag == 23 {
            let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/screenplay/index?"
            self.creativeExchange(Everyroute:mainRoute)
            return
        }
        
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/CreateRole/index?"
        self.creativeExchange(Everyroute:mainRoute)
       
    }
    
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        trendsettingideas()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        styleRecommendations()
        
    }
    
    private func styleRecommendations() {
        recommendationsView.backgroundColor = .clear
        recommendationsView.delegate = self
        recommendationsView.dataSource = self
        recommendationsView.register(UINib(nibName: "DnnoCamesagCell", bundle: nil), forCellWithReuseIdentifier: "DnnoCamesagCell")
        
        
      
       
    }
}

extension HatChatController{
    
    
    
    func trendsettingideas()  {
       
        let insights: [String:Any] = [
            "fashionconnection": "51032696"
        ]
        SVProgressHUD.show()
        ExplorationRequestBuilder.askForvirtualSstylist(path: "/ynppespskoqbcejz/ckxrxfhffw", vintage: insights) { resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "No data")
                
                return
            }
            
            self.recommendMonment = user.map { dix in
                if let ONearrar = (dix["hatlovers"] as? Array<[String:Any]>)?.first{
                    ONearrar
                }else{
                    [:]
                }
                
            }
            SVProgressHUD.dismiss()
            if self.recommendMonment.count == 0{
                self.headgear.isHidden = false
                self.fusion.isHidden = false
            }else{
                self.headgear.isHidden = true
                self.fusion.isHidden = true
            }
            
            self.recommendationsView.reloadData()
            
        } failure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
}


extension HatChatController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: UIScreen.main.bounds.size.width - 24, height: 108)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return recommendMonment.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "DnnoCamesagCell", for: indexPath) as! DnnoCamesagCell
        
        if let imglink = recommendMonment[indexPath.row]["creativecommunity"] as? String,let imageUrl = URL(string: imglink) {
            uonnicell.artisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        uonnicell.tovhatki.tag = indexPath.row
 
        uonnicell.headwearName.text = recommendMonment[indexPath.row]["fashionmoments"] as? String
        uonnicell.postConttnwearLbl.text = recommendMonment[indexPath.row]["beautyindetails"] as? String
        return uonnicell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        guard let itemid = recommendMonment[indexPath.row]["stylesharing"] as? Int else { return  }
 
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/privateChat/index?userId="  + "\(itemid)"
        self.creativeExchange(Everyroute:mainRoute)
        
    }
    

}
