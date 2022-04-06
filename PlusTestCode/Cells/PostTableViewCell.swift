//
//  PostTableViewCell.swift
//  PlusTestCode
//
//  Created by Macservis on 26/03/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    let nmZapasView: UIView = {
       let mZapasView = UIView()
        mZapasView.translatesAutoresizingMaskIntoConstraints = false
        mZapasView.backgroundColor = UIColor.orange
        mZapasView.layer.cornerRadius = 30
        return mZapasView
    }()
    
    
    
    let nmZapasLabel: UILabel = {
        let mLabel = UILabel()
        mLabel.translatesAutoresizingMaskIntoConstraints = false
        mLabel.text = "."
        mLabel.font = mLabel.font.withSize(22)
        mLabel.textAlignment = NSTextAlignment.center
        return mLabel
    }()
    
    
    
    let nmImageView: UIImageView = {
        let mImageView = UIImageView()
        mImageView.translatesAutoresizingMaskIntoConstraints = false
        mImageView.contentMode = .scaleToFill
        mImageView.layer.cornerRadius = 30
        mImageView.backgroundColor = .red
        return mImageView
    }()
    
    
    
    let nmNameLabel: UILabel = {
        let mNameLabel: UILabel = UILabel()
        mNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mNameLabel.text = "Name"
        mNameLabel.font = mNameLabel.font.withSize(22)
        mNameLabel.textColor = UIColor.white
        return mNameLabel
    }()
    
    
    
    let nmPostLabel: UILabel = {
        let mPostLabel = UILabel()
        mPostLabel.translatesAutoresizingMaskIntoConstraints = false
        mPostLabel.text = "Post"
        mPostLabel.font = mPostLabel.font.withSize(15)
        mPostLabel.textColor = UIColor.lightGray
        
        mPostLabel.numberOfLines = 2
        return mPostLabel
    }()
    
    let nmStackView: UIStackView  = {
        let mStackView = UIStackView()
        mStackView.translatesAutoresizingMaskIntoConstraints = false
        mStackView.axis = NSLayoutConstraint.Axis.vertical
        mStackView.spacing = 5
        return mStackView
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


//MARK: Methods
extension PostTableViewCell {
    
    func startFunction() {
        self.contentView.backgroundColor = UIColor(white: 0.2, alpha: 1)
        
        nmStackView.addArrangedSubview(nmNameLabel)
        nmStackView.addArrangedSubview(nmPostLabel)
        
        
        addSubview(nmZapasView)
        
        addSubview(nmZapasLabel)
        
        nmZapasView.addSubview(nmImageView)
        
        addSubview(nmStackView)
        
        
        
        
     startConstraints()
    }
    
    
    
    func  startConstraints() {
        
        NSLayoutConstraint.activate(
                                     [
            nmZapasView.leftAnchor.constraint(equalTo:   leftAnchor,constant: 5),
            nmZapasView.topAnchor.constraint(equalTo:    topAnchor, constant: 10),
            nmZapasView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            nmZapasView.widthAnchor.constraint(equalToConstant: frame.height - 20),
            
            nmZapasLabel.leftAnchor.constraint(equalTo: nmZapasView.leftAnchor,constant: 3),
            nmZapasLabel.topAnchor.constraint(equalTo:  nmZapasView.topAnchor, constant: 3),
            nmZapasLabel.rightAnchor.constraint(equalTo: nmZapasView.rightAnchor, constant: -3),
            nmZapasLabel.bottomAnchor.constraint(equalTo: nmZapasView.bottomAnchor, constant: -3),
            
            nmImageView.leftAnchor.constraint(equalTo: nmZapasView.leftAnchor),
            nmImageView.topAnchor.constraint(equalTo:  nmZapasView.topAnchor ),
            nmImageView.bottomAnchor.constraint(equalTo: nmZapasView.bottomAnchor),
            nmImageView.widthAnchor.constraint(equalToConstant: frame.height - 20),
            
            nmStackView.leftAnchor.constraint(equalTo: self.nmZapasView.rightAnchor,constant: 5),
            nmStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nmStackView.rightAnchor.constraint(equalTo: rightAnchor,constant: -5),
            nmStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10),
            
            nmNameLabel.heightAnchor.constraint(equalToConstant: 20)
                                     ]
                                    )
    }
}

//let item = serverdata[indexPath.row]
//let cell = nmTableView.dequeueReusableCell(withIdentifier: "Post2Identifiew") as! Post2TableViewCell
//
//cell.nmnameLabel.text      = item.nameStr
//cell.nmcontentLabel.text   = item.contentStr
//
//if let nmstr               = item.imageStr {
//    cell.nmimageView.image = UIImage(named: nmstr)
//}else {
//    cell.nmimageView.image = UIImage()
//}
//return cell
