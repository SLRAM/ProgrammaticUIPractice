//
//  MainView.swift
//  ProgrammaticUIPractice
//
//  Created by Stephanie Ramirez on 1/24/19.
//  Copyright © 2019 Stephanie Ramirez. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func enterButtonPressed(message: String)
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    
    lazy var mainTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .black
        textField.textColor = .white
        return textField
    }()

    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter", for: .normal)
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
        return button
    }()
    @objc func enterButtonPressed() {
        guard let message = mainTextField.text else {return}
        delegate?.enterButtonPressed(message: message)
        
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        self.backgroundColor = .white
        addSubview(mainTextField)
        addSubview(mainButton)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

        mainTextField.translatesAutoresizingMaskIntoConstraints = false
        mainTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainTextField.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.25).isActive = true
        mainTextField.bottomAnchor.constraint(equalTo: mainButton.topAnchor, constant: -11).isActive = true

        
    }
    
}
