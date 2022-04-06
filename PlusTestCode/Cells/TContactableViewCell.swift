//
//  TContactableViewCell.swift
//  PlusTestCode
//
//  Created by Macservis on 31/03/22.
//

import UIKit

class ContactableViewCell: UITableViewCell {

    
   
    
    
    let nmzapasView: UIView = {
        let view                                       = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor                           = UIColor.orange
        view.layer.cornerRadius                        = 30
        return view
    }()
    
    
    let nmzapasLabel: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text                                      = "."
        label.textAlignment                             = NSTextAlignment.center
        label.font                                      = label.font.withSize(22)
        return label
    }()
    
    
    let nmimageView: UIImageView = {
        let imageView                                       = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode                               = .scaleToFill
        imageView.layer.cornerRadius                        = 30
        imageView.clipsToBounds                             = true
        return imageView
    }()
    
    
    let nmNameLabel: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor                                 = UIColor.white
        label.font                                      = label.font.withSize(22)
        label.numberOfLines                             = 1
        return label
    }()
    
    
    
    let nmcontentLabel: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor                                 = UIColor.lightGray
        label.numberOfLines                             = 2
        label.font                                      = label.font.withSize(15)
        return label
    }()
    
    let nmStackView: UIStackView = {
        let stackView                                       = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis                                      = NSLayoutConstraint.Axis.vertical
        stackView.spacing                                   = 0
        return stackView
    }()
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        startFunction()
    }

}


extension ContactableViewCell {
    
    
    func startFunction() {
        
        self.contentView.backgroundColor = UIColor(white: 0.1, alpha: 1)
        
        addSubview(nmzapasView)
        
        nmzapasView.addSubview(nmzapasLabel)
        
        addSubview(nmimageView)
        
        addSubview(nmStackView)
        
        nmStackView.addArrangedSubview(nmNameLabel)
        
        nmStackView.addArrangedSubview(nmcontentLabel)
        
       
        
        
        startConstraint()
    }
    
    
    
    
    func startConstraint(){
        
        nmzapasView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        nmzapasView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive  = true
        nmzapasView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        nmzapasView.widthAnchor.constraint(equalTo: nmzapasView.heightAnchor, multiplier: 1).isActive = true
        
        nmzapasLabel.leftAnchor.constraint(equalTo: nmzapasView.leftAnchor, constant: 2).isActive = true
        nmzapasLabel.topAnchor.constraint(equalTo: nmzapasView.topAnchor, constant: 2).isActive = true
        nmzapasLabel.rightAnchor.constraint(equalTo: nmzapasView.rightAnchor, constant: -2).isActive = true
        nmzapasLabel.bottomAnchor.constraint(equalTo: nmzapasView.bottomAnchor, constant: -2).isActive = true
        
        nmNameLabel.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmNameLabel.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        nmNameLabel.heightAnchor.constraint(equalTo: nmStackView.heightAnchor, multiplier: 0.33).isActive = true
        
        nmcontentLabel.leftAnchor.constraint(equalTo: nmStackView.leftAnchor).isActive = true
        nmcontentLabel.rightAnchor.constraint(equalTo: nmStackView.rightAnchor).isActive = true
        
        nmStackView.leftAnchor.constraint(equalTo: nmzapasView.rightAnchor, constant: 5).isActive = true
        nmStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nmStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        nmStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10).isActive = true
        
        nmimageView.leftAnchor.constraint(equalTo: leftAnchor,constant: 5).isActive = true
        nmimageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nmimageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        nmimageView.widthAnchor.constraint(equalTo: nmzapasView.heightAnchor).isActive = true
        
        
    }
    
    
}
