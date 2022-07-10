//
//  LocationService.swift
//  charger_app
//
//  Created by Fulden Onan on 7.07.2022.
//

import UIKit
import CoreLocation
 
class LocationService: NSObject {
     
    private var locationManager: CLLocationManager!
    var locationDatas: ((CLLocationCoordinate2D) -> ())?
     
    override init() {
        super.init()
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
    }
     
    func verifyAndAskLocationPermission(completion: (Bool) -> ()) {
        
//        let authorizationStatus: CLAuthorizationStatus
//
//        if #available(iOS 14, *) {
//            authorizationStatus = locationManager.authorizationStatus
//        } else {
//            authorizationStatus = CLLocationManager.authorizationStatus()
//        }
//
//        switch authorizationStatus {
//        case .restricted, .denied:
//            ...
//        default:
//            ...
//        }
        
        switch locationManager.authorizationStatus {
        case .notDetermined:
            completion(false)
            getPermissionLocation()
        case .restricted:
            completion(false)
            getPermissionLocation()
        case .denied:
            completion(false)
            getPermissionLocation()
        case .authorizedAlways:
            completion(true)
            locationManager.startUpdatingLocation()
        case .authorizedWhenInUse:
            completion(true)
            locationManager.startUpdatingLocation()
        @unknown default:
            break
        }
    }
     
//    private func
//    locationAuthorizationStatus() -> CLAuthorizationStatus {
//        return CLLocationManager.authorizationStatus()
//    }
     
    private func getPermissionLocation() {
        locationManager.requestAlwaysAuthorization()
    }
}

//MARK: core location delegate

extension LocationService: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        locationDatas?(location.coordinate)
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        verifyAndAskLocationPermission { _ in }
    }
}
