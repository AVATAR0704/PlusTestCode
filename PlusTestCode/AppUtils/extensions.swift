//
//  extensions.swift
//  PlusTestCode
//
//  Created by Macservis on 28/03/22.
//

import Foundation
import UIKit

extension UIView {
    
    func insideViewTO(so subView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: subView.topAnchor).isActive = translatesAutoresizingMaskIntoConstraints
        leftAnchor.constraint(equalTo: subView.leftAnchor).isActive = translatesAutoresizingMaskIntoConstraints
        rightAnchor.constraint(equalTo: subView.rightAnchor).isActive = true
        bottomAnchor.constraint(equalTo: subView.bottomAnchor).isActive = true
    }
    
    
}
