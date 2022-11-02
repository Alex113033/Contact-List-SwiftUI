//
//  Person.swift
//  Contacts HW2.7 Gnilitskiy
//
//  Created by Александр on 30.04.2022.
//

import Foundation

struct Person: Identifiable {
    let name: String
    let surname: String
    let mail: String
    let phone: String
    let id = UUID()
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonRandom() -> [Person] {

        var persons: [Person] = []

        let namesRandom = DataManager.dataPerson.names.shuffled()
        let surnamesRandom = DataManager.dataPerson.surnames.shuffled()
        let mailsRandom = DataManager.dataPerson.mails.shuffled()
        let phonesRandom = DataManager.dataPerson.phones.shuffled()

        for index in 1..<namesRandom.count {
            let personAppend = Person(
                name: namesRandom[index],
                surname: surnamesRandom[index],
                mail: mailsRandom[index],
                phone: phonesRandom[index])
            persons.append(personAppend)
        }
        return persons
    }
}


