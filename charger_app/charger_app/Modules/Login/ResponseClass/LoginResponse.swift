//
//  LoginResponse.swift
//  charger_app
//
//  Created by Fulden Onan on 5.07.2022.
//

import Foundation

struct LoginResponse: Codable {
    let email: String?
    let token: String?
    let userId: Int?

    enum CodingKeys: String, CodingKey {
        case email
        case token
        case userId = "userID"
    }
}
