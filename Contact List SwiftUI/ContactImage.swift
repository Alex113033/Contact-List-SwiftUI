//
//  ContactImage.swift
//  Contact List SwiftUI
//
//  Created by Александр on 02.11.2022.
//

import SwiftUI

struct ContactImage: View {
    let text: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .resizable()
                .foregroundColor(Color.blue)
                .frame(width: 30, height: 30)
                .padding()
            Text(text)
                .font(.title2)
        }
    }
}

struct ContactImage_Previews: PreviewProvider {
    static var previews: some View {
        ContactImage(text: "Person", image: "envelope.circle.fill")
    }
}
