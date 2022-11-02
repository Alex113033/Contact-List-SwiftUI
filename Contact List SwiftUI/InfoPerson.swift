//
//  InfoPerson.swift
//  Contact List SwiftUI
//
//  Created by Александр on 02.11.2022.
//

import SwiftUI

struct InfoPerson: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(Color.blue)
                .padding()
            ContactImage(text: person.phone, image: "phone.circle.fill")
            ContactImage(text: person.mail, image: "envelope.circle.fill")
            
        }
        .navigationTitle(person.fullName)
    }
}


struct InfoPerson_Previews: PreviewProvider {
    static var previews: some View {
        InfoPerson(person: Person.getPersonRandom().first!)
    }
}
