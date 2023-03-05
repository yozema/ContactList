//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Ilya Zemskov on 01.03.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    
    private func setupViewControllers() {
        let personsList = Person.getContactList()

        let navigationFirstVC = viewControllers?.first as? UINavigationController
        guard let contactsListVC = navigationFirstVC?.topViewController as? PersonsListViewController else { return }
        contactsListVC.personsList = personsList
            
        let navigationSecondVC = viewControllers?.last as? UINavigationController
        guard let sectionsVC = navigationSecondVC?.topViewController as? SectionPersonsListViewController else { return }
        sectionsVC.sectionPersons = personsList
    }
}
