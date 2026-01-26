//
//  UBACAMNNIMatchLabController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
import SVProgressHUD
enum UBACAMNNISecurityMethod {
       case biometric
       case visualCryptography
   }

class UBACAMNNIMatchLabController: UBACAMNNIArtistryController {
  
    var UBACAMNNguidance:Int = 1{
        didSet{
            UBACAMNNtrendsettingideas()
        }
    }
    
    
    private lazy var UBACAMNNrunwayRefreshControl: UIRefreshControl = {
        let rc = UIRefreshControl()
        rc.tintColor = .orange
        rc.attributedTitle = NSAttributedString(
            string: "Fetching latest runway shows...",
            attributes: [.foregroundColor: UIColor.white]
        )
        rc.addTarget(self, action: #selector(UBACAMNNrefreshCatwalkFeeds), for: .valueChanged)
        return rc
    }()
    private func UBACAMNNpresentSecurityConfig() {
       
        
        
    }
    private lazy var UBACAMNNfilterButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(UIImage(systemName: "line.3.horizontal.decrease.circle.fill"), for: .normal)
       
  
        
        btn.layer.shadowRadius = 4
        btn.layer.shadowOffset = CGSize(width: 0, height: 2)
      
        return btn
        
    }()
    @objc private func UBACAMNNrefreshCatwalkFeeds() {
        
        
    }
        
    
    
    private let selectionUBACAMNNRing = CAShapeLayer()
    private var recommendUBACAMNNMonment:Dictionary<String,Array<Dictionary<String,Any>>>  = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    @IBOutlet weak var UBACAMNNrecommendationsView: UICollectionView!
    
    @IBOutlet weak var UBACAMNNhatsForsession: UIButton!
    
    
    @IBOutlet weak var UBACAMNNnewruio: UIButton!
    
    func UBACAMNNheadwearArt() {
        UBACAMNNfilterButton.layer.cornerRadius = 22
       
        UBACAMNNhatsForsession.addTarget(self, action: #selector(bohemianUBACAMNNStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
        UBACAMNNfilterButton.layer.shadowOpacity = 0.2
        UBACAMNNnewruio.addTarget(self, action: #selector(bohemianUBACAMNNStyles(UBACAMNNacitonButon:)), for: .touchUpInside)
    }
 
   
    private func personalizedUBACAMNNStyle()  {
        UBACAMNNfilterButton.layer.cornerRadius = 22
        UBACAMNNhatsForsession.isSelected = false
        UBACAMNNfilterButton.layer.shadowOpacity = 0.2
        UBACAMNNnewruio.isSelected = false
        
    }
    
    @IBAction func beautyUBACAMNNSharing(_ sender: UIButton) {
        selectionUBACAMNNRing.strokeColor = UIColor.clear.cgColor
               
       
        if sender.tag == 234 {
            let mainRoute =  SceneDelegate.UBACAMNNfashionInspiration + "paaegtesse/uryeulmeqaksaedVjirdheqoasd/yipnhdbeoxz?".UBACAMNNIextractHeadWearPattern()
            self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: self.view.backgroundColor ?? UIColor.clear)
            return
        }
        selectionUBACAMNNRing.fillColor = UIColor.clear.cgColor
        
        let mainUBACAMNNRoute =  SceneDelegate.UBACAMNNfashionInspiration + "puahgtecst/fRjegpqourbto/disnvdaelxf?".UBACAMNNIextractHeadWearPattern()
        selectionUBACAMNNRing.lineWidth = 2
        self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainUBACAMNNRoute, UBACAMNNforeColor: self.view.backgroundColor  ?? UIColor.clear)
    }
    
    
    @objc func bohemianUBACAMNNStyles(UBACAMNNacitonButon:UIButton)  {
        personalizedUBACAMNNStyle()
        
        UBACAMNNacitonButon.isSelected = true
        
        UBACAMNNguidance = UBACAMNNacitonButon.tag
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UBACAMNNtrendsettingideas()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUBACAMNNRecommendations()
        
        UBACAMNNheadwearArt()
    }
    
    private let completionUBACAMNNView = UIView()
        
    
    
    private func UBACAMNNcompleteHeaderwearAuthentication() {
       
            
       
        
        
       
        
        let completeLabel = UILabel()
        completeLabel.text = "Certification completed！🎉"
        completeLabel.font = .systemFont(ofSize: 32, weight: .bold)
        completeLabel.textColor = .white
        
        let enterButton = UIButton(type: .system)
            
        enterButton.setTitle("Entering the world of headwear aesthetics", for: .normal)
        enterButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        enterButton.backgroundColor = .systemOrange
        enterButton.layer.cornerRadius = 28
     
        view.addSubview(completionUBACAMNNView)
    }
    private let specialUBACAMNNtyLabel: UILabel = UILabel.init()
        
       
    private let selectionUBACAMNNIndicator: UIView = UIView.init()
    
    private func styleUBACAMNNRecommendations() {
        UBACAMNNrecommendationsView.backgroundColor = .clear
        UBACAMNNrecommendationsView.delegate = self
        completionUBACAMNNView.backgroundColor = .clear
        let crownEmitter = CAEmitterLayer()
        crownEmitter.emitterShape = .circle
       
        
        UBACAMNNrecommendationsView.dataSource = self
        crownEmitter.emitterSize = CGSize(width: 80, height: 80)
    
       
        UBACAMNNrecommendationsView.register(UBACAMNNIDnnovationVidrCell.self, forCellWithReuseIdentifier: "UBACAMNNIDnnovationVidrCell")
        completionUBACAMNNView.layer.addSublayer(crownEmitter)
        UBACAMNNrecommendationsView.isPagingEnabled = true
      
       
    }
}

extension UBACAMNNIMatchLabController{
    
    
    
    func UBACAMNNtrendsettingideas()  {
        selectionUBACAMNNIndicator.backgroundColor = .clear
        
        let insights: [String:Any] = [
            "casualcaps": "51032696",
            "elegantheadbands":1,
            "vintagehats":12,
            "luxuryheadpieces":UBACAMNNguidance,
                "bohemianstyles":1
            
        ]
        selectionUBACAMNNIndicator.layer.cornerRadius = 12
        selectionUBACAMNNIndicator.isHidden = true
        SVProgressHUD.show()
        SceneDelegate.UBACAMNNIaskForvirtualSstylist(    UBACAMNNIpath: "/ssvjeaitpqgz/kkatdxmagludyrk",     UBACAMNNIvintage: insights) { [self] resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let stack = response["dqaytea".UBACAMNNIextractHeadWearPattern()] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Naoz idvaytxa".UBACAMNNIextractHeadWearPattern())
                
                return
            }
            
            self.recommendUBACAMNNMonment["GlobalHatwalk"] = stack.filter({ dic in
           
                return (dic["hatmatching"] as? String)  != nil
               
            })
           
            SVProgressHUD.dismiss()
            UBACAMNNsetupPortfolioCell()
            
        }     UBACAMNNIfailure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
    
    func UBACAMNNsetupPortfolioCell()  {
        self.UBACAMNNrecommendationsView.reloadData()
    }
}


extension UBACAMNNIMatchLabController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return UIScreen.main.bounds.size
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }

    private func UBACAMNNshowErrorAlert(UBACAMNNmessage: String) {
        let alert = UIAlertController(
            title: "Runway Error",
            message: UBACAMNNmessage,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return recommendUBACAMNNMonment["GlobalHatwalk"]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let UBACAMNNuonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "UBACAMNNIDnnovationVidrCell", for: indexPath) as! UBACAMNNIDnnovationVidrCell
        if let headerpiceice = recommendUBACAMNNMonment["GlobalHatwalk"]?[indexPath.row]["hatmatching"] as? String,let imageUrl = URL(string: headerpiceice) {
            UBACAMNNuonnicell.UBACAMNNartisticSporty.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        if let headerpiceice = recommendUBACAMNNMonment["GlobalHatwalk"]?[indexPath.row]["hatcollections"] as? String,let imageHeaderUrl = URL(string: headerpiceice) {
            UBACAMNNuonnicell.UBACAMNNartisticHeader.kf.setImage(with: imageHeaderUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        UBACAMNNuonnicell.UBACAMNNtConttnwearLbl.text = recommendUBACAMNNMonment["GlobalHatwalk"]?[indexPath.row]["creativeexpression"] as? String
        UBACAMNNuonnicell.UBACAMNNheadwearName.text = recommendUBACAMNNMonment["GlobalHatwalk"]?[indexPath.row]["trendsettinglooks"] as? String
        
        let timecount = recommendUBACAMNNMonment["GlobalHatwalk"]?[indexPath.row]["exclusivedesigns"] as? Int ?? 0
        
        UBACAMNNuonnicell.UBACAMNNtTimewearLbl.text = formatHeadUBACAMNNwearDesignTime( TimeInterval(timecount)) //
        return UBACAMNNuonnicell
        
    }
  
    private func formatHeadUBACAMNNwearDesignTime(_ timestamp: TimeInterval) -> String {
        guard timestamp > 0 else {
            return "Just released" // 处理0或负时间戳
        }
        
        let date = Date(timeIntervalSince1970: timestamp)
        let now = Date()
        let calendar = Calendar.current
        
      
        if calendar.isDateInToday(date) {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            formatter.timeZone = TimeZone.current
            return "today \(formatter.string(from: date))"
        }
      
        else if calendar.isDateInYesterday(date) {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            formatter.timeZone = TimeZone.current
            return "Yesterday \(formatter.string(from: date))"
        }
      
        else if let days = calendar.dateComponents([.day], from: date, to: now).day, days < 7 {
            let weekdayFormatter = DateFormatter()
            weekdayFormatter.dateFormat = "EEEE HH:mm"
            weekdayFormatter.timeZone = TimeZone.current
            return weekdayFormatter.string(from: date)
        }
  
        else {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd HH:mm"
            formatter.timeZone = TimeZone.current
            return formatter.string(from: date)
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectionUBACAMNNRing.strokeColor = UIColor.clear.cgColor
                
        
        
        guard let UBACAMNNheadwerId = recommendUBACAMNNMonment["GlobalHatwalk"]?[indexPath.row]["chicaccessories"] as? Int else { return  }
        selectionUBACAMNNRing.fillColor = UIColor.clear.cgColor
       
        let mainRoute =  SceneDelegate.UBACAMNNfashionInspiration + "pqaigleysg/yDpyanpacmwigcgDpectraminlpsr/nihngdfefxz?pdqyxnhalmaiocsIwdf=".UBACAMNNIextractHeadWearPattern()  + "\(UBACAMNNheadwerId)"
        selectionUBACAMNNRing.lineWidth = 2
        self.UBACAMNNcreativeExchange(UBACAMNNEveryroute:mainRoute, UBACAMNNforeColor: self.view.backgroundColor ?? UIColor.clear)
        
    }
    
    
}
