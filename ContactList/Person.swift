//
//  PersonalDetails.swift
//  ContactList
//
//  Created by Ilya Zemskov on 02.03.2023.
//

struct Person {
    var name: String
    var surname: String
    var contactDetail: Contact
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let contactDetails = Contact.getContact().shuffled()
        
        
        for person in 0..<names.count {
            let details = Person(
                name: names[person],
                surname: surnames[person],
                contactDetail: contactDetails[person]
            )
            persons.append(details)
        }
        return persons
    }
}

struct Contact {
    var phoneNumber: String
    var email: String
    
    static func getContact() -> [Contact] {
        var contacts: [Contact] = []
        
        let phoneNumbers = DataStore.phoneNumbers.shuffled()
        let emails = DataStore.emails.shuffled()
        
        for contact in 0..<phoneNumbers.count {
            let details = Contact(
                phoneNumber: phoneNumbers[contact],
                email: emails[contact]
            )
            contacts.append(details)
        }
        return contacts
    }
}
