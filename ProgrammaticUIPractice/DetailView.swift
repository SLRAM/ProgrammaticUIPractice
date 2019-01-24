//
//  DetailView.swift
//  ProgrammaticUIPractice
//
//  Created by Stephanie Ramirez on 1/24/19.
//  Copyright © 2019 Stephanie Ramirez. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Stephanie"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(detailLabel)
        self.backgroundColor = .white
        
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        detailLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        detailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        detailLabel.textAlignment = .center
    }
}

