//
//  TwoInfoTab.swift
//  Contact List SwiftUI
//
//  Created by Александр on 02.11.2022.
//

import SwiftUI

struct TwoInfoTab: View {
    
    let persons: [Person]

    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationView {
            List(persons, selection: $singleSelection) { person in
                    Section(header: Text("\(person.fullName)")) {
                            Text("\(person.phone)")
                            Text("\(person.mail)")
                        }
            }.navigationTitle("Contact list")
        }
    }
}


struct TwoInfoTab_Previews: PreviewProvider {
    static var previews: some View {
        TwoInfoTab(persons: Person.getPersonRandom())
    }
}
