//
//  ContactsView.swift
//  ThisIsMe
//
//  Created by Tiziano Bruni on 05/04/2024.
//

import SwiftUI

struct ContactsView: View {
    
    let profile = Bundle.main.decode(Profile.self, from: "profile.json")
    
    var body: some View {
        
        Image(profile.image)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(.gray, lineWidth: 2))
        Spacer()
        VStack(alignment: .leading) {
            Text("\(attributedTextForTitle("Address"))\n\(profile.address)")
                .font(.system(size: 24))
                .padding(.bottom)
            Text("\(attributedTextForTitle("Mobile")) \(profile.mobile)")
                .font(.system(size: 24))
                .padding(.bottom)
            Text("\(attributedTextForTitle("Email")) \(profile.email)")
                .font(.system(size: 24))
                .padding(.bottom)
            Text("\(attributedTextForTitle("Skype")) \(profile.skype)")
                .font(.system(size: 24))
            Spacer()
        }
        .padding()
        .navigationTitle("Contacts")
    }
    
    private func attributedTextForTitle(_ title: String) -> AttributedString {
        var result = AttributedString("\(title):")
        result.font = .boldSystemFont(ofSize: 24)
        return result
    }
}

#Preview {
    ContactsView()
}
