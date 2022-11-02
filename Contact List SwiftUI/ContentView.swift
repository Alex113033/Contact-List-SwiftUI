//
//  ContentView.swift
//  Contact List SwiftUI
//
//  Created by Александр on 02.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getPersonRandom()
    
    var body: some View {
        TabView{
            FirstInfoTab(person: contacts)
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                }
            
            TwoInfoTab(person: contacts)
                .tabItem {
                    Image(systemName: "note.text")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
