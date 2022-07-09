//
//  CitySelectionInteractor.swift
//  charger_app
//
//  Created by Fulden Onan on 9.07.2022.
//  
//

import Foundation

class CitySelectionInteractor {

    // MARK: - Properties
    weak var output: CitySelection.InteractorToPresenter?
}

extension CitySelectionInteractor: CitySelectionInteractorProtocol {
    func fetchCityList() {
        let userId = UserDefaults.standard.integer(forKey: "userId")
        let token = UserDefaults.standard.string(forKey: "token")
        if let url = URL(string: "http://ec2-18-197-100-203.eu-central-1.compute.amazonaws.com:8080/provinces?userID=\(userId)") {
            var request = URLRequest(url: url)
            request.setValue(token, forHTTPHeaderField: "token")
            let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
                guard let data = data else { return }
                do {
                    if let jsonResponse = try? JSONSerialization.jsonObject(with: data, options: []),
                       let cityList = jsonResponse as? [String] {
                        DispatchQueue.main.async {
                            self?.output?.citiesFetched(cityList)
                        }
                    }
               }
           }
           task.resume()
        }
    }
}
