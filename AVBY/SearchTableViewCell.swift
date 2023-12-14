import UIKit

//MARK: - Cell Configure

class SearchTableViewCell: UITableViewCell {
    
    //MARK: - Objects
    
    let backView = UIView()
    let carNameLabel = UILabel()
    private let saveButton = UIButton()
    private let hideButton = UIButton()
    let priceLabel = UILabel()
    let currencyLabel = UILabel()
    let priceInUsd = UILabel()
    var collectionViewData: [String] = []
    private let layout = UICollectionViewFlowLayout()
    
    private let photoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
        }()
    
    let descriptionSection = UILabel()
    private let topMark = UIImageView()
    private let vinMark = UIImageView()
    private let playMark = UIImageView()
    private let postingDateSection = UILabel()
    
    private let lineUnderDate = UIView()
    private let leftLeasingButton = UIButton()
    private let rightLeasingButton = UIButton()
    
    var carData: CarData? {
        didSet {
            guard let carData = carData else { return }
            collectionViewData = carData.imageNames
            photoCollectionView.reloadData()
            }
        }
    
    //MARK: - Core Methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        configureConstraints()
        configureUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubview() {
        
        contentView.addSubview(backView)
        backView.addSubview(carNameLabel)
        backView.addSubview(saveButton)
        backView.addSubview(hideButton)
        backView.addSubview(priceLabel)
        backView.addSubview(currencyLabel)
        backView.addSubview(priceInUsd)
        backView.addSubview(photoCollectionView)
        backView.addSubview(descriptionSection)
        backView.addSubview(topMark)
        backView.addSubview(vinMark)
        backView.addSubview(playMark)
        backView.addSubview(postingDateSection)
        backView.addSubview(lineUnderDate)
        backView.addSubview(leftLeasingButton)
        backView.addSubview(rightLeasingButton)
 
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backView.layer.cornerRadius = (contentView.bounds.height - 14) / 30
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Constraints
    
    private func configureConstraints() {
        
        //backView
        
        backView.translatesAutoresizingMaskIntoConstraints = false
        backView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        backView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        backView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 7).isActive = true
        backView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -7).isActive = true
        
        //carName
        
        carNameLabel.translatesAutoresizingMaskIntoConstraints = false
        carNameLabel.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        carNameLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15).isActive = true
        
        //saveButton
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -10).isActive = true
        saveButton.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15).isActive = true
        
        //hideButton
        
        hideButton.translatesAutoresizingMaskIntoConstraints = false
        hideButton.trailingAnchor.constraint(equalTo: saveButton.leadingAnchor, constant: -25).isActive = true
        hideButton.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15).isActive = true
        
        //priceLabel
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        priceLabel.topAnchor.constraint(equalTo: carNameLabel.bottomAnchor, constant: 7).isActive = true
        
        //currencyLabel
        
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.leadingAnchor.constraint(equalTo: priceLabel.trailingAnchor, constant: 4).isActive = true
        currencyLabel.topAnchor.constraint(equalTo: carNameLabel.bottomAnchor, constant: 15).isActive = true
        
        //priceInUsd
        
        priceInUsd.translatesAutoresizingMaskIntoConstraints = false
        priceInUsd.leadingAnchor.constraint(equalTo: currencyLabel.trailingAnchor, constant: 6).isActive = true
        priceInUsd.topAnchor.constraint(equalTo: carNameLabel.bottomAnchor, constant: 18).isActive = true
        
        //collectionView
        
        photoCollectionView.translatesAutoresizingMaskIntoConstraints = false
        photoCollectionView.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        photoCollectionView.trailingAnchor.constraint(equalTo: backView.trailingAnchor).isActive = true
        photoCollectionView.topAnchor.constraint(equalTo: priceInUsd.bottomAnchor, constant: 15).isActive = true
        photoCollectionView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        
        //descriptionSection
        
        descriptionSection.translatesAutoresizingMaskIntoConstraints = false
        descriptionSection.topAnchor.constraint(equalTo: photoCollectionView.bottomAnchor, constant: 12).isActive = true
        descriptionSection.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        descriptionSection.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: 10).isActive = true
        
        //topMark
        
        topMark.translatesAutoresizingMaskIntoConstraints = false
        topMark.topAnchor.constraint(equalTo: descriptionSection.bottomAnchor, constant: 10).isActive = true
        topMark.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        topMark.heightAnchor.constraint(equalToConstant: 20).isActive = true
        topMark.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        //vinMark
        
        vinMark.translatesAutoresizingMaskIntoConstraints = false
        vinMark.topAnchor.constraint(equalTo: descriptionSection.bottomAnchor, constant: 10).isActive = true
        vinMark.leadingAnchor.constraint(equalTo: topMark.trailingAnchor, constant: 4).isActive = true
        vinMark.heightAnchor.constraint(equalToConstant: 20).isActive = true
        vinMark.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        //playMark
        
        playMark.translatesAutoresizingMaskIntoConstraints = false
        playMark.topAnchor.constraint(equalTo: descriptionSection.bottomAnchor, constant: 10).isActive = true
        playMark.leadingAnchor.constraint(equalTo: vinMark.trailingAnchor, constant: 4).isActive = true
        playMark.widthAnchor.constraint(equalToConstant: 20).isActive = true
        playMark.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //postingDate
        
        postingDateSection.translatesAutoresizingMaskIntoConstraints = false
        postingDateSection.topAnchor.constraint(equalTo: topMark.bottomAnchor, constant: 13).isActive = true
        postingDateSection.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        
        //lineUnder
        
        lineUnderDate.translatesAutoresizingMaskIntoConstraints = false
        lineUnderDate.topAnchor.constraint(equalTo: postingDateSection.bottomAnchor, constant: 15).isActive = true
        lineUnderDate.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 10).isActive = true
        lineUnderDate.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -10).isActive = true
        lineUnderDate.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //leftLeasing
        
        leftLeasingButton.translatesAutoresizingMaskIntoConstraints = false
        leftLeasingButton.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: -5).isActive = true
        leftLeasingButton.topAnchor.constraint(equalTo: lineUnderDate.bottomAnchor, constant: 5).isActive = true
        leftLeasingButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        leftLeasingButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //rightLeasing
        
        rightLeasingButton.translatesAutoresizingMaskIntoConstraints = false
        rightLeasingButton.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -8).isActive = true
        rightLeasingButton.topAnchor.constraint(equalTo: lineUnderDate.bottomAnchor, constant: 8).isActive = true
    }
    
    //MARK: - UI Config
    
    private func configureUI() {
        
        backView.backgroundColor = .white
        
        carNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)

        // saveButton
        if let templateImage = UIImage(systemName: "bookmark")?.withTintColor(.systemGray2, renderingMode: .alwaysOriginal) {
                let iconWidth: CGFloat = 25
                let iconHeight: CGFloat = 21

                let resizedImage = templateImage.resized(withBounds: CGSize(width: iconWidth, height: iconHeight))
                
        saveButton.setImage(resizedImage, for: .normal)
    }
        //hideButton
        
        hideButton.tintColor = .systemGray2
        
        if let templateImage2 = UIImage(systemName: "eye.slash")?.withTintColor(.systemGray2, renderingMode: .alwaysOriginal) {
                let iconWidth: CGFloat = 25
                let iconHeight: CGFloat = 22

                let resizedImage2 = templateImage2.resized(withBounds: CGSize(width: iconWidth, height: iconHeight))
                
        hideButton.setImage(resizedImage2, for: .normal)
        }
        
        //priceLabel
        
        priceLabel.font = UIFont.systemFont(ofSize: 27, weight: .bold)
        
        //currencyLabel
        
        currencyLabel.text = "p."
        currencyLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        //priceInUsd
        
        priceInUsd.text = "~ 13 500 $"
        priceInUsd.font = UIFont.systemFont(ofSize: 13,weight: .light)
        
        //collectionView
        
        photoCollectionView.delegate = self
        photoCollectionView.dataSource = self
        photoCollectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: "photoCellIdentifier")
        photoCollectionView.collectionViewLayout = layout
        photoCollectionView.collectionViewLayout = layout
        layout.scrollDirection = .horizontal
        photoCollectionView.layer.cornerRadius = 10
  
        //descSection
        
        descriptionSection.numberOfLines = 0
        descriptionSection.font = UIFont.systemFont(ofSize: 16)
        
        //topMark
        
        topMark.image = UIImage(named: "top")
        topMark.layer.cornerRadius = 3
        topMark.layer.masksToBounds = true
        
        //vinMark
        
        vinMark.image = UIImage(named: "vin")
        vinMark.layer.cornerRadius = 3
        vinMark.layer.masksToBounds = true
        
        //playMark
        
        playMark.image = UIImage(named: "play")
        playMark.layer.cornerRadius = 3
        playMark.layer.masksToBounds = true
    
        //postingDate
        
        postingDateSection.text = "Минск • 3 мин назад"
        postingDateSection.font = UIFont.systemFont(ofSize: 13)
        postingDateSection.textColor = UIColor.gray
        
        lineUnderDate.backgroundColor = .systemGray6
        
        //leftLeasing
        
        leftLeasingButton.setTitle("Лизинг", for: .normal)
        leftLeasingButton.backgroundColor = .clear
        leftLeasingButton.setTitleColor(UIColor(named: "leasing"), for: .normal)
        leftLeasingButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        
        //rightLeasing
        
        rightLeasingButton.backgroundColor = .clear
        rightLeasingButton.setTitleColor(UIColor(named: "leasing"), for: .normal)
        rightLeasingButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    }
    
    //MARK: - Helper Methods
    
    private func calculateLeasingAmount() -> Int {
            guard let carData = carData else {
                return 0
            }

            let leasingAmount = Int(Double(carData.price) * 0.05)
            return leasingAmount
        }
    
    func setupLeasingButton(withText leasingText: String) {
        let leasingAmount = calculateLeasingAmount()
        let leasingText = "от \(leasingAmount) BYN/месяц"
        rightLeasingButton.backgroundColor = .clear
        rightLeasingButton.setTitleColor(UIColor(named: "leasing"), for: .normal)
        rightLeasingButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        let attributedText = NSMutableAttributedString(string: leasingText)
        let boldRange = (leasingText as NSString).range(of: "\(leasingAmount) BYN")
        attributedText.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 13), range: boldRange)
        rightLeasingButton.setAttributedTitle(attributedText, for: .normal)
        }
}

//MARK: - Extensions

extension UIImage {
    func resized(withBounds bounds: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: bounds)
        return renderer.image { (context) in
            self.draw(in: CGRect(origin: .zero, size: bounds))
        }
    }
}

extension SearchTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carDataArray.count > 0 ? carDataArray[0].imageNames.count : 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCellIdentifier", for: indexPath) as! PhotoCollectionViewCell
        let imageName = collectionViewData[indexPath.item]
            cell.imageView.image = UIImage(named: imageName)

            return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width - 20
        let collectionViewHeight = collectionView.bounds.height
        return CGSize(width: collectionViewWidth, height: collectionViewHeight)
    }
}
