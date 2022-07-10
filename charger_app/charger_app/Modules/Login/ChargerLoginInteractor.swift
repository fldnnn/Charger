//
//  ChargerLoginInteractor.swift
//  charger_app
//
//  Created by Fulden Onan on 4.07.2022.
//

import Foundation
import CoreLocation
 
class LoginInteractor: Login.Interactor {

    weak var output: Login.InteractorToPresenter?
    let locationService = LocationService()
    private var location: CLLocationCoordinate2D?
    
    func postRequest(UserDict: [String : Any]) {
          
          // declare the parameter as a dictionary that contains string as key and value combination. considering inputs are valid
          
          // create the url with URL
          let url = URL(string: "http://ec2-18-197-100-203.eu-central-1.compute.amazonaws.com:8080/auth/login")! // change server url accordingly
          
          // create the session object
          let session = URLSession.shared
          
          // now create the URLRequest object using the url object
          var request = URLRequest(url: url)
          request.httpMethod = "POST" //set http method as POST
          
          // add headers for the request
          request.addValue("application/json", forHTTPHeaderField: "Content-Type") // change as per server requirements
          request.addValue("application/json", forHTTPHeaderField: "Accept")
          
          do {
            // convert parameters to Data and assign dictionary to httpBody of request
            request.httpBody = try JSONSerialization.data(withJSONObject: UserDict, options: [.prettyPrinted])
          } catch let error {
            print(error.localizedDescription)
            return
          }
          
          // create dataTask using the session object to send data to the server
          let task = session.dataTask(with: request) { data, response, error in
            
            if let error = error {
              print("Post Request Error: \(error.localizedDescription)")
              return
            }
            
            // ensure there is valid response code returned from this HTTP response
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode)
            else {
              print("Invalid Response received from the server")
              return
            }
            
            // ensure there is data returned
            guard let responseData = data else {
              print("nil Data received from the server")
              return
            }
            
            do {
              // create json object from data or use JSONDecoder to convert to Model stuct
                let jsonResponse = try JSONDecoder().decode(LoginResponse.self, from: responseData)
                print(jsonResponse)

                DispatchQueue.main.async {
                    self.output?.userLoggedIn(with: jsonResponse.userId ?? 0)
                    
                    // keychain e eklenecek
                    UserDefaults.standard.set(jsonResponse.token, forKey: "token")
                    UserDefaults.standard.set(jsonResponse.userId, forKey: "userId")
                    UserDefaults.standard.set(jsonResponse.email, forKey: "email")
                }
            } catch let error {
              print(error.localizedDescription)
            }
          }
          // perform the task
          task.resume()
        }
     
    func verifyLocationPermission() {
        locationService.verifyAndAskLocationPermission { [weak self] result in
            if result {
                self?.getUserLocation()
            }
        }
    }
     
    func getUserLocation() {
        locationService.locationDatas = { [weak self]
            location in self?.location = location

            UserDefaults.standard.set(location.latitude, forKey: "latitude")
            UserDefaults.standard.set(location.longitude, forKey: "longitude")
             
            UserDefaults.standard.set("nil", forKey: "nil")
        }
    }
}
