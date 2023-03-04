//
//  PersonalDetalsViewController.swift
//  ContactList
//
//  Created by Ilya Zemskov on 02.03.2023.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneNumberLabel.text = ("Phone: \(person.contactDetail.phoneNumber)")
        emailLabel.text = ("Email: \(person.contactDetail.email)")
    }
    
    
}
