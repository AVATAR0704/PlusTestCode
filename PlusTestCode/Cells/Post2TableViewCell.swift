//
//  Post2TableViewCell.swift
//  PlusTestCode
//
//  Created by Macservis on 29/03/22.
//

import UIKit

class Post2TableViewCell: UITableViewCell {

    
    
    
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
        label.textColor                                 = UIColor.black
        label.text                                      = "."
        label.textAlignment                             = NSTextAlignment.center
        label.font                                      = label.font.withSize(22)
        return label
    }()
    
    
    let nmimageView: UIImageView = {
        let imageView                                       = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode                               = UIView.ContentMode.scaleToFill
        imageView.layer.cornerRadius                        = 30
        imageView.clipsToBounds                             = true
        return imageView
    }()
    
    let nmnameLabel: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font                                      = label.font.withSize(22)
        label.textColor                                 = UIColor.white
        label.numberOfLines                             = 1
        return label
    }()
    
    
    let nmcontentLabel: UILabel = {
        let label                                       = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor                                 = UIColor.lightGray
        label.font                                      = label.font.withSize(15)
        label.numberOfLines                             = 0
        return label
    }()
   
    
    let nmstackView: UIStackView = {
        let stackView                                       = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis                                      = .vertical
        stackView.spacing                                   = 0
        return stackView
    }()
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        
//        
//        startFunction()
//    }

    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        startFunction()
    }
   
}


extension Post2TableViewCell {
    
    func startFunction() {
        
        
        contentView.backgroundColor = UIColor(white: 0.1, alpha: 1)
        
        addSubview(nmzapasView)
        
        addSubview(nmimageView)
        
        nmzapasView.addSubview(nmzapasLabel)
        
        addSubview(nmstackView)
        
        nmstackView.addArrangedSubview(nmnameLabel)
        
        nmstackView.addArrangedSubview(nmcontentLabel)
        
        
        startNavigationFunc()
    }
    
    
    
    func startNavigationFunc() {
        
        nmzapasView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive                   = true
        nmzapasView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive                    = true
        nmzapasView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive             = true
        nmzapasView.widthAnchor.constraint(equalTo: nmzapasView.heightAnchor, multiplier: 1).isActive  = true
        
        
        nmzapasLabel.leftAnchor.constraint(equalTo: nmzapasView.leftAnchor, constant: 3).isActive      = true
        nmzapasLabel.topAnchor.constraint(equalTo: nmzapasView.topAnchor, constant: 3).isActive        = true
        nmzapasLabel.rightAnchor.constraint(equalTo: nmzapasView.rightAnchor, constant: -3).isActive   = true
        nmzapasLabel.bottomAnchor.constraint(equalTo: nmzapasView.bottomAnchor, constant: -3).isActive = true
        
        
        nmimageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive                   = true
        nmimageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive                    = true
        nmimageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive             = true
        nmimageView.widthAnchor.constraint(equalTo: nmimageView.heightAnchor, multiplier: 1).isActive  = true
        
        
        nmnameLabel.leftAnchor.constraint(equalTo: nmstackView.leftAnchor).isActive                    = true
        nmnameLabel.rightAnchor.constraint(equalTo: nmstackView.rightAnchor).isActive                  = true
        nmnameLabel.heightAnchor.constraint(equalToConstant: 20).isActive                              = true
        
        nmcontentLabel.leftAnchor.constraint(equalTo: nmstackView.leftAnchor).isActive                 = true
        nmcontentLabel.rightAnchor.constraint(equalTo: nmstackView.rightAnchor).isActive               = true
        
        
        nmstackView.leftAnchor.constraint(equalTo: nmzapasView.rightAnchor, constant: 5).isActive      = true
        nmstackView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive                    = true
        nmstackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive                = true
        nmstackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive             = true
    }
    
    
    
}
