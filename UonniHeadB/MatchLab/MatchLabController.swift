//
//  MatchLabController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
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
            return
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
        
        recommendationsView.isPagingEnabled = true
      
       
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
           
            SVProgressHUD.dismiss()
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
        uonnicell.postConttnwearLbl.text = recommendMonment[indexPath.row]["creativeexpression"] as? String
        uonnicell.headwearName.text = recommendMonment[indexPath.row]["trendsettinglooks"] as? String
        
        let timecount = recommendMonment[indexPath.row]["exclusivedesigns"] as? Int ?? 0
        
        uonnicell.postTimewearLbl.text = formatExclusiveDesignTime( TimeInterval(timecount)) //
        return uonnicell
        
    }
    /// 专为Uonni应用设计的独家设计时间格式化
    private func formatExclusiveDesignTime(_ timestamp: TimeInterval) -> String {
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
       
        
        guard let itemid = recommendMonment[indexPath.row]["chicaccessories"] as? Int else { return  }
 
        let mainRoute =  ExplorationRequestBuilder.fashionInspiration + "pages/DynamicDetails/index?dynamicId="  + "\(itemid)"
        self.creativeExchange(Everyroute:mainRoute)
        
    }
    
    
}
