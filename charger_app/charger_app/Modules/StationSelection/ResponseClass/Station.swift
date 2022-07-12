//
//  StationResponse.swift
//  charger_app
//
//  Created by Fulden Onan on 11.07.2022.
//

import Foundation
 
struct Station: Codable {
    let id: Int?
    let stationCode: String?
    let sockets: [Socket]?
    let socketCount: Int?
    let occupiedSocketCount: Int?
    let distanceInKM: Double?
    let geoLocation: Location?
    let services: [String]?
    var stationName: String?
}

struct Socket: Codable {
    let socketID: Int?
    let socketType: String?
    let chargeType: String?
    let power: Int?
    let powerUnit: String?
    let socketNumber: Int?
}

struct Location: Codable {
    let longitude: Double?
    let latitude: Double?
    let province: String?
    let address: String?
}
