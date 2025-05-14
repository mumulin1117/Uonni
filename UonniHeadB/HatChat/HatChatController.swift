//
//  HatChatController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
import SVProgressHUD

class HatChatController: ArtistryController {
    private  let actionButton = UIButton(type: .system)
    
    
    struct MillineryMessageThread {
        let designerID: String
        let atelierName: String
        let latestAccessoryDesign: String  // 最新头饰设计描述
        let previewSketchURL: String      // 设计草图预览图
        let unreadMessageCount: Int
        let lastExchangeTime: TimeInterval // 最后交流时间戳
        let collectionSeason: String       // 所属系列季节
        
    }
    private var recommendMonment:Dictionary<String,Array<Dictionary<String,Any>>>  = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    
    private var messages = [HeadwearMessage]()
    @IBOutlet weak var recommendationsView: UICollectionView!
    
    private let seasonLabel: UILabel = {
           let label = UILabel()
        label.font = .systemFont(ofSize: 11, weight: .semibold)
        label.textAlignment = .center
           return label
       }()
    
    @IBOutlet weak var headgear: UIImageView!
    
    @IBOutlet weak var fusion: UILabel!
    
  
    
    @IBAction func beautySharing(_ sender: UIButton) {
        selectionRing.strokeColor = UIColor.clear.cgColor
                
        
        selectionRing.lineWidth = 2
        if sender.tag == 23 {
            selectionRing.fillColor = UIColor.clear.cgColor
           
            let mainRoute =  SceneDelegate.fashionInspiration + "puangeexsp/wsrcxreeaeanxprljahyf/zianydoejxn?".extractHeadWearPattern()
            selectionRing.lineWidth = 2
            self.creativeExchange(Everyroute:mainRoute, foreColor: sender.backgroundColor ?? .clear)
            return
        }
        selectionRing.fillColor = UIColor.clear.cgColor
       
        let mainRoute =  SceneDelegate.fashionInspiration + "pjaigkeqsv/aCrraegajtveqRnollwek/jilnndjepxi?".extractHeadWearPattern()
        selectionRing.lineWidth = 2
        self.creativeExchange(Everyroute:mainRoute, foreColor: sender.backgroundColor ?? .clear)
       
    }
    // MARK: - UI组件
       
    private lazy var runwayTableView: UITableView = {
        let TableVi = UITableView(frame: .zero, style: .grouped)
        
        TableVi.separatorStyle = .none
       
        TableVi.rowHeight = 96
        TableVi.sectionHeaderHeight = 4
        TableVi.sectionFooterHeight = 4
       
        return TableVi
    }()
    
    private let specialtyLabel: UILabel = UILabel()
    private func configureCatwalkView() {
       
        view.addSubview(runwayTableView)
       
        
        runwayTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            runwayTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            runwayTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            runwayTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            runwayTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
       
        
    }
    private func setupMillineryBadge() {
        seasonLabel.layer.cornerRadius = 9
        seasonLabel.layer.borderWidth = 1
        seasonLabel.clipsToBounds = true
        if seasonLabel.isHidden == true {
            view.addSubview(seasonLabel)
        }
        
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
      
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        seasonLabel.layer.borderWidth = 1
        
        trendsettingideas()
        seasonLabel.clipsToBounds = true
        if seasonLabel.isHidden == true {
            view.addSubview(seasonLabel)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        styleRecommendations()
        seasonLabel.font = .systemFont(ofSize: 11, weight: .semibold)
        seasonLabel.textAlignment = .center
    }
    private let selectionRing = CAShapeLayer()
    private func styleRecommendations() {
        recommendationsView.backgroundColor = .clear
        updateEmptyWorkbench()
        seasonLabel.font = .systemFont(ofSize: 11, weight: .semibold)
        seasonLabel.textAlignment = .center
        recommendationsView.delegate = self
        seasonLabel.clipsToBounds = true
        if seasonLabel.isHidden == true {
            view.addSubview(seasonLabel)
        }
        
       
        recommendationsView.dataSource = self
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
        recommendationsView.register(UINib(nibName: "DnnoCamesagCell", bundle: nil), forCellWithReuseIdentifier: "DnnoCamesagCell")
        
        
      
       
    }
    
    private func updateEmptyWorkbench() {
        let designerLabel = UILabel()
        designerLabel.font = UIFont.systemFont(ofSize: 15)
        designerLabel.textColor = .orange
    }
    
    
    private func formatLastExchangeTime(_ timestamp: TimeInterval) -> String  {
        let formatter = DateFormatter()
                
        formatter.doesRelativeDateFormatting = true
        
        if Calendar.current.isDateInToday(Date(timeIntervalSince1970: timestamp)) {
            formatter.timeStyle = .short
            formatter.dateStyle = .none
        } else {
            formatter.dateFormat = "MM/dd"
        }
        
        return formatter.string(from: Date(timeIntervalSince1970: timestamp))
    }
    
    
    
}

extension HatChatController{
    
   
    
    func trendsettingideas()  {
        messages = [
            HeadwearMessage(senderAvatar: "avatar_luna", senderName: "Luna的帽饰研究所",
                           messageContent: "刚发了新的贝雷帽混搭视频，求搭配建议！",
                           messageType: .videoShare, timestamp: Date().addingTimeInterval(-3600)),
            HeadwearMessage(senderAvatar: "avatar_ai_stylist", senderName: "AI搭配助手",
                           messageContent: "根据您的草帽收藏，推荐尝试波西米亚风长裙搭配方案",
                           messageType: .aiRecommendation, timestamp: Date().addingTimeInterval(-7200)),
            HeadwearMessage(senderAvatar: "avatar_hat_lover", senderName: "头饰收藏家小鹿",
                           messageContent: "姐妹！求你上次视频里的珍珠发箍链接！",
                           messageType: .text, timestamp: Date().addingTimeInterval(-18000))
        ]
        let insights: [String:Any] = [
            "fashionconnection": "51032696"
        ]
        SVProgressHUD.show()
        SceneDelegate.askForvirtualSstylist(path: "/ynppespskoqbcejz/ckxrxfhffw", vintage: insights) { resilt in
            self.seasonLabel.layer.borderWidth = 1
            self.seasonLabel.clipsToBounds = true
            self.configureAtelierGallery()
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let user = response["dqaytea".extractHeadWearPattern()] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Naoz idvaytxa".extractHeadWearPattern())
                if self.seasonLabel.isHidden == true {
                    self.view.addSubview(self.seasonLabel)
                }
                
                self.seasonLabel.translatesAutoresizingMaskIntoConstraints = false
              
                return
            }
            
            self.recommendMonment["GlobalHatwalk"] = user.map { dix in
                if let ONearrar = (dix["hatlovers"] as? Array<[String:Any]>)?.first{
                    ONearrar
                }else{
                    [:]
                    
                }
                
            }
            if self.seasonLabel.isHidden == true {
                self.view.addSubview(self.seasonLabel)
            }
            
            self.seasonLabel.translatesAutoresizingMaskIntoConstraints = false
          
            self.loadSampleData()
            
        } failure: { error in
            if self.seasonLabel.isHidden == true {
                self.view.addSubview(self.seasonLabel)
            }
            
            self.seasonLabel.translatesAutoresizingMaskIntoConstraints = false
          
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
    
   
}


extension HatChatController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func designerProfiles() -> CGSize {
        CGSize(width: UIScreen.main.bounds.size.width - 24, height: 108)
    }
    
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return designerProfiles()
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
       
        return recommendMonment["GlobalHatwalk"]?.count ?? 0
    }
    private func loadSampleData() {
        
        SVProgressHUD.dismiss()
        if self.recommendMonment["GlobalHatwalk"]?.count ?? 0 == 0{
            self.headgear.isHidden = false
            self.fusion.isHidden = false
        }else{
            self.headgear.isHidden = true
            self.fusion.isHidden = true
        }
        
        self.recommendationsView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "DnnoCamesagCell", for: indexPath) as! DnnoCamesagCell
        
        if let headerpiceice = recommendMonment["GlobalHatwalk"]?[indexPath.row]["creativecommunity"] as? String,let imageUrl = URL(string: headerpiceice) {
            uonnicell.artisticHeader.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        uonnicell.tovhatki.tag = indexPath.row
 
        uonnicell.headwearName.text = recommendMonment["GlobalHatwalk"]?[indexPath.row]["fashionmoments"] as? String
        uonnicell.postConttnwearLbl.text = recommendMonment["GlobalHatwalk"]?[indexPath.row]["beautyindetails"] as? String
        return uonnicell
        
    }
    private func configureAtelierGallery() {
        
        
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        actionButton.setTitleColor(.white, for: .normal)
               
        actionButton.layer.borderColor = UIColor.black.cgColor
        actionButton.layer.borderWidth = 1
        actionButton.layer.cornerRadius = 8
        actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
        self.view.insertSubview(actionButton, at: 0)
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
                
        
        selectionRing.lineWidth = 2
        guard let itemid = recommendMonment["GlobalHatwalk"]?[indexPath.row]["stylesharing"] as? Int else { return  }
        actionButton.setTitleColor(.white, for: .normal)
        selectionRing.fillColor = UIColor.clear.cgColor
        actionButton.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        let mainRoute =  SceneDelegate.fashionInspiration + "peamgieast/lpnrminvgabtmegCjhcaetk/jiqnudjerxq?supshecreIgdk=".extractHeadWearPattern()  + "\(itemid)"
       
       
        actionButton.layer.cornerRadius = 8
        self.creativeExchange(Everyroute:mainRoute, foreColor: collectionView.backgroundColor ?? .clear)
        actionButton.layer.borderWidth = 1
    }
    

}
