//
//  InfoPerson.swift
//  Contact List SwiftUI
//
//  Created by Александр on 02.11.2022.
//

import SwiftUI

struct InfoPerson: View {
    
    let persons: Person
    
    var body: some View {
        List {
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(Color.blue)
                .padding()
            
            HStack {
                Image(systemName: "phone.circle.fill")
                    .resizable()
                    .foregroundColor(Color.blue)
                    .frame(width: 30, height: 30)
                    .padding()
                Text(persons.phone)
                    .font(.title2)
            }
            HStack {
                Image(systemName: "envelope.circle.fill")
                    .resizable()
                    .foregroundColor(Color.blue)
                    .frame(width: 30, height: 30)
                    .padding()
                Text(persons.mail)
                    .font(.title2)
            }
        }
    }
}


struct InfoPerson_Previews: PreviewProvider {
    static var previews: some View {
        InfoPerson(persons: Person.getPersonRandom().first!)
    }
}
