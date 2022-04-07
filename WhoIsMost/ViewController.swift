//
//  ViewController.swift
//  OrTo
//
//  Created by Victor on 05.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    
    var backgroundImage = UIImageView()
    var logoLabel = UILabel()
    var startButton = UIButton()
    var catalogButton = UIButton()
    var rulesButton = UIButton()
    var otherButton = UIButton()
    var askQuestionButton = UIButton()
    
    
    func initialize() {
        view.addSubview(backgroundImage)
        view.addSubview(logoLabel)
        view.addSubview(startButton)
        view.addSubview(catalogButton)
        view.addSubview(rulesButton)
        view.addSubview(otherButton)
        view.addSubview(askQuestionButton)
        
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
            make.left.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
        }
        
        logoLabel.lineBreakMode = .byWordWrapping
        logoLabel.numberOfLines = 0
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.83
        logoLabel.attributedText = NSMutableAttributedString(string: "КТО\n СКОРЕЕ\n ВСЕГО\n", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        logoLabel.textAlignment = .center
        logoLabel.textColor = .white
    
        logoLabel.font = UIFont(name: "YanoneKaffeesatz-Bold", size: 72)
        logoLabel.snp.makeConstraints { make in
            make.height.equalTo(190)
            make.width.equalTo(375)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(151)
        }
        
        startButton.setTitle("НАЧАТЬ", for: .normal)
        startButton.titleLabel?.font = UIFont(name: "YanoneKaffeesatz-Bold", size: 20)
        startButton.titleLabel?.textAlignment = .center
        startButton.backgroundColor = UIColor(red: 39/225, green: 174/255, blue: 96/255, alpha: 1)
        startButton.layer.cornerRadius = 11
        startButton.layer.shadowColor =  UIColor(red: 0.085, green: 0.538, blue: 0.277, alpha: 1).cgColor
        startButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        startButton.layer.shadowOpacity = 1
        startButton.layer.shadowRadius = 0
        startButton.layer.masksToBounds = false
        startButton.snp.makeConstraints { make in
            make.width.equalTo(195)
            make.height.equalTo(46)
            make.centerX.equalToSuperview()
            make.top.equalTo(logoLabel).inset(296)
        }
        
        catalogButton.setTitle("КАТАЛОГ", for: .normal)
        catalogButton.titleLabel?.font = UIFont(name: "YanoneKaffeesatz-Bold", size: 20)
        catalogButton.backgroundColor = UIColor(red: 242/255, green: 153/255, blue: 74/255, alpha: 1)
        catalogButton.layer.cornerRadius = 11
        catalogButton.layer.shadowColor =  UIColor(red: 215/255, green: 122/255, blue: 39/255, alpha: 1).cgColor
        catalogButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        catalogButton.layer.shadowOpacity = 1
        catalogButton.layer.shadowRadius = 0
        catalogButton.layer.masksToBounds = false
        catalogButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(startButton).inset(60)
            make.width.equalTo(195)
            make.height.equalTo(46)
        }
        
        rulesButton.setTitle("ПРАВИЛА", for: .normal)
        rulesButton.titleLabel?.font = UIFont(name: "YanoneKaffeesatz-Bold", size: 20)
        rulesButton.backgroundColor = UIColor(red: 45/255, green: 156/255, blue: 219/255, alpha: 1)
        rulesButton.layer.cornerRadius = 11
        rulesButton.layer.shadowColor =  UIColor(red: 35/255, green: 132/255, blue: 187/255, alpha: 1).cgColor
        rulesButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        rulesButton.layer.shadowOpacity = 1
        rulesButton.layer.shadowRadius = 0
        rulesButton.layer.masksToBounds = false
        rulesButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(catalogButton).inset(60)
            make.width.equalTo(195)
            make.height.equalTo(46)
        }
        
        otherButton.setTitle("НАШИ ИГРЫ", for: .normal)
        otherButton.titleLabel?.font = UIFont(name: "YanoneKaffeesatz-Bold", size: 20)
        otherButton.backgroundColor = UIColor(red: 235/255, green: 87/255, blue: 86/255, alpha: 1)
        otherButton.layer.cornerRadius = 11
        otherButton.layer.shadowColor =  UIColor(red: 183/255, green: 64/255, blue: 64/255, alpha: 1).cgColor
        otherButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        otherButton.layer.shadowOpacity = 1
        otherButton.layer.shadowRadius = 0
        otherButton.layer.masksToBounds = false
        otherButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(rulesButton).inset(60)
            make.width.equalTo(195)
            make.height.equalTo(46)
        }
        
        askQuestionButton.setTitle("ЗАДАТЬ ВОПРОС", for: .normal)
        askQuestionButton.titleLabel?.font = UIFont(name: "YanoneKaffeesatz-Bold", size: 20)
        askQuestionButton.backgroundColor = UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha: 1)
        askQuestionButton.layer.cornerRadius = 11
        askQuestionButton.layer.shadowColor =  UIColor(red: 104/255, green: 104/255, blue: 104/255, alpha: 1).cgColor
        askQuestionButton.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        askQuestionButton.layer.shadowOpacity = 1
        askQuestionButton.layer.shadowRadius = 0
        askQuestionButton.layer.masksToBounds = false
        askQuestionButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(otherButton).inset(60)
            make.width.equalTo(195)
            make.height.equalTo(46)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        // Do any additional setup after loading the view.
    }


}

