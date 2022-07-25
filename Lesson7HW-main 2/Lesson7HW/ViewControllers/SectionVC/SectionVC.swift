//
//  SectionVC.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 24.07.2022.
//

import UIKit

    //MARK: SectionVC

class SectionVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var person: [Person] = []
    
    //Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

//MARK: Private Extension

private extension SectionVC {
    func setupUI() {
        
    }
    
    func setupNavigationController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Persons List"
        
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: String(describing: SectionCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: SectionCell.self))
   
    }
    
    func configDataCell(indexPath: IndexPath) -> (userInfo: String, state: Contacts) {
        let person: Person = person[indexPath.section]
        let isFirstCell: Bool = indexPath.row == 0
        let state: Contacts = isFirstCell ? .phone : .email
        let userInfo = isFirstCell ? person.contactPhone : person.contactMail
        
        return (userInfo, state)
    }
}

extension SectionVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionCell.self),
                                                 for: indexPath) as! SectionCell
        let cellData = configDataCell(indexPath: indexPath)
        
        cell.config(userInfo: cellData.userInfo, state: cellData.state)
        
        return cell
    }
}
