import UIKit

//MARK: - SearchView Setted

class SearchViewController: UIViewController, TabBarConfigurable , NavBarProtocol {
    
    //MARK: - Const
    
    private let backgroundViewHelper = UIView()
    let searchTableView = UITableView()
    private let searchButton = UIButton()
    private let parametersButton = UIButton()
    
    //MARK: - Core Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarUI(title: "Поиск", imageName: "avLogo", imageSize: CGSize(width: 25, height: 25))
        addSubviews()
        configureConstraints()
        configureUI()
        configureNavigationBarUI(title: "\(carDataArray.count) объявлений", leftImageName: "chevron.backward", rightImageName: "arrow.up.arrow.down", searchVcSymbolsConfig: true)
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        parametersButton.layer.cornerRadius = parametersButton.frame.height / 6
        searchButton.layer.cornerRadius = searchButton.frame.height / 6
    }
    
    private func addSubviews(){
        view.addSubview(backgroundViewHelper)
        view.addSubview(searchTableView)
        view.addSubview(searchButton)
        view.addSubview(parametersButton)
    }
    
    private func configureConstraints(){
        
        
        searchTableView.translatesAutoresizingMaskIntoConstraints = false
        searchTableView.topAnchor.constraint(equalTo: backgroundViewHelper.bottomAnchor).isActive = true
        searchTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        searchTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        searchTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        backgroundViewHelper.translatesAutoresizingMaskIntoConstraints = false
        backgroundViewHelper.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundViewHelper.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundViewHelper.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundViewHelper.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.trailingAnchor.constraint(equalTo: parametersButton.leadingAnchor, constant: -8).isActive = true
        searchButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        searchButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
        
        parametersButton.translatesAutoresizingMaskIntoConstraints = false
        parametersButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 35).isActive = true
        parametersButton.widthAnchor.constraint(equalToConstant: 160).isActive = true
        parametersButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        parametersButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
        
        
    }
    
    //MARK: - Setting UI
    
    private func configureUI(){
        
        backgroundViewHelper.backgroundColor = UIColor(named: "tabBarBg")
        
        searchTableView.backgroundColor = UIColor(named: "tableViewBg")
        
        // Parameters Button
        
        parametersButton.backgroundColor = UIColor(named: "iconsColor")
        parametersButton.setTitle("Параметры", for: .normal)
        parametersButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        if let img1 = UIImage(named: "settings") {
            let iconWidth: CGFloat = 30
            let iconHeight: CGFloat = 27
            
            let resizedImg1 = img1.resized(withBounds: CGSize(width: iconWidth, height: iconHeight))
            
        parametersButton.setImage(resizedImg1, for: .normal)
        
        // Search Button
            
        searchButton.backgroundColor = UIColor(named: "iconsColor")
            
        if let img2 = UIImage(named: "search") {
            let iconWidth: CGFloat = 40
            let iconHeight: CGFloat = 32
                
            let resizedImg2 = img2.resized(withBounds: CGSize(width: iconWidth, height: iconHeight))
                
        searchButton.setImage(resizedImg2, for: .normal)
            }
        }
    }
}

struct CarData {
    var imageNames: [String]
    var name: String
    var price: Int
    var description: String
    
}

let carDataArray: [CarData] = [
     CarData(imageNames: ["first" , "second" , "third" , "fourth" , "fifth"], name: "Renault Logan", price: 47595, description: "2015 г., механика, 2.0 л, бензин, седан, 253000 км"),
     CarData(imageNames: ["scodaFirst" , "scodaSecond" , "scodaThird" , "scodaFourth" , "scodaFifth"], name: "Skoda Rapid II", price: 56453, description: "2020 г., автомат, 1.6 л, бензин, 72 000 км"),
     CarData(imageNames: ["tuareg1" , "tuareg2" , "tuareg3" , "tuareg4" , "tuareg5", "tuareg6"], name: "Volkswagen Touareg III", price: 180878, description: "2019 г., автомат, 3.0 л, дизель, 69 000 км"),
     CarData(imageNames: ["x4BMW1" , "x4BMW2" , "x4BMW3" , "x4BMW4" , "x4BMW5"], name: "BMW X4 G02", price: 132961, description: "2019 г., автомат, 2.0 л, дизель, 107 000 км"),
     CarData(imageNames: ["RR1" , "RR2" , "RR3" , "RR4" , "RR5"], name: "Range Rover Velar", price: 150414, description: "2019 г., автомат, 2.0 л, дизель, 132 000 км"),
     CarData(imageNames: ["BWM1" , "BWM2" , "BWM3" , "BWM4" , "BWM5"], name: "BMW 7 серия E38 · Рестайлинг", price: 20626, description: "2001 г., автомат, 2.9 л, дизель, 493 000 км"),
     CarData(imageNames: ["mazda1" , "mazda2" , "mazda3" , "mazda4" , "mazda5"], name: "Mazda 3 BL", price: 20626, description: "2001 г., автомат, 2.9 л, дизель, 493 000 км"),
     CarData(imageNames: ["jaguar1" , "jaguar2" , "jaguar3" , "jaguar4" , "jaguar5"], name: "Jaguar XF X250·Рестайлинг", price: 52042, description: "2013 г., автомат, 3.0 л, дизель, 265 000 км"),
     CarData(imageNames: ["Nissan1" , "Nissan2" , "Nissan3" , "Nissan4" , "Nissan5"], name: "Nissan Murano III (Z52)", price: 76001, description: "2020 г., вариатор, 3.5 л, бензин, 55 000 км"),
     CarData(imageNames: ["Peugeot1" , "Peugeot2" , "Peugeot3" , "Peugeot4" , "Peugeot5"], name: "Peugeot 3008 II", price: 66608, description: "2019 г., автомат, 1.5 л, дизель, 163 000 км")

 ]
