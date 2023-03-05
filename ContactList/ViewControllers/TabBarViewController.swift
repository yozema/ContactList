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
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    
    private func setupViewControllers() {
        guard let contactsListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let sectionsVC = viewControllers?.last as? SectionPersonsListViewController else { return }
        
        let personsList = Person.getContactList()
        contactsListVC.personsList = personsList
        sectionsVC.sectionPersons = personsList
    }
}
