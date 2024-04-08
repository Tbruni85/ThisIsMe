//
//  MenuItem.swift
//  ThisIsMe
//
//  Created by Tiziano Bruni on 05/04/2024.
//

import SwiftUI

struct MenuItem: View {
    
    let type: MenuType
    
    var body: some View {
        Label(type.rawValue, systemImage: type.image)
            .foregroundColor(.black)
    }
}

#Preview {
    MenuItem(type: .career)
}
