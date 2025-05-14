//
//  MatchLabController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
import SVProgressHUD
enum SecurityMethod {
       case biometric
       case visualCryptography
   }

class MatchLabController: ArtistryController {
  
    var guidance:Int = 1{
        didSet{
            trendsettingideas()
        }
    }
    
    
    private lazy var runwayRefreshControl: UIRefreshControl = {
        let rc = UIRefreshControl()
        rc.tintColor = .orange
        rc.attributedTitle = NSAttributedString(
            string: "Fetching latest runway shows...",
            attributes: [.foregroundColor: UIColor.white]
        )
        rc.addTarget(self, action: #selector(refreshCatwalkFeeds), for: .valueChanged)
        return rc
    }()
    private func presentSecurityConfig() {
       
        
        
    }
    private lazy var filterButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(UIImage(systemName: "line.3.horizontal.decrease.circle.fill"), for: .normal)
       
  
        
        btn.layer.shadowRadius = 4
        btn.layer.shadowOffset = CGSize(width: 0, height: 2)
      
        return btn
        
    }()
    @objc private func refreshCatwalkFeeds() {
        
        
    }
        
    
    
    private let selectionRing = CAShapeLayer()
    private var recommendMonment:Dictionary<String,Array<Dictionary<String,Any>>>  = ["GlobalHatwalk":Array<Dictionary<String,Any>>()]
    @IBOutlet weak var recommendationsView: UICollectionView!
    
    @IBOutlet weak var hatsForsession: UIButton!
    
    
    @IBOutlet weak var newruio: UIButton!
    
    func headwearArt() {
        filterButton.layer.cornerRadius = 22
       
        hatsForsession.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
        filterButton.layer.shadowOpacity = 0.2
        newruio.addTarget(self, action: #selector(bohemianStyles(acitonButon:)), for: .touchUpInside)
    }
 
   
    private func personalizedStyle()  {
        filterButton.layer.cornerRadius = 22
        hatsForsession.isSelected = false
        filterButton.layer.shadowOpacity = 0.2
        newruio.isSelected = false
        
    }
    
    @IBAction func beautySharing(_ sender: UIButton) {
        selectionRing.strokeColor = UIColor.clear.cgColor
               
       
        if sender.tag == 234 {
            let mainRoute =  SceneDelegate.fashionInspiration + "paaegtesse/uryeulmeqaksaedVjirdheqoasd/yipnhdbeoxz?".extractHeadWearPattern()
            self.creativeExchange(Everyroute:mainRoute, foreColor: self.view.backgroundColor ?? UIColor.clear)
            return
        }
        selectionRing.fillColor = UIColor.clear.cgColor
        
        let mainRoute =  SceneDelegate.fashionInspiration + "puahgtecst/fRjegpqourbto/disnvdaelxf?".extractHeadWearPattern()
        selectionRing.lineWidth = 2
        self.creativeExchange(Everyroute:mainRoute, foreColor: self.view.backgroundColor  ?? UIColor.clear)
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
    
    private let completionView = UIView()
        
    
    
    private func completeHeaderwearAuthentication() {
       
            
       
        
        
       
        
        let completeLabel = UILabel()
        completeLabel.text = "Certification completed！🎉"
        completeLabel.font = .systemFont(ofSize: 32, weight: .bold)
        completeLabel.textColor = .white
        
        let enterButton = UIButton(type: .system)
            
        enterButton.setTitle("Entering the world of headwear aesthetics", for: .normal)
        enterButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        enterButton.backgroundColor = .systemOrange
        enterButton.layer.cornerRadius = 28
          
        
        // 布局设置...
        view.addSubview(completionView)
    }
    private let specialtyLabel: UILabel = UILabel.init()
        
       
    private let selectionIndicator: UIView = UIView.init()
    
    private func styleRecommendations() {
        recommendationsView.backgroundColor = .clear
        recommendationsView.delegate = self
        completionView.backgroundColor = .clear
        let crownEmitter = CAEmitterLayer()
        crownEmitter.emitterShape = .circle
       
        
        recommendationsView.dataSource = self
        crownEmitter.emitterSize = CGSize(width: 80, height: 80)
        // 粒子效果配置...
       
        recommendationsView.register(DnnovationVidrCell.self, forCellWithReuseIdentifier: "DnnovationVidrCell")
        completionView.layer.addSublayer(crownEmitter)
        recommendationsView.isPagingEnabled = true
      
       
    }
}

extension MatchLabController{
    
    
    
    func trendsettingideas()  {
        selectionIndicator.backgroundColor = .clear
        
        let insights: [String:Any] = [
            "casualcaps": "51032696",
            "elegantheadbands":1,
            "vintagehats":12,
            "luxuryheadpieces":guidance,
                "bohemianstyles":1
            
        ]
        selectionIndicator.layer.cornerRadius = 12
        selectionIndicator.isHidden = true
        SVProgressHUD.show()
        SceneDelegate.askForvirtualSstylist(path: "/ssvjeaitpqgz/kkatdxmagludyrk", vintage: insights) { [self] resilt in
            guard let response = resilt as? Dictionary<String,Any> ,
                  
                  let stack = response["dqaytea".extractHeadWearPattern()] as? Array<Dictionary<String,Any>>
                    
            else {
                SVProgressHUD.showInfo(withStatus: "Naoz idvaytxa".extractHeadWearPattern())
                
                return
            }
            
            self.recommendMonment["GlobalHatwalk"] = stack.filter({ dic in
           
                return (dic["hatmatching"] as? String)  != nil
               
            })
           
            SVProgressHUD.dismiss()
            setupPortfolioCell()
            
        } failure: { error in
            SVProgressHUD.showError(withStatus: error.localizedDescription)
        }

    }
    
    func setupPortfolioCell()  {
        self.recommendationsView.reloadData()
    }
}


extension MatchLabController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return UIScreen.main.bounds.size
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    // MARK: - 错误处理
       
    private func showErrorAlert(message: String) {
        let alert = UIAlertController(
            title: "Runway Error",
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return recommendMonment["GlobalHatwalk"]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let uonnicell = collectionView.dequeueReusableCell(withReuseIdentifier: "DnnovationVidrCell", for: indexPath) as! DnnovationVidrCell
        if let headerpiceice = recommendMonment["GlobalHatwalk"]?[indexPath.row]["hatmatching"] as? String,let imageUrl = URL(string: headerpiceice) {
            uonnicell.artisticSporty.kf.setImage(with: imageUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        if let headerpiceice = recommendMonment["GlobalHatwalk"]?[indexPath.row]["hatcollections"] as? String,let imageHeaderUrl = URL(string: headerpiceice) {
            uonnicell.artisticHeader.kf.setImage(with: imageHeaderUrl, options: [.memoryCacheExpiration(.seconds(60))])
            
           
        }
        uonnicell.postConttnwearLbl.text = recommendMonment["GlobalHatwalk"]?[indexPath.row]["creativeexpression"] as? String
        uonnicell.headwearName.text = recommendMonment["GlobalHatwalk"]?[indexPath.row]["trendsettinglooks"] as? String
        
        let timecount = recommendMonment["GlobalHatwalk"]?[indexPath.row]["exclusivedesigns"] as? Int ?? 0
        
        uonnicell.postTimewearLbl.text = formatHeadwearDesignTime( TimeInterval(timecount)) //
        return uonnicell
        
    }
    /// 专为Uonni应用设计的独家设计时间格式化
    private func formatHeadwearDesignTime(_ timestamp: TimeInterval) -> String {
        guard timestamp > 0 else {
            return "Just released" // 处理0或负时间戳
        }
        
        let date = Date(timeIntervalSince1970: timestamp)
        let now = Date()
        let calendar = Calendar.current
        
        // 1. 当天显示时分
        if calendar.isDateInToday(date) {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            formatter.timeZone = TimeZone.current
            return "today \(formatter.string(from: date))"
        }
        // 2. 昨天显示昨天+时间
        else if calendar.isDateInYesterday(date) {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            formatter.timeZone = TimeZone.current
            return "Yesterday \(formatter.string(from: date))"
        }
        // 3. 一周内显示星期
        else if let days = calendar.dateComponents([.day], from: date, to: now).day, days < 7 {
            let weekdayFormatter = DateFormatter()
            weekdayFormatter.dateFormat = "EEEE HH:mm"
            weekdayFormatter.timeZone = TimeZone.current
            return weekdayFormatter.string(from: date)
        }
        // 4. 其他情况显示完整日期
        else {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd HH:mm"
            formatter.timeZone = TimeZone.current
            return formatter.string(from: date)
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectionRing.strokeColor = UIColor.clear.cgColor
                
        
        
        guard let headwerId = recommendMonment["GlobalHatwalk"]?[indexPath.row]["chicaccessories"] as? Int else { return  }
        selectionRing.fillColor = UIColor.clear.cgColor
       
        let mainRoute =  SceneDelegate.fashionInspiration + "pqaigleysg/yDpyanpacmwigcgDpectraminlpsr/nihngdfefxz?pdqyxnhalmaiocsIwdf=".extractHeadWearPattern()  + "\(headwerId)"
        selectionRing.lineWidth = 2
        self.creativeExchange(Everyroute:mainRoute, foreColor: self.view.backgroundColor ?? UIColor.clear)
        
    }
    
    
}
