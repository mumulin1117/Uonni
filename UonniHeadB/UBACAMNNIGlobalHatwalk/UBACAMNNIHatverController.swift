//
//  UBACAMNNIHatverController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
import SVProgressHUD

class UBACAMNNIHatverController: UBACAMNNIArtistryController {
    private  let UBACAMNNactionButton = UIButton(type: .system)
    
    
    struct UBACAMNNMillineryMessageThread {
        let UBACAMNNdesignerID: String
        let UBACAMNNatelierName: String
        let UBACAMNNlatestAccessoryDesign: String  // 最新头饰设计描述
        let UBACAMNNpreviewSketchURL: String      // 设计草图预览图
        let UBACAMNNunreadMessageCount: Int
        let UBACAMNNlastExchangeTime: TimeInterval // 最后交流时间戳
        let UBACAMNNcollectionSeason: String       // 所属系列季节
        
    }
    private var UBACAMNNrecommendMonment:Dictionary<String,Array<Dictionary<String,Any>>>  = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    
    private var UBACAMNNmessages = [UBACAMNNIHeadwearMessage]()
    @IBOutlet weak var recommendationsView: UICollectionView!
    
    private let UBACAMNNseasonLabel: UILabel = {
           let UBACAMNNIlabel = UILabel()
        UBACAMNNIlabel.font = .systemFont(ofSize: 11, weight: .semibold)
        UBACAMNNIlabel.textAlignment = .center
           return UBACAMNNIlabel
       }()
    
    @IBOutlet weak var UBACAMNNheadgear: UIImageView!
    
    @IBOutlet weak var UBACAMNNfusion: UILabel!
    
  
    
    @IBAction func UBACAMNNbeautySharing(_ sender: UIButton) {
        UBACAMNNselectionRing.strokeColor = UIColor.clear.cgColor
                
        
        UBACAMNNselectionRing.lineWidth = 2
        if sender.tag == 23 {
            UBACAMNNselectionRing.fillColor = UIColor.clear.cgColor
           
            let mainRoute =  SceneDelegate.fashionInspiration + "puangeexsp/wsrcxreeaeanxprljahyf/zianydoejxn?".UBACAMNNIextractHeadWearPattern()
            UBACAMNNselectionRing.lineWidth = 2
            self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: sender.backgroundColor ?? .clear)
            return
        }
        UBACAMNNselectionRing.fillColor = UIColor.clear.cgColor
       
        let mainRoute =  SceneDelegate.fashionInspiration + "pjaigkeqsv/aCrraegajtveqRnollwek/jilnndjepxi?".UBACAMNNIextractHeadWearPattern()
        UBACAMNNselectionRing.lineWidth = 2
        self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: sender.backgroundColor ?? .clear)
       
    }
    // MARK: - UI组件
       
    private lazy var UBACAMNNrunwayTableView: UITableView = {
        let UBACAMNNTableVi = UITableView(frame: .zero, style: .grouped)
        
        UBACAMNNTableVi.separatorStyle = .none
       
        UBACAMNNTableVi.rowHeight = 96
        UBACAMNNTableVi.sectionHeaderHeight = 4
        UBACAMNNTableVi.sectionFooterHeight = 4
       
        return UBACAMNNTableVi
    }()
    
    private let UBACAMNNspecialtyLabel: UILabel = UILabel()
    private func UBACAMNNconfigureCatwalkView() {
       
        view.addSubview(UBACAMNNrunwayTableView)
       
        
        UBACAMNNrunwayTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            UBACAMNNrunwayTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            UBACAMNNrunwayTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            UBACAMNNrunwayTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            UBACAMNNrunwayTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
       
        
    }
    private func UBACAMNNsetupMillineryBadge() {
        UBACAMNNseasonLabel.layer.cornerRadius = 9
        UBACAMNNseasonLabel.layer.borderWidth = 1
        UBACAMNNseasonLabel.clipsToBounds = true
        if UBACAMNNseasonLabel.isHidden == true {
            view.addSubview(UBACAMNNseasonLabel)
        }
        
        UBACAMNNseasonLabel.translatesAutoresizingMaskIntoConstraints = false
      
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UBACAMNNseasonLabel.layer.borderWidth = 1
        
        UBACAMNNtrendsettingideas()
        UBACAMNNseasonLabel.clipsToBounds = true
        if UBACAMNNseasonLabel.isHidden == true {
            view.addSubview(UBACAMNNseasonLabel)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        UBACAMNNstyleRecommendations()
        UBACAMNNseasonLabel.font = .systemFont(ofSize: 11, weight: .semibold)
        UBACAMNNseasonLabel.textAlignment = .center
    }
    private let UBACAMNNselectionRing = CAShapeLayer()
    private func UBACAMNNstyleRecommendations() {
        recommendationsView.backgroundColor = .clear
        UBACAMNNupdateEmptyWorkbench()
        UBACAMNNseasonLabel.font = .systemFont(ofSize: 11, weight: .semibold)
        UBACAMNNseasonLabel.textAlignment = .center
        recommendationsView.delegate = self
        UBACAMNNseasonLabel.clipsToBounds = true
        if UBACAMNNseasonLabel.isHidden == true {
            view.addSubview(UBACAMNNseasonLabel)
        }
        
       
        recommendationsView.dataSource = self
        UBACAMNNseasonLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendationsView.register(UINib(nibName: "UBACAMNNIDnnoCamesagCell", bundle: nil), forCellWithReuseIdentifier: "UBACAMNNIDnnoCamesagCell")
        
        
      
       
    }
    
    private func UBACAMNNupdateEmptyWorkbench() {
        let designerLabel = UILabel()
        designerLabel.font = UIFont.systemFont(ofSize: 15)
        designerLabel.textColor = .orange
    }
    
    
    private func UBACAMNNformatLastExchangeTime(_ timestamp: TimeInterval) -> String  {
        let UBACAMNNformatter = DateFormatter()
                
        UBACAMNNformatter.doesRelativeDateFormatting = true
        
        if Calendar.current.isDateInToday(Date(timeIntervalSince1970: timestamp)) {
            UBACAMNNformatter.timeStyle = .short
            UBACAMNNformatter.dateStyle = .none
        } else {
            UBACAMNNformatter.dateFormat = "MM/dd"
        }
        
        return UBACAMNNformatter.string(from: Date(timeIntervalSince1970: timestamp))
    }
    
    
    
}

extension UBACAMNNIHatverController{
    
   
    
    func UBACAMNNtrendsettingideas()  {
        UBACAMNNmessages = [
            UBACAMNNIHeadwearMessage(UBACAMNNsenderAvatar: "avatar_luna", UBACAMNNsenderName: "Luna的帽饰研究所",
                           UBACAMNNmessageContent: "刚发了新的贝雷帽混搭视频，求搭配建议！",
                           UBACAMNNmessageType: .UBACAMNNvideoShare, UBACAMNNtimestamp: Date().addingTimeInterval(-3600)),
            UBACAMNNIHeadwearMessage(UBACAMNNsenderAvatar: "avatar_ai_stylist", UBACAMNNsenderName: "AI搭配助手",
                           UBACAMNNmessageContent: "根据您的草帽收藏，推荐尝试波西米亚风长裙搭配方案",
                           UBACAMNNmessageType: .UBACAMNNaiRecommendation, UBACAMNNtimestamp: Date().addingTimeInterval(-7200)),
            UBACAMNNIHeadwearMessage(UBACAMNNsenderAvatar: "avatar_hat_lover", UBACAMNNsenderName: "头饰收藏家小鹿",
                           UBACAMNNmessageContent: "姐妹！求你上次视频里的珍珠发箍链接！",
                           UBACAMNNmessageType: .UBACAMNNtext, UBACAMNNtimestamp: Date().addingTimeInterval(-18000))
        ]
        let insights: [String:Any] = [
            "fashionconnection": "51032696"
        ]
        SVProgressHUD.show()
        SceneDelegate.UBACAMNNIaskForvirtualSstylist(    UBACAMNNIpath: "/ynppespskoqbcejz/ckxrxfhffw",     UBACAMNNIvintage: insights) { resilt in
            self.UBACAMNNseasonLabel.layer.borderWidth = 1
            self.UBACAMNNseasonLabel.clipsToBounds = true
            self.UBACAMNNconfigureAtelierGallery()
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let userUBACAMNN = response["dqaytea".UBACAMNNIextractHeadWearPattern()] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Naoz idvaytxa".UBACAMNNIextractHeadWearPattern())
                if self.UBACAMNNseasonLabel.isHidden == true {
                    self.view.addSubview(self.UBACAMNNseasonLabel)
                }
                
                self.UBACAMNNseasonLabel.translatesAutoresizingMaskIntoConstraints = false
              
                return
            }
            
            self.UBACAMNNrecommendMonment["GlobalHatwalk"] = userUBACAMNN.map { dix in
                if let ONearrarUBACAMNN = (dix["hatlovers"] as? Array<[String:Any]>)?.first{
                    ONearrarUBACAMNN
                }else{
                    [:]
                    
                }
                
            }
            if self.UBACAMNNseasonLabel.isHidden == true {
                self.view.addSubview(self.UBACAMNNseasonLabel)
            }
            
            self.UBACAMNNseasonLabel.translatesAutoresizingMaskIntoConstraints = false
          
            self.UBACAMNNloadSampleData()
            
        }     UBACAMNNIfailure: { error in
            if self.UBACAMNNseasonLabel.isHidden == true {
                self.view.addSubview(self.UBACAMNNseasonLabel)
            }
            
            self.UBACAMNNseasonLabel.translatesAutoresizingMaskIntoConstraints = false
          
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
    
   
}


extension UBACAMNNIHatverController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func UBACAMNNdesignerProfiles() -> CGSize {
        CGSize(width: UIScreen.main.bounds.size.width - 24, height: 108)
    }
    
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return UBACAMNNdesignerProfiles()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        selectionMode()
    }
    func selectionMode() -> CGFloat {
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        selectionMode()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return UBACAMNNrecommendMonment["GlobalHatwalk"]?.count ?? 0
    }
    private func UBACAMNNloadSampleData() {
        
        SVProgressHUD.dismiss()
        if self.UBACAMNNrecommendMonment["GlobalHatwalk"]?.count ?? 0 == 0{
            self.UBACAMNNheadgear.isHidden = false
            self.UBACAMNNfusion.isHidden = false
        }else{
            self.UBACAMNNheadgear.isHidden = true
            self.UBACAMNNfusion.isHidden = true
        }
        
        self.recommendationsView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "UBACAMNNIDnnoCamesagCell", for: indexPath) as! UBACAMNNIDnnoCamesagCell
        
        if let UBACAMNNheaderpiceice = UBACAMNNrecommendMonment["GlobalHatwalk"]?[indexPath.row]["creativecommunity"] as? String,let imageUrl = URL(string: UBACAMNNheaderpiceice) {
            uonnicell.UBACAMNNartisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        uonnicell.UBACAMNNtovhatki.tag = indexPath.row
 
        uonnicell.UBACAMNNheadwearName.text = UBACAMNNrecommendMonment["GlobalHatwalk"]?[indexPath.row]["fashionmoments"] as? String
        uonnicell.UBACAMNNpostConttnwearLbl.text = UBACAMNNrecommendMonment["GlobalHatwalk"]?[indexPath.row]["beautyindetails"] as? String
        return uonnicell
        
    }
    private func UBACAMNNconfigureAtelierGallery() {
        
        
        UBACAMNNactionButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        UBACAMNNactionButton.setTitleColor(.white, for: .normal)
               
        UBACAMNNactionButton.layer.borderColor = UIColor.black.cgColor
        UBACAMNNactionButton.layer.borderWidth = 1
        UBACAMNNactionButton.layer.cornerRadius = 8
        UBACAMNNactionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
        self.view.insertSubview(UBACAMNNactionButton, at: 0)
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        UBACAMNNactionButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
                
        
        UBACAMNNselectionRing.lineWidth = 2
        guard let itemid = UBACAMNNrecommendMonment["GlobalHatwalk"]?[indexPath.row]["stylesharing"] as? Int else { return  }
        UBACAMNNactionButton.setTitleColor(.white, for: .normal)
        UBACAMNNselectionRing.fillColor = UIColor.clear.cgColor
        UBACAMNNactionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        let mainRoute =  SceneDelegate.fashionInspiration + "peamgieast/lpnrminvgabtmegCjhcaetk/jiqnudjerxq?supshecreIgdk=".UBACAMNNIextractHeadWearPattern()  + "\(itemid)"
       
       
        UBACAMNNactionButton.layer.cornerRadius = 8
        self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: collectionView.backgroundColor ?? .clear)
        UBACAMNNactionButton.layer.borderWidth = 1
    }
    

}
