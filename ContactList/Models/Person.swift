//
//  PersonalDetails.swift
//  ContactList
//
//  Created by Ilya Zemskov on 02.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.data.names.shuffled()
        let surnames = DataStore.data.surnames.shuffled()
        let phoneNumbers = DataStore.data.phoneNumbers.shuffled()
        let emails = DataStore.data.emails.shuffled()
        
        let iteractionCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for person in 0..<iteractionCount {
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
