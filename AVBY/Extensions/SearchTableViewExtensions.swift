import UIKit

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    
    func setupTableView() {
        searchTableView.dataSource = self
        searchTableView.delegate = self
        searchTableView.register(SearchTableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carDataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! SearchTableViewCell
        cell.backgroundColor = UIColor(named: "tableViewBg")
        let carData = carDataArray[indexPath.row]
        cell.carData = carData
        cell.carNameLabel.text = carData.name
        cell.priceLabel.text = formatPrice(carData.price)
        let priceValue = Double(carData.price)
        let priceInUsd = priceValue / 3.17
        cell.priceInUsd.text = String(format: "≈ %.f $", priceInUsd)
        
        let leasingText = "от \(Double(carData.price) * 0.05) BYN/месяц"
        cell.setupLeasingButton(withText: leasingText)
        
        cell.descriptionSection.text = carData.description
        cell.backView.topAnchor.constraint(equalTo: indexPath.row == 0 ? cell.contentView.topAnchor : cell.contentView.topAnchor, constant: indexPath.row == 0 ? 0 : 10).isActive = true

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 28.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let headerView = UIView()
           headerView.backgroundColor = .clear
           return headerView
       }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    private func formatPrice(_ price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 0

        let formattedNumber = numberFormatter.string(from: NSNumber(value: price)) ?? "\(price)"
        return formattedNumber.replacingOccurrences(of: ",", with: " ")
    }
}
