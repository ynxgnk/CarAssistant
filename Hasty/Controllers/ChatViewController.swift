//
//  ChatViewController.swift
//  Hasty
//
//  Created by Nazar Kopeika on 21.08.2023.
//

import UIKit

class ChatViewController: UIViewController {
    
    private let queriesLabel: UILabel = {
       let label = UILabel()
        label.text = "Remaining Queries"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let remainingQueriesLabel: UILabel = {
       let label = UILabel()
        label.text = "10"
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = UIColor(named: "remaining")
        label.layer.cornerRadius = 19
        label.clipsToBounds = true
        label.font = .systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    private let logoLabel: UILabel = {
       let label = UILabel()
        label.text = "hasty"
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 70, weight: .bold)
        return label
    }()
    
    private let logoDescriptionLabel: UILabel = {
       let label = UILabel()
        label.text = "Car Cade Made Easy."
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let greetingsLabel: UILabel = {
       let label = UILabel()
        label.text = "Hi John, I am an AI-powered assistant for your car. Feel free to ask me anything!"
        label.numberOfLines = 0
        label.layer.cornerRadius = 8
        label.textColor = .black
        label.textAlignment = .center
        label.clipsToBounds = true
        label.backgroundColor = .white
        label.font = .systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    private let startButton: UIButton = {
       let button = UIButton()
        button.setTitle("Start Chat", for: .normal)
        button.backgroundColor = UIColor(named: "button")
        button.clipsToBounds = true
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 75
        return button
    }()
    
    private let circleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "background")
        view.layer.cornerRadius = 100
        view.clipsToBounds = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
    }
    
    private func addSubviews() {
        view.backgroundColor = UIColor(named: "white")
        view.addSubview(queriesLabel)
        view.addSubview(remainingQueriesLabel)
        view.addSubview(logoLabel)
        view.addSubview(logoDescriptionLabel)
        view.addSubview(startButton)
        view.addSubview(greetingsLabel)
        view.addSubview(circleView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        queriesLabel.frame = CGRect(
            x: (view.frame.size.width/2)-100,
            y: 70,
            width: 200,
            height: 20
        )
        
        remainingQueriesLabel.frame = CGRect(
            x: (view.frame.size.width/2)-20,
            y: queriesLabel.safeAreaInsets.top-22,
            width: 40,
            height: 40
        )

        logoLabel.frame = CGRect(
            x: (view.frame.size.width/2)-90,
            y: remainingQueriesLabel.safeAreaInsets.top+150,
            width: 250,
            height: 100
        )

        logoDescriptionLabel.frame = CGRect(
            x: (view.frame.size.width/2)-90,
            y: logoLabel.safeAreaInsets.top+322,
            width: 250,
            height: 20
        )
        
        startButton.frame = CGRect(
            x: (view.frame.size.width/2)-80,
            y: logoDescriptionLabel.safeAreaInsets.top+380,
            width: 150,
            height: 150
        )

        greetingsLabel.frame = CGRect(
            x: (view.frame.size.width/2)-150,
            y: startButton.safeAreaInsets.top+570,
            width: 300,
            height: 80
        )
        
        circleView.frame = CGRect(
            x: -25,
            y: -10,
            width: view.frame.size.width+50,
            height: (view.frame.size.height/2)+45
        )
        
        circleView.layer.zPosition = -1
    }
    
}
