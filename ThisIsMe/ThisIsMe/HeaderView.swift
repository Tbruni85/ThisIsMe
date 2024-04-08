//
//  HeaderView.swift
//  ThisIsMe
//
//  Created by Tiziano Bruni on 05/04/2024.
//

import SwiftUI

struct HeaderView: View {
    
    let profile = Bundle.main.decode(Profile.self, from: "profile.json")
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(profile.name)
                    .font(.system(size: 30, weight: .semibold))
                Text(profile.role)
                    .font(.system(size: 20))
            }
            
            Spacer()
            
            Image(profile.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .scaledToFit()
                .clipShape(Circle())
                
        }
    }
}

#Preview {
    HeaderView()
}
