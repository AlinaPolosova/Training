//
//  LabelExampleViewController.swift
//  Training
//
//  Created by Mac on 24.07.2024.
//

import UIKit

class LabelExampleViewController: UIViewController {
    
    var labelText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        let label = UILabel()
        label.text = labelText
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
