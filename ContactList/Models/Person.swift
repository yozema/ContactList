//
//  PersonalDetails.swift
//  ContactList
//
//  Created by Ilya Zemskov on 02.03.2023.
//

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let phoneNumbers = DataStore.phoneNumbers.shuffled()
        let emails = DataStore.emails.shuffled()
        
        
        for person in 0..<names.count {
            let details = Person(
                name: names[person],
                surname: surnames[person],
                phoneNumber: phoneNumbers[person],
                email: emails[person]
            )
            persons.append(details)
        }
        return persons
    }
}
