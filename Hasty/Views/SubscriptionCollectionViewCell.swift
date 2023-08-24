//
//  SubscriptionCollectionViewCell.swift
//  Hasty
//
//  Created by Nazar Kopeika on 22.08.2023.
//

import UIKit

class SubscriptionCollectionViewCell: UICollectionViewCell {
    static let identifier = "SubscriptionCollectionViewCell"
    
    var subscriptionName: String? {
            get {
                return subscriptionNameLabel.text
            }
            set {
                subscriptionNameLabel.text = newValue
            }
        }
        
    var subscriptionPrice: NSAttributedString? {
            get {
                return subscriptionPriceLabel.attributedText
            }
            set {
                subscriptionPriceLabel.attributedText = newValue
            }
        }
    
    private let subscriptionNameLabel: UILabel = {
       let label = UILabel()
        label.layer.cornerRadius = 20
        label.clipsToBounds = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    private let subscriptionPriceLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        subscriptionNameLabel.backgroundColor = UIColor(named: "remaining")
        contentView.addSubview(subscriptionNameLabel)
        contentView.addSubview(subscriptionPriceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        subscriptionNameLabel.frame = CGRect(
            x: 15,
            y: 30,
            width: 140,
            height: 40
        )
        
        subscriptionPriceLabel.frame = CGRect(
            x: 15,
            y: 140,
            width: 140,
            height: 40
        )
    }
}
