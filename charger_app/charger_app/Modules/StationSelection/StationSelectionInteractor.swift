//
//  StationSelectionInteractor.swift
//  charger_app
//
//  Created by Fulden Onan on 10.07.2022.
//  
//

import Foundation

class StationSelectionInteractor {

    // MARK: - Properties
    weak var output: StationSelection.InteractorToPresenter?

}

extension StationSelectionInteractor: StationSelectionInteractorProtocol {
    func fetchStationList() {
        let userId = UserDefaults.standard.integer(forKey: "userId")
        let token = UserDefaults.standard.string(forKey: "token")
        let lat = UserDefaults.standard.double(forKey: "latitude")
        let lon = UserDefaults.standard.double(forKey: "longitude")
        
        if var urlComponents = URLComponents(string: "http://ec2-18-197-100-203.eu-central-1.compute.amazonaws.com:8080/stations") {
            urlComponents.queryItems = [URLQueryItem(name: "userID", value: "\(userId)"),
                              URLQueryItem(name: "userLatitude", value: "\(lat)"),
                              URLQueryItem(name: "userLongitude", value: "\(lon)")]
            if let url = urlComponents.url {
                var request = URLRequest(url: url)
                request.setValue(token, forHTTPHeaderField: "token")
                let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
                    guard let data = data else { return }
                    do {
                        let stationResponse = try JSONDecoder().decode([Station].self, from: data)
                        DispatchQueue.main.async {
                            self?.output?.stationsFetched(stationResponse)
                        }
                    } catch let error {
                        print(error.localizedDescription)
                    }
               }
               task.resume()
            }
        }
    }
}
