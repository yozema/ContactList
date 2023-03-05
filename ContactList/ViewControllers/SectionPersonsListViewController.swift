//
//  SectinoPersonsListViewController.swift
//  ContactList
//
//  Created by Ilya Zemskov on 01.03.2023.
//

import UIKit

final class SectionPersonsListViewController: UITableViewController {

    var sectionPersons: [Person] = []

// MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        sectionPersons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionPersons[section].fullName
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "credentials", for: indexPath)
        let person = sectionPersons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
