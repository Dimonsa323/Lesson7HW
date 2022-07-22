//
//  ViewController.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 20.07.2022.
//

import UIKit

class PlayListVC: UIViewController {

    //MARK: IBOutlets
    
    @IBOutlet weak var personTableView: UITableView!
    
    //MARK: Properties
    
    let person: [Person] = Person.contactUser()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

//MARK: Private extension

private extension PlayListVC {
    func setupUI() {
        setupTableView()
    }
  func setupTableView() {
      personTableView.delegate = self
      personTableView.dataSource = self
      
      let nib = UINib(nibName: String(describing: PlayListCell.self), bundle: nil)
      personTableView.register(nib, forCellReuseIdentifier: String(describing: PlayListCell.self))
    }
    
    func showDatailUserInfo(person: Person) {
        let vc = PersonalListVC()
        vc.infoUser = person
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: UITableViewDelegate

extension PlayListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = person[indexPath.row]
        showDatailUserInfo(person: person)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlayListCell.self),
                                                 for: indexPath) as! PlayListCell
        let user = person[indexPath.row]
        
        cell.config(with: user)
        
        return cell
    
    }
}
