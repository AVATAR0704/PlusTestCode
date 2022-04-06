//
//  NewContzctViewController.swift
//  PlusTestCode
//
//  Created by Macservis on 31/03/22.
//

import UIKit


class NewContactViewController: UIViewController {

    
    
    
  
    let nmzapasView: UIView = {
        let view                                       = UIView()
        view.backgroundColor                           = UIColor(white: 0.4, alpha: 1)
        view.layer.cornerRadius = 50
        view.clipsToBounds = false
        return view
    }()
    
    let nmzapasLabel: UILabel = {
        let label: UILabel = UILabel()
        label.font = label.font.withSize(30)
        label.textColor = UIColor.white
        label.textAlignment = .center
        
        label.text = "K"
        return label
    }()
    
    let nmimageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = false
        return imageView
    }()
    
    let nmnametextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Ism"
        textfield.backgroundColor = UIColor.lightGray
        textfield.tintColor = UIColor(white: 0.1, alpha: 1)
        textfield.layer.cornerRadius = 5
        //textfield.textColor = UIColor.white
        return textfield
    }()
    
    let nmSurnametextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Familiya"
        textfield.backgroundColor = UIColor.lightGray
        textfield.tintColor = UIColor(white: 0.1, alpha: 1)
        textfield.layer.cornerRadius = 5
        //textfield.textColor = UIColor.white
        return textfield
    }()
    
    let nmtanlovButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(white: 0.1, alpha: 1)
        button.setTitle("Sottoviy", for: UIControl.State.normal)
        button.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(tuppedTanla), for: UIControl.Event.touchDown)
        button.isHidden = false

        return button
    }()
    
    let nmnumberTextfield: UITextField = {
        let textfield = UITextField()
        textfield.text = "+"
        textfield.textColor = UIColor.white
        //textfield.backgroundColor = UIColor(white: 0.1, alpha: 1)
        textfield.keyboardType = UIKeyboardType.numbersAndPunctuation
        return textfield
    }()
    
    
    let nmstackviewtextfields: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = NSLayoutConstraint.Axis.vertical
        stackview.spacing = 0
        //stackview.distribution = .equalSpacing
        return stackview
    }()
    
    let nmstackViewImgStck: UIStackView = {
        let stackview = UIStackView()
        stackview.spacing = 0
        stackview.axis = NSLayoutConstraint.Axis.horizontal
        return stackview
    }()
    
    let nmPaststackview: UIStackView = {
        let stackview = UIStackView()
        stackview.spacing = 0
        stackview.axis = NSLayoutConstraint.Axis.horizontal
        return stackview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       startFunction()
    }
    
 

}



extension NewContactViewController {
    
    func startFunction() {
        self.view.backgroundColor = UIColor(white: 0.1, alpha: 1)
        
        
        
        nmnametextField.translatesAutoresizingMaskIntoConstraints = false
        nmSurnametextField.translatesAutoresizingMaskIntoConstraints = false
        nmzapasView.translatesAutoresizingMaskIntoConstraints = false
        nmzapasLabel.translatesAutoresizingMaskIntoConstraints = false
        nmimageView.translatesAutoresizingMaskIntoConstraints = false
        nmstackviewtextfields.translatesAutoresizingMaskIntoConstraints = false
        nmstackViewImgStck.translatesAutoresizingMaskIntoConstraints = false
        nmtanlovButton.translatesAutoresizingMaskIntoConstraints = false
        nmnumberTextfield.translatesAutoresizingMaskIntoConstraints = false
        nmPaststackview.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        nmzapasLabel.font = nmzapasLabel.font.withSize((nmzapasView.frame.height + nmzapasView.frame.width) / 2)
        nmzapasView.layer.cornerRadius = 40
        
        self.view.addSubview(nmstackViewImgStck)
        
        self.view.addSubview(nmPaststackview)
        
        nmstackviewtextfields.addArrangedSubview(nmnametextField)
        nmstackviewtextfields.addArrangedSubview(nmSurnametextField)
        
        nmstackViewImgStck.addArrangedSubview(nmzapasView)
        nmstackViewImgStck.addArrangedSubview(nmstackviewtextfields)
        
        nmPaststackview.addArrangedSubview(nmtanlovButton)
        nmPaststackview.addArrangedSubview(nmnumberTextfield)
        
        nmzapasView.addSubview(nmzapasLabel)
        nmzapasView.addSubview(nmimageView)
        
        startNavigation()
        startConstraint()
    }
    
    
    func startNavigation() {
       title = "Yangi kontakt"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Bekor qilish", style: UIBarButtonItem.Style.plain, target: self, action: #selector(esc))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Yaratish", style: UIBarButtonItem.Style.plain, target: self, action: #selector(rightTapped))
    }
    
    
    func startConstraint() {
      
//        nmnametextField.translatesAutoresizingMaskIntoConstraints = false
        nmnametextField.leftAnchor.constraint(equalTo: nmstackviewtextfields.leftAnchor).isActive = true
        nmnametextField.rightAnchor.constraint(equalTo: nmstackviewtextfields.rightAnchor).isActive = true
        nmnametextField.heightAnchor.constraint(equalTo: nmstackviewtextfields.heightAnchor, multiplier: 0.5).isActive = true
        
//        nmSurnametextField.translatesAutoresizingMaskIntoConstraints = false
        nmSurnametextField.leftAnchor.constraint(equalTo: nmstackviewtextfields.leftAnchor).isActive = true
        nmSurnametextField.rightAnchor.constraint(equalTo: nmstackviewtextfields.rightAnchor).isActive = true
        
//        nmzapasView.translatesAutoresizingMaskIntoConstraints = false
        nmzapasView.topAnchor.constraint(equalTo: nmstackViewImgStck.topAnchor).isActive = true
        nmzapasView.bottomAnchor.constraint(equalTo: nmstackViewImgStck.bottomAnchor).isActive = true
        nmzapasView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2).isActive = true
        
//        nmzapasLabel.translatesAutoresizingMaskIntoConstraints = false
        nmzapasLabel.centerYAnchor.constraint(equalTo: nmzapasView.centerYAnchor).isActive = true
        nmzapasLabel.centerXAnchor.constraint(equalTo: nmzapasView.centerXAnchor).isActive = true
        
//        
        
//        nmimageView.translatesAutoresizingMaskIntoConstraints = false
        nmimageView.leftAnchor.constraint(equalTo: nmzapasView.leftAnchor).isActive = true
        nmimageView.topAnchor.constraint(equalTo: nmzapasView.topAnchor).isActive = true
        nmimageView.rightAnchor.constraint(equalTo: nmzapasView.rightAnchor).isActive = true
        nmimageView.bottomAnchor.constraint(equalTo: nmzapasView.bottomAnchor).isActive = true
        
        
//        nmstackviewtextfields.translatesAutoresizingMaskIntoConstraints = false
        nmstackviewtextfields.topAnchor.constraint(equalTo: nmstackViewImgStck.topAnchor).isActive = true
        nmstackviewtextfields.bottomAnchor.constraint(equalTo: nmstackViewImgStck.bottomAnchor).isActive = true
        
//        nmstackViewImgStck.translatesAutoresizingMaskIntoConstraints = false
        nmstackViewImgStck.topAnchor.constraint(equalTo: self.view.topAnchor, constant: (navigationController?.navigationBar.frame.height)!).isActive = true
        nmstackViewImgStck.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        nmstackViewImgStck.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        nmstackViewImgStck.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true

//        nmtanlovButton.translatesAutoresizingMaskIntoConstraints = false
        nmtanlovButton.topAnchor.constraint(equalTo: nmPaststackview.topAnchor).isActive = true
        nmtanlovButton.bottomAnchor.constraint(equalTo: nmPaststackview.bottomAnchor).isActive = true
        nmtanlovButton.widthAnchor.constraint(equalTo: nmPaststackview.widthAnchor, multiplier: 0.2).isActive = true
        
//        nmnumberTextfield.translatesAutoresizingMaskIntoConstraints = false
        nmnumberTextfield.topAnchor.constraint(equalTo: nmPaststackview.topAnchor).isActive = true
        nmnumberTextfield.bottomAnchor.constraint(equalTo: nmPaststackview.bottomAnchor).isActive = true
        
//        nmPaststackview.translatesAutoresizingMaskIntoConstraints = false
        nmPaststackview.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        nmPaststackview.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        nmPaststackview.topAnchor.constraint(equalTo: nmstackViewImgStck.bottomAnchor, constant: 20).isActive = true
        nmPaststackview.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.05).isActive = true
        
        
    }
    
    
    
    
    
    
    
    @objc func esc () {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func rightTapped() {
        print(#function)
        
    
    }
    
    
    @objc func tuppedTanla() {
        print(#function)
    }
    
}
