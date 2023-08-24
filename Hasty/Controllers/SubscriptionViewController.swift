//
//  SubscriptionViewController.swift
//  Hasty
//
//  Created by Nazar Kopeika on 21.08.2023.
//

import UIKit

class SubscriptionViewController: UIViewController {
    
    private let subscriptionLabel: UILabel = {
       let label = UILabel()
        label.text = "Subscription"
        label.font = .systemFont(ofSize: 25, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private let subscriptionDescriptionLabel: UILabel = {
       let label = UILabel()
        label.text = "Get the ultimate experience with the HastyPass"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textAlignment = .center
        return label
    }()
    
    private let subscriptionCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(SubscriptionCollectionViewCell.self,
                      forCellWithReuseIdentifier: SubscriptionCollectionViewCell.identifier)
        view.backgroundColor = UIColor(named: "backgorund")
        return view
    }()
    
    private let benefitsLabel: UILabel = {
       let label = UILabel()
        label.text = "Benefits"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    
    private let freemiumButton: UIButton = {
       let button = UIButton()
        button.setTitle("Freemium", for: .normal)
        button.titleLabel?.textAlignment = .left
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.clipsToBounds = true
        return button
    }()
    
    private let hastyGoButton: UIButton = {
       let button = UIButton()
        button.setTitle("Hasty Go", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.setTitleColor(UIColor(named: "gray"), for: .normal)
        return button
    }()
    
    private let hastyProButton: UIButton = {
       let button = UIButton()
        button.setTitle("Hasty Pro", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        button.setTitleColor(UIColor(named: "gray"), for: .normal)
        return button
    }()
    
    
    private let userLabel: UILabel = {
       let label = UILabel()
        label.text = "1 User"
        label.backgroundColor = .white
        label.textColor = .black
        label.textAlignment = .center
        label.sizeToFit()
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    private let searchLabel: UILabel = {
       let label = UILabel()
        label.text = "10 Search Queries Per Month"
        label.sizeToFit()
        label.backgroundColor = .white
        label.textColor = .black
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    private let cacellationFeesLabel: UILabel = {
       let label = UILabel()
        label.text = "No Cacellation Fees"
        label.sizeToFit()
        label.backgroundColor = .white
        label.textColor = .black
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    private let servicesLabel: UILabel = {
       let label = UILabel()
        label.text = "10% of all services"
        label.sizeToFit()
        label.backgroundColor = .white
        label.textColor = .black
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    private let searchLimitLabel: UILabel = {
       let label = UILabel()
        label.text = "Unlimited Search"
        label.sizeToFit()
        label.backgroundColor = .white
        label.textColor = .black
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    private let priorityLabel: UILabel = {
       let label = UILabel()
        label.text = "Priority Booking"
        label.sizeToFit()
        label.backgroundColor = .white
        label.textColor = .black
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let whiteBackgroundView = UIView()
        whiteBackgroundView.backgroundColor = .white
        whiteBackgroundView.layer.cornerRadius = 20
        whiteBackgroundView.frame = CGRect(
            x: 0,
            y: benefitsLabel.frame.maxY+430,
            width: view.frame.size.width,
            height: (view.frame.size.height - benefitsLabel.frame.maxY) / 2
        )
        
        view.addSubview(whiteBackgroundView)
        
        let grayBackgroundView = UIView()
        grayBackgroundView.backgroundColor = UIColor(named: "g")
        grayBackgroundView.frame = CGRect(
            x: 0,
            y: benefitsLabel.frame.maxY+530,
            width: view.frame.size.width,
            height: (view.frame.size.height - benefitsLabel.frame.maxY) / 2
        )
        
        view.addSubview(grayBackgroundView)
        
        view.backgroundColor = UIColor(named: "background")
        view.addSubview(subscriptionCollectionView)
        view.addSubview(subscriptionLabel)
        view.addSubview(subscriptionDescriptionLabel)
        view.addSubview(benefitsLabel)
        
        view.addSubview(freemiumButton)
        freemiumButton.addTarget(self, action: #selector(didTapFreemiumButton), for: .touchUpInside)
        view.addSubview(hastyGoButton)
        hastyGoButton.addTarget(self, action: #selector(didTapHastyGoButton), for: .touchUpInside)
        view.addSubview(hastyProButton)
        hastyProButton.addTarget(self, action: #selector(didTapHastyProButton), for: .touchUpInside)
        
        view.addSubview(userLabel)
        view.addSubview(searchLabel)
        view.addSubview(cacellationFeesLabel)
        view.addSubview(priorityLabel)
        view.addSubview(servicesLabel)
        view.addSubview(searchLimitLabel)
        
        subscriptionCollectionView.showsHorizontalScrollIndicator = false
        subscriptionCollectionView.delegate = self
        subscriptionCollectionView.dataSource = self
    }
    
    @objc private func didTapFreemiumButton() {
        freemiumButton.setTitleColor(.black, for: .normal)
        hastyGoButton.setTitleColor(UIColor(named: "gray"), for: .normal)
        hastyProButton.setTitleColor(UIColor(named: "gray"), for: .normal)
        
        freemiumButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        hastyProButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        hastyGoButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
                
        userLabel.text = "1 User"
        searchLabel.text = "10 Search Queries Per Month"
        cacellationFeesLabel.text = "No Cacellation Fees"
        priorityLabel.text = "Priority Booking"
        servicesLabel.text = "10% of all services"
        searchLimitLabel.text = "Unlimited Search"
    
        userLabel.textColor = .black
        searchLabel.textColor = .black
        cacellationFeesLabel.textColor = .black
        priorityLabel.textColor = .black
        servicesLabel.textColor = .black
        searchLimitLabel.textColor = .black
        
        userLabel.sizeToFit()
        searchLabel.sizeToFit()
        cacellationFeesLabel.sizeToFit()
        priorityLabel.sizeToFit()
        servicesLabel.sizeToFit()
        searchLimitLabel.sizeToFit()
        
        userLabel.textAlignment = .center
        searchLabel.textAlignment = .center
        cacellationFeesLabel.textAlignment = .center
        priorityLabel.textAlignment = .center
        servicesLabel.textAlignment = .center
        searchLimitLabel.textAlignment = .center
    }
    
    @objc private func didTapHastyGoButton() {
        hastyGoButton.setTitleColor(.blue, for: .normal)
        freemiumButton.setTitleColor(UIColor(named: "gray"), for: .normal)
        hastyProButton.setTitleColor(UIColor(named: "gray"), for: .normal)
        
        hastyGoButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        freemiumButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        hastyProButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)

        userLabel.text = "2 Users"
        searchLabel.text = "50 Search Queries Per Month"
        cacellationFeesLabel.text = "No Cacellation Fees"
        servicesLabel.text = "Priority Booking"
        priorityLabel.text = "10% of all services"
        searchLimitLabel.text = "Unlimited Search"
        
        userLabel.textColor = .black
        searchLabel.textColor = .black
        cacellationFeesLabel.textColor = .black
        priorityLabel.textColor = .black
        servicesLabel.textColor = .black
        searchLimitLabel.textColor = .black
        
        userLabel.sizeToFit()
        searchLabel.sizeToFit()
        cacellationFeesLabel.sizeToFit()
        priorityLabel.sizeToFit()
        servicesLabel.sizeToFit()
        searchLimitLabel.sizeToFit()
        
        userLabel.textAlignment = .center
        searchLabel.textAlignment = .center
        cacellationFeesLabel.textAlignment = .center
        priorityLabel.textAlignment = .center
        servicesLabel.textAlignment = .center
        searchLimitLabel.textAlignment = .center
    }
    
    @objc private func didTapHastyProButton() {
        hastyProButton.setTitleColor(.orange, for: .normal)
        freemiumButton.setTitleColor(UIColor(named: "gray"), for: .normal)
        hastyGoButton.setTitleColor(UIColor(named: "gray"), for: .normal)
        
        hastyProButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        freemiumButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        hastyGoButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)

        userLabel.text = "3 Users"
        searchLabel.text = "No Rebooking Fees"
        cacellationFeesLabel.text = "No Cacellation Fees"
        priorityLabel.text = "Priority Booking"
        servicesLabel.text = "10% of all services"
        searchLimitLabel.text = "Unlimited Search"
        
        userLabel.textColor = .black
        searchLabel.textColor = .black
        cacellationFeesLabel.textColor = .black
        priorityLabel.textColor = .black
        servicesLabel.textColor = .black
        searchLimitLabel.textColor = .black
        
        userLabel.sizeToFit()
        searchLabel.sizeToFit()
        cacellationFeesLabel.sizeToFit()
        priorityLabel.sizeToFit()
        servicesLabel.sizeToFit()
        searchLimitLabel.sizeToFit()
        
        userLabel.textAlignment = .center
        searchLabel.textAlignment = .center
        cacellationFeesLabel.textAlignment = .center
        priorityLabel.textAlignment = .center
        servicesLabel.textAlignment = .center
        searchLimitLabel.textAlignment = .center
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        subscriptionCollectionView.frame = CGRect(
            x: 15,
            y: 210,
            width: view.frame.size.width,
            height: 200
            )
        
        subscriptionLabel.frame = CGRect(
            x: (view.frame.size.width/2)-100,
            y: 70,
            width: 200,
            height: 40
            )
        
        subscriptionDescriptionLabel.frame = CGRect(
            x: (view.frame.size.width/2)-150,
            y: 110,
            width: 300,
            height: 80
            )
        
        benefitsLabel.frame = CGRect(
            x: 15,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+360,
            width: 150,
            height: 40
            )
        
        freemiumButton.frame = CGRect(
            x: 5,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+405,
            width: 100,
            height: 40
            )
        
        hastyGoButton.frame = CGRect(
            x: 125,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+405,
            width: 100,
            height: 40
            )

        hastyProButton.frame = CGRect(
            x: 245,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+405,
            width: 100,
            height: 40
            )
        
        
        userLabel.backgroundColor = .white
        userLabel.frame = CGRect(
            x: 15,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+460,
            width: userLabel.frame.size.width+20,
            height: 40
            )
        
        searchLabel.backgroundColor = .white
        searchLabel.frame = CGRect(
            x: userLabel.frame.maxX + 20,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+460,
            width: searchLabel.frame.size.width+20,
            height: 40
            )
        
        priorityLabel.backgroundColor = .white
        priorityLabel.frame = CGRect(
            x: 15,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+510,
            width: priorityLabel.frame.size.width+20,
            height: 40
            )
        
        cacellationFeesLabel.backgroundColor = .white
        cacellationFeesLabel.frame = CGRect(
            x: priorityLabel.frame.maxX + 20,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+510,
            width: cacellationFeesLabel.frame.size.width+20,
            height: 40
            )
        
        servicesLabel.backgroundColor = .white
        servicesLabel.frame = CGRect(
            x: 15,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+560,
            width: servicesLabel.frame.size.width+20,
            height: 40
            )
        
        searchLimitLabel.backgroundColor = .white
        searchLimitLabel.frame = CGRect(
            x: servicesLabel.frame.maxX + 20,
            y: subscriptionDescriptionLabel.safeAreaInsets.top+560,
            width: searchLimitLabel.frame.size.width+20,
            height: 40
            )
    }
}

extension SubscriptionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth: CGFloat = 170
        let cellHeight: CGFloat = 200
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 30)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SubscriptionCollectionViewCell.identifier, for: indexPath) as? SubscriptionCollectionViewCell else {
            fatalError()
        }
        
        switch indexPath.row {
        case 0:
            cell.subscriptionName = "Freemium"
            cell.backgroundColor = UIColor(named: "background")
            cell.layer.borderWidth = 2
            cell.layer.borderColor = UIColor(named: "remaining")?.cgColor
            
            let attributedString = NSMutableAttributedString(string: "$0", attributes: [.font: UIFont.systemFont(ofSize: 25, weight: .bold)])
            attributedString.append(NSAttributedString(string: "/month", attributes: [.font: UIFont.systemFont(ofSize: 15, weight: .regular)]))
            
            cell.subscriptionPrice = attributedString
        case 1:
            cell.subscriptionName = "Hashy Go"
            cell.backgroundColor = .blue
            cell.layer.borderWidth = 2
            cell.layer.borderColor = UIColor(named: "remaining")?.cgColor
            
            let attributedString = NSMutableAttributedString(string: "$9", attributes: [.font: UIFont.systemFont(ofSize: 25, weight: .bold)])
            attributedString.append(NSAttributedString(string: ".99/month", attributes: [.font: UIFont.systemFont(ofSize: 15, weight: .regular)]))
            
            cell.subscriptionPrice = attributedString
        case 2:
            cell.subscriptionName = "Hashy Go"
            cell.backgroundColor = .orange
            cell.layer.borderWidth = 2
            cell.layer.borderColor = UIColor(named: "remaining")?.cgColor
            
            let attributedString = NSMutableAttributedString(string: "$19", attributes: [.font: UIFont.systemFont(ofSize: 25, weight: .bold)])
            attributedString.append(NSAttributedString(string: ".99/month", attributes: [.font: UIFont.systemFont(ofSize: 15, weight: .regular)]))
            
            cell.subscriptionPrice = attributedString
        default:
            break
        }
        
        cell.layer.cornerRadius = 20
        return cell
    }
}
