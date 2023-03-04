//
//  SectinoPersonsListViewController.swift
//  ContactList
//
//  Created by Ilya Zemskov on 01.03.2023.
//

import UIKit

class SectionPersonsListViewController: UITableViewController {

    let sectionPersons = Person.getPerson()

// MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        sectionPersons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionPersons[section].fullName
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "credentials", for: indexPath)
        let person = sectionPersons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: "mail")
        }
        
        return cell
    }
}
