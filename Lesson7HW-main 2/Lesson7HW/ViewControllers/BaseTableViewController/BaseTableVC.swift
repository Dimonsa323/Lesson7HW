//
//  BaseTableVC.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 25.07.2022.
//

import UIKit

class BaseTableVC: UITabBarController {

    let person = Person.contactUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: person)

             }
    
    private func setupViewControllers(with person: [Person]) {
        let contactNavVC = viewControllers?.first as! UINavigationController
        let contactVC = contactNavVC.topViewController as! PlayListVC
        contactVC.person = person
        
        let sectionContactNavVC = viewControllers?.last as! UINavigationController
        let sectionContactVC = sectionContactNavVC.topViewController as! SectionVC
        sectionContactVC.person = person
    }
}
