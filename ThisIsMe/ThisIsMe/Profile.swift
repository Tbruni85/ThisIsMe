//
//  Profile.swift
//  ThisIsMe
//
//  Created by Tiziano Bruni on 05/04/2024.
//

import Foundation

struct Profile: Codable {
    
    let name: String
    let role: String
    let image: String
    let address: String
    let mobile: String
    let email: String
    let skype: String
    let professional_profile: String
    let key_skills: [String]
}

enum MenuType: String {
    case contacts
    case skills
    case career
    
    var image: String {
        switch self {
        case .contacts:
            "person.crop.circle"
        case .skills:
            "dot.scope.laptopcomputer"
        case .career:
            "list.bullet.indent"
        }
    }
}
