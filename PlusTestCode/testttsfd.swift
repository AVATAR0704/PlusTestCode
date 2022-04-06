//
//  testttsfd.swift
//  PlusTestCode
//
//  Created by Macservis on 28/03/22.
//

import UIKit

class Testviewcontroller: UIViewController {
    
    let label11: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text                                      = "Samandar"
        label.textColor                                 = UIColor.black
        label.font                                      = label.font.withSize(22)
        label.backgroundColor                           = UIColor.black
        return label
        
    }()
    
    let label2: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text                                      = "Toshpulatov"
        label.textColor                                 = UIColor.black
        label.font                                      = label.font.withSize(22)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startFunction()
    }
    
    
    func  startFunction() {
        
        view.backgroundColor = .white
        
        view.addSubview(label11)
        view.addSubview(label2)
        
        
       constraints()
    }
    
    func  constraints() {
        label11.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive                   = true
        label11.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 12).isActive      = true
        label11.widthAnchor.constraint(equalToConstant: 100).isActive                            = true
        label11.heightAnchor.constraint(equalTo: label11.heightAnchor, multiplier: 16/9).isActive = true
        
        
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive                   = true
        label2.leadingAnchor.constraint(equalTo: label11.trailingAnchor, constant: 20).isActive  = true
        label2.heightAnchor.constraint(equalToConstant: 80).isActive                            = true
        label2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive  = true
    }
    
    
    
    
    
}
