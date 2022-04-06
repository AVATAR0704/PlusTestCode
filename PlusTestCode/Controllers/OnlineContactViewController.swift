//
//  OnlineContactViewController.swift
//  PlusTestCode
//
//  Created by Macservis on 31/03/22.
//

import UIKit

class OnlineContactViewController: UIViewController {

    var serverData: [OnlineContacts] = []
    
    let nmTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(white: 0.2, alpha: 1)
        tableView.rowHeight = 80
        tableView.register(ContactableViewCell.self, forCellReuseIdentifier: "OnlineID")
        return tableView
    }()
    
    let nmSearchController: UISearchController = {
        let seachController = UISearchController(searchResultsController: nil)
        seachController.searchBar.translatesAutoresizingMaskIntoConstraints = false
        seachController.searchBar.placeholder = "Qidiruv"
        seachController.searchBar.searchTextField.backgroundColor = UIColor(white: 0.1, alpha: 1)
        seachController.searchBar.setMagnifiyngColorTo(color: UIColor.white)
        return seachController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }
    

    
}


extension OnlineContactViewController {
    
    
    func startFunction () {
        self.view.backgroundColor = UIColor(white: 0.2, alpha: 1)
        
        self.view.addSubview(nmTableView)
        
        nmTableView.delegate = self
        nmTableView.dataSource = self
        
        startDataServer()
        startNavigation()
        startConstraint()
    }
    
    
    
    func startNavigation() {
        
        title = "Kontaktlar"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(tappedRight))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Ortga", style: UIBarButtonItem.Style.plain, target: self, action: #selector(esc))
        
        navigationItem.searchController = nmSearchController
        
    }
    
    func startConstraint() {
        
        nmTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        nmTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        nmTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        nmTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
    
    
    
    @objc func tappedRight() {
        print(#function)
        present(UINavigationController(rootViewController: NewContactViewController()), animated: true, completion: nil)
        
    }
    
    @objc func esc() {
        navigationController?.popViewController(animated: true)
    }
    
    
    func startDataServer() {
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.offline.rawValue, imageStr: "launch7"))
        serverData.append(OnlineContacts(nameStr: "Sardorbek", isOnline: OnOf_line.online.rawValue, imageStr: "launch7"))
    }
}


extension OnlineContactViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serverData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = nmTableView.dequeueReusableCell(withIdentifier: "OnlineID", for: indexPath) as! ContactableViewCell
        cell.nmcontentLabel.textColor = UIColor.lightGray
        
        cell.nmNameLabel.text = serverData[indexPath.row].nameStr
        if let onof = serverData[indexPath.row].isOnline {
            
            if onof == OnOf_line.online.rawValue {
                cell.nmcontentLabel.textColor = UIColor.systemBlue
            }
            
            cell.nmcontentLabel.text = onof
        }else {
            cell.nmcontentLabel.text = serverData[indexPath.row].isOnline
        }
        
        if let imgStr = serverData[indexPath.row].imageStr {
            if imgStr != "" {
                cell.nmimageView.image = UIImage(named: imgStr)
            }else {
                cell.nmimageView.image = UIImage()
            }
        }else {
            cell.nmimageView.image = UIImage()
        }
        
        return cell
    }
    
    
}
