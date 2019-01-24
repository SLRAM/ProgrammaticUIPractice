//
//  MainViewController.swift
//  ProgrammaticUIPractice
//
//  Created by Stephanie Ramirez on 1/24/19.
//  Copyright © 2019 Stephanie Ramirez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mainView)
        mainView.delegate = self
        
    }
    
    
    
    
}
extension MainViewController: MainViewDelegate {
    func enterButtonPressed(message: String) {
        let detail = DetailViewController.init(message: message)
        navigationController?.pushViewController(detail, animated: true)
    }

}
