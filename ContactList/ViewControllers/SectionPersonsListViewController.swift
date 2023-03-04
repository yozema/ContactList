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
        let header = sectionPersons.map { $0.fullName}
        return header[section]
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "credentials", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = sectionPersons[indexPath.section]
        content.text = person.contactDetail.phoneNumber
        cell.contentConfiguration = content
        
        return cell
    }
}
