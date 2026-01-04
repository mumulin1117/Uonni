//
//  UBACAMNNIHeadwearPolicyController.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//

import UIKit
struct UBACAMNNHeadwearDesignElement {
    let UBACAMNNbaseModel: String
    let UBACAMNNdecorations: [UBACAMNNDecorationItem]
    let UBACAMNNcolorPalette: [UIColor]
    let UBACAMNNmaterialType: UBACAMNNMaterialType
    
    enum UBACAMNNMaterialType: String, CaseIterable {
        case satin = "绸缎光泽"
        case lace = "蕾丝镂空"
        case metallic = "金属质感"
        case straw = "草编纹理"
    }
}

struct UBACAMNNDecorationItem {
    let modelURL: String
    let position: SIMD3<Float>
    let scale: Float
    let rotation: SIMD3<Float>
}

class UBACAMNNIHeadwearPolicyController: UIViewController, UICollectionViewDelegate {
   
    
    private let headwearUBACAMNNGradientLayer: CAGradientLayer = {
           let layer = CAGradientLayer()
           layer.colors = [
            UIColor(red: 0.36, green: 0.07, blue: 0.44, alpha: 1).cgColor, // Designer Purple
               UIColor(red: 0.11, green: 0.02, blue: 0.22, alpha: 1).cgColor  // Couture Black
           ]
           layer.locations = [0.0, 1.0]
           layer.startPoint = CGPoint(x: 0.5, y: 0)
           layer.endPoint = CGPoint(x: 0.5, y: 1)
           return layer
       }()
    
    private let runwayUBACAMNNTitleLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
           label.textColor = .white
           label.textAlignment = .center
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
    
    
    private let styleUBACAMNNGuideTextView: UITextView = {
            let textView = UITextView()
            textView.isEditable = false
            textView.backgroundColor = .clear
        textView.textColor = UIColor.white // Lavender Mist
            textView.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            textView.translatesAutoresizingMaskIntoConstraints = false
            return textView
        }()
    
    private lazy var fashionUBACAMNNBackButton: UIButton = {
           let UBACAMNNIbutton = UIButton(type: .system)
           UBACAMNNIbutton.setImage(UIImage(systemName: "chevron.left.circle.fill"), for: .normal)
           UBACAMNNIbutton.tintColor = UIColor(hexUonniColor: "#D8BFD8") // Thistle
           UBACAMNNIbutton.addTarget(self, action: #selector(returnToStyleHub), for: .touchUpInside)
           UBACAMNNIbutton.translatesAutoresizingMaskIntoConstraints = false
           return UBACAMNNIbutton
       }()
       
       // MARK: - Style Policy Types
       enum FashionPolicyType {
           case styleProtection
           case communityTerms
       }
       
       var currentUBACAMNNPolicy: FashionPolicyType = .styleProtection
    private let elementLibrary = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    init(currentPolicy: FashionPolicyType) {
        self.currentUBACAMNNPolicy = currentPolicy
        super.init(nibName: nil, bundle: nil)
    }
    private var UBACAMNNcurrentDesign = UBACAMNNHeadwearDesignElement(
            UBACAMNNbaseModel: "hat_base_01.scn",
            UBACAMNNdecorations: [],
            UBACAMNNcolorPalette: [.systemPink, .systemIndigo, .systemTeal],
            UBACAMNNmaterialType: .satin
        )
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareRunwayView()
        UBACAMNNarrangeStyleElements()
        
               
        elementLibrary.delegate = self
        elementLibrary.backgroundColor = .systemGray6
        view.addSubview(elementLibrary)
        UBACAMNNdisplayCurrentFashionPolicy()
        
    }
        
       
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        headwearUBACAMNNGradientLayer.frame = view.bounds
    }

    // MARK: - Style Setup
    private func prepareRunwayView() {
        view.layer.addSublayer(headwearUBACAMNNGradientLayer)
        view.addSubview(fashionUBACAMNNBackButton)
        view.addSubview(runwayUBACAMNNTitleLabel)
       
        view.addSubview(styleUBACAMNNGuideTextView)
    }
        
       
    private func UBACAMNNarrangeStyleElements() {
        NSLayoutConstraint.activate([
            fashionUBACAMNNBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            fashionUBACAMNNBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fashionUBACAMNNBackButton.widthAnchor.constraint(equalToConstant: 44),
            fashionUBACAMNNBackButton.heightAnchor.constraint(equalToConstant: 44),
            
            runwayUBACAMNNTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            runwayUBACAMNNTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            runwayUBACAMNNTitleLabel.leadingAnchor.constraint(greaterThanOrEqualTo: fashionUBACAMNNBackButton.trailingAnchor, constant: 12),
            
            styleUBACAMNNGuideTextView.topAnchor.constraint(equalTo: runwayUBACAMNNTitleLabel.bottomAnchor, constant: 24),
            styleUBACAMNNGuideTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            styleUBACAMNNGuideTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            styleUBACAMNNGuideTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24)
            
          
        ])
    }
    private func UBACAMNNcreateLibraryLayout()  {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.33),
            heightDimension: .fractionalHeight(1.0)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 8, leading: 8, bottom: 8, trailing: 8)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .estimated(80)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitems: [item]
        )
        
       
        
    }
    // MARK: - Policy Display
    private func UBACAMNNdisplayCurrentFashionPolicy() {
        switch currentUBACAMNNPolicy {
        case .styleProtection:
            runwayUBACAMNNTitleLabel.text = "Uonni Privacy"
            styleUBACAMNNGuideTextView.attributedText = UBACAMNNcreateStyleProtectionContent(UBACAMNNtag:0)
            
        case .communityTerms:
            runwayUBACAMNNTitleLabel.text = "Uonni Terms"
            styleUBACAMNNGuideTextView.attributedText = UBACAMNNcreateStyleProtectionContent(UBACAMNNtag: 1)
        }
    }
    
    private func UBACAMNNcreateStyleProtectionContent(UBACAMNNtag:Int) -> NSAttributedString {
        let sectionTitleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .semibold),
            .foregroundColor: UIColor(hexUonniColor: "#BA55D3"), // Medium Orchid
            .paragraphStyle: NSMutableParagraphStyle()
        ]
        
        let contentAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 15, weight: .regular),
            .foregroundColor: UIColor(hexUonniColor: "#E6E6FA"), // Lavender Mist
            .paragraphStyle: NSMutableParagraphStyle()
        ]
        
        let content = NSMutableAttributedString()
        
        // Section 1
        content.append(NSAttributedString(
            string: "Your Trend Data\n2025-04-3\n\n",
            attributes: sectionTitleAttributes
        ))
        content.append(NSAttributedString(
            string:
                (UBACAMNNtag == 0) ?
            """
            
            Uonni Privacy Policy

            1. Your Style Data Collection

            We gather only essential information to enhance your headwear experience:

            Profile Essentials: Hat sizes, preferred styles (e.g., "bohemian", "streetwear"), and color preferences
            Community Posts: Designs shared on our virtual runway and styling tips
            Device Measurements: Hat size calibration data (with explicit consent)
            2. Trend Data Usage

            Your information helps:

            Curate personalized style recommendations
            Improve our virtual fitting technology
            Showcase your designs to inspire the community (when shared publicly)
            3. Runway Visibility Controls

            All shared posts display your designer profile name
            Adjust visibility per post via "Showcase Settings"
            Anonymous browsing available for style exploration
            4. Data Protection Promise

            We implement catwalk-grade security:

            End-to-end encryption for private messages
            Regular style audits by fashion-tech experts
            Never sell your design preferences to third parties
            5. Designer Rights

            Delete your account anytime via Atelier Settings
            Export your design history as a lookbook PDF
            Request data correction for sizing profiles
            Contact our Style Guardians for questions.
            
            """
            :
                            """
                            Uonni Terms

                            1. Catwalk Conduct

                            By joining our style community, you agree to:

                            Celebrate diverse aesthetics like a fashion week lineup
                            Credit original designers when remixing ideas
                            Report counterfeit designs via "Protect the Runway" tool
                            2. Intellectual Hat-tire

                            You retain ownership of all original designs
                            By posting, you grant a non-exclusive license to display your work in-app
                            Duplicate accounts will be archived like last season's trends
                            3. Style Accountability

                            Prohibited behaviors (may result in account deactivation):

                            Design Theft: Copying creations without credit
                            Trend Spam: Mass posting unrelated content
                            Virtual Harassment: Negative comments about body types/styles
                            4. Virtual Fitting Guarantee

                            Hat size recommendations are guidelines only
                            We're not liable for real-world fit discrepancies
                            Report inaccurate measurements to improve our algorithm
                            5. Policy Updates

                            Major changes will be announced via:

                            In-app "Front Row Notifications"
                            Email to registered designers
                            Banner on your style dashboard
                            
                            
                            """
            ,
            attributes: contentAttributes
        ))
        
    
        return content
    }
    enum UBACAMNNDecorationLibrary {
        static let allItems = [
            UBACAMNNDecorationItem(modelURL: "decoration_pearl.scn", position: .zero, scale: 1, rotation: .zero),
            UBACAMNNDecorationItem(modelURL: "decoration_ribbon.scn", position: .zero, scale: 1, rotation: .zero),
            UBACAMNNDecorationItem(modelURL: "decoration_feather.scn", position: .zero, scale: 1, rotation: .zero)
        ]
    }
    private let UBACAMNNmaterialSwatch = UIView()
        
        // MARK: - Style Actions
        @objc private func returnToStyleHub() {
            UBACAMNNmaterialSwatch.backgroundColor = UIColor.black
                   
            
            navigationController?.popViewController(animated: true)
            UBACAMNNmaterialSwatch.layer.cornerRadius = 8
        }
}
private extension UIColor {
    convenience init(hexUonniColor: String) {
        let hex = hexUonniColor.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default: (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

