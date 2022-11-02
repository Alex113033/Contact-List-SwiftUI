//
//  FirstInfoTab.swift
//  Contact List SwiftUI
//
//  Created by Александр on 02.11.2022.
//

import SwiftUI

struct FirstInfoTab: View {
    let person: [Person]
    
    var body: some View {
        NavigationView {
            List(person) { person in
                NavigationLink(
                    person.fullName,
                    destination: InfoPerson(person: person)
                )
            }
            .listStyle(.grouped)
            .navigationTitle("Contact list")
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstInfoTab(person: Person.getPersonRandom())
    }
}
