//
//  HomeViewController.swift
//  PlusTestCode
//
//  Created by Macservis on 26/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    var serverdata: [Post] = []
    
    
    
    let nmSearchController: UISearchController =  {
      let mSearchController = UISearchController()
        mSearchController.searchBar.placeholder = "Xabar yoki foydalanuvchini qidirish"
        mSearchController.searchBar.searchTextField.backgroundColor = UIColor(white: 0.1, alpha: 1)
        mSearchController.searchBar.setMagnifiyngColorTo(color: UIColor.white)
      // mSearchController.searchBar.searchTextField.textColor = UIColor.white
        mSearchController.searchBar.setTextColorTo(color: .white)
     return mSearchController
    }()
    
    
    let nmTableView: UITableView = {
        let mTableView = UITableView()
        mTableView.translatesAutoresizingMaskIntoConstraints = false
        mTableView.rowHeight = 80
        mTableView.backgroundColor = UIColor(white: 0.2, alpha: 1)
        mTableView.register(Post2TableViewCell.self, forCellReuseIdentifier: "Post2Identifiew")
        return mTableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
       // nmTableView.register(PostTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
       startFunction()
    }
  
}




extension HomeViewController {
    
    //MARK: Methods
    func  startFunction() {
        
        view.backgroundColor = UIColor(white: 0.2, alpha: 1)
       
        nmTableView.delegate = self
        nmTableView.dataSource = self
        
        
        self.view.addSubview(nmTableView)

        startServerAddData()
        startConstrainsFunc()
        startNavigationFunction()
    }
    
    
    
    func  startConstrainsFunc() {
        
        nmTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        nmTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        nmTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        nmTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
    }
    
    
    
    
    func startNavigationFunction() {
        title = "Chatlar"
        
        navigationItem.searchController = nmSearchController
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Tahrir", style: UIBarButtonItem.Style.plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create", style: UIBarButtonItem.Style.plain, target: self, action: #selector(rightTapped))
      
    }
    
    
    func startServerAddData() {
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: "launch2"))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "r"))
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: ""))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "launch5"))
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: "launch2"))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "r"))
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: "launch2"))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "r"))
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: "launch2"))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "r"))
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: "launch2"))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "r"))
        serverdata.append(Post(nameStr: "Abdulvohid", contentStr: "Ha gap yo'q aka zo'r", imageStr: "launch1"))
        serverdata.append(Post(nameStr: "Amirqul", contentStr: "Ha haty kelavering siz bemalol gaplashamiz serveri ishlamayapti lkn buni", imageStr: "launch2"))
        serverdata.append(Post(nameStr: "Muhammad Solih", contentStr: "Assalomu alekum ", imageStr: "r"))
    }
    
    
    //MARK: objc Methods
    @objc func rightTapped() {
        print(#function)
       present(UINavigationController(rootViewController: ContactViewController()), animated: true, completion: nil)
    }
    
    @objc func leftTapped() {
        print(#function)
        
        navigationController?.pushViewController(OnlineContactViewController(), animated: true)
//        let alert = UIAlertController(title: "Saralash:", message: "", preferredStyle: UIAlertController.Style.actionSheet)
//        alert.addAction(UIAlertAction(title: "Ismi", style: UIAlertAction.Style.default, handler: nil))
//        alert.addAction(UIAlertAction(title: "Oxirgi faollik vaqti", style: UIAlertAction.Style.default, handler: nil))
//        alert.addAction(UIAlertAction(title: "Bekor qilish", style: UIAlertAction.Style.cancel, handler: nil))
//        present(alert, animated: true, completion: nil)
    }
}

//MARK: Table view extension
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serverdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item                   = serverdata[indexPath.row]
        let cell                   = nmTableView.dequeueReusableCell(withIdentifier: "Post2Identifiew", for: indexPath) as! Post2TableViewCell
        cell.nmnameLabel.text      = item.nameStr
        cell.nmcontentLabel.text   = item.contentStr
        
        if let itemimagestr        = item.imageStr {
            
            if itemimagestr != "" {
                cell.nmimageView.image = UIImage(named: itemimagestr)
            }else {
                cell.nmimageView.image = UIImage()
            }
        }else {
            cell.nmimageView.image = UIImage()
        }
        return cell
    }
    
    
    
    
}


//MARK: Searchbar extension
extension UISearchBar {
    
    func setMagnifiyngColorTo(color: UIColor) {
        let textFieldInsideSearchBar = self.value(forKey: "searchField") as! UITextField
        let glassiconView = textFieldInsideSearchBar.leftView as? UIImageView
        glassiconView?.image = glassiconView?.image?.withRenderingMode(.alwaysTemplate)
        glassiconView?.tintColor = color
    }
    
    func setTextColorTo(color: UIColor) {
       
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).defaultTextAttributes = [NSAttributedString.Key.foregroundColor: color]
    }
    
}
