//
//  StationDetail.swift
//  charger_app
//
//  Created by Fulden Onan on 11.07.2022.
//

import Foundation

struct StationDetail: Codable {
    let stationID: Int?
    let stationCode: String?
    let sockets: [Sockets]?
    let geoLocation: GeoLocation?
    let services: [String]?
    let stationName: String?
}

struct Sockets: Codable {
    let socketID: Int?
    let day: Day?
    let socketType: String?
    let chargeType: String?
    let power: Int?
    let socketNumber: Int?
    let powerUnit: String?
}

struct Day: Codable {
    let id: Int?
    let date: String?
    let timeSlots: [TimeSlot]?
}

struct TimeSlot: Codable {
    let slot: String?
    let isOccupied: Bool?
}

struct GeoLocation: Codable {
    let longitude: Double?
    let latitude: Double?
    let province: String?
    let address: String?
}
