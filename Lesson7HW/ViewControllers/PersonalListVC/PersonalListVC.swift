//
//  PersonalListVC.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 20.07.2022.
//

import UIKit

//MARK: PersonalListVC

class PersonalListVC: UIViewController {

    //MARK: IBOutlets
    
    @IBOutlet weak var phoneInfoLabel: UILabel!
    @IBOutlet weak var mailInfoLabel: UILabel!
    
    //MARK: Properties
    
    var infoUser: Person!
    
    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        hideTabBar()
    }
}

//MARK: Extension

extension PersonalListVC {
    private func setupUI() {
        phoneInfoLabel.text = infoUser.contactPhone
        mailInfoLabel.text = infoUser.contactMail
    }
    
    func hideTabBar() {
        self.tabBarController?.tabBar.isHidden = true
    }
}
