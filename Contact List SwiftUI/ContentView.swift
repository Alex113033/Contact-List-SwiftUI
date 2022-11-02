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
            FirstInfoTab(persons: contacts)
                .tabItem {
                    Image(systemName: "note")
                }
            
            TwoInfoTab(persons: contacts)
                .tabItem {
                    Image(systemName: "note")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
