//
//  ContactViewController.swift
//  PlusTestCode
//
//  Created by Macservis on 30/03/22.
//

import UIKit

class ContactViewController: UIViewController {

    var serverData: [Contact] = []
    
    
    let nmTableView: UITableView = {
        let tableView                                       = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight                                 = 80
        tableView.backgroundColor                           = UIColor(white: 0.2, alpha: 1)
        tableView.register(ContactableViewCell.self, forCellReuseIdentifier: "contactID")
        return tableView
    }()
    
    
    let nmSearchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Qidiruv"
        searchController.searchBar.searchTextField.backgroundColor = UIColor(white: 0.1, alpha: 1)
        searchController.searchBar.setMagnifiyngColorTo(color: .white)
        return searchController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      startFunction()
    }
    

}


extension ContactViewController: UITableViewDataSource, UITableViewDelegate {
 
    
    
    
    func startFunction() {
        self.view.backgroundColor = UIColor(white: 0.1, alpha: 1)
        
        self.view.addSubview(nmTableView)
        
        nmTableView.delegate = self
        nmTableView.dataSource = self
        
        startDataServer()
        startNavigation()
        startConstraints()
    }
    
    
    func startDataServer() {
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: ""))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: nil))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "lunch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
        serverData.append(Contact(nameStr: "Samandar", dataStr: "12/12/12", imageStr: "launch8"))
    }
    
    
    
    
    func startNavigation() {
        
        title = "Yangi xabar"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Bekor qilish", style: UIBarButtonItem.Style.plain, target: self, action: #selector(leftTapped))
        
        navigationItem.searchController = nmSearchController
    }
    
    func startConstraints() {
        
        nmTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive     = true
        nmTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive       = true
        nmTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive   = true
        nmTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
    
    @objc func leftTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serverData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = serverData[indexPath.row]
        let cell = nmTableView.dequeueReusableCell(withIdentifier: "contactID") as! ContactableViewCell
        
        cell.nmNameLabel.text = item.nameStr
        cell.nmcontentLabel.text = item.dataStr
        if let imgstr = item.imageStr {
            if imgstr != "" {
                cell.nmimageView.image = UIImage(named: imgstr)
            }else {
                cell.nmimageView.image = UIImage()
            }
        }else {
            cell.nmimageView.image = UIImage()
        }
        
        return cell
    }
}


