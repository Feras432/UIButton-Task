//
//  ViewController.swift
//  UIButtonTask
//
//  Created by Feras Alshadad on 28/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let firstImage = UIImageView()
    let myTextField = UITextField()
    let myButton = UIButton(type: .system)
    var secondImage = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(firstImage)
        view.addSubview(myTextField)
        view.addSubview(myButton)
        
        setupUI()
        setupConstraints()
        
        myButton.addTarget(self, action: #selector(loadImageButtonTapped), for: .touchUpInside)
        
    }
    
    func setupUI(){
        myTextField.placeholder = "Enter image name here"
        myTextField.textAlignment = .center
                
        myButton.setTitle("Load image", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.layer.cornerRadius = 8
                
        firstImage.image = UIImage(named: secondImage)
        firstImage.layer.borderWidth = 2
        firstImage.layer.borderColor = UIColor.lightGray.cgColor
        firstImage.layer.cornerRadius = firstImage.frame.height / 2
                
        myButton.addTarget(self, action: #selector(loadImageButtonTapped), for: .touchUpInside)
        
        myButton.layer.shadowColor = UIColor.black.cgColor
        myButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        myButton.layer.shadowOpacity = 0.5
        myButton.layer.shadowRadius = 4
    }
    
    func setupConstraints(){
        myButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(50)
        }

        myTextField.snp.makeConstraints { make in
            make.bottom.equalTo(myButton.snp.top).offset(-10)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
        firstImage.snp.makeConstraints { make in
            make.bottom.equalTo(myTextField.snp.bottom).offset(-40)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(300)
        }
        
    }
    
    @objc func loadImageButtonTapped() {
        secondImage = myTextField.text!
        firstImage.image = UIImage(named: secondImage)
    }

}

