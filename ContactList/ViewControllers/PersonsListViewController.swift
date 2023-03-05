//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Ilya Zemskov on 01.03.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {

    var personsList: [Person] = []
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let personalDetailsVC = segue.destination as? PersonalDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personalDetailsVC?.person = personsList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsList[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
