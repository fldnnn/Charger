//
//  StationFilterPresenter.swift
//  charger_app
//
//  Created by Fulden Onan on 12.07.2022.
//  
//

import Foundation

protocol StationFilterDelegate: AnyObject {
    func onFilterChanged(with filterItems: FilterSettings)
}

class StationFilterPresenter {

    // MARK: - Properties
    weak var view: StationFilter.View?
    var router: StationFilter.Router!
    var interactor: StationFilter.Interactor!
    weak var delegate: StationFilterDelegate?
    private var filterSettings = FilterSettings()
}

extension StationFilterPresenter: StationFilterPresenterProtocol {
    
    func setChargeType(to chargeType: ChargeType?) {
        if let chargeType = chargeType {
            filterSettings.chargeType?.append(chargeType)
        }
//        filterSettings.chargeType = chargeType
    }
    
    func removeChargeType(of chargeType: ChargeType) {
        if let index = filterSettings.chargeType?.firstIndex(of: chargeType) {
            filterSettings.chargeType?.remove(at: index)
        }
    }
    
    func setSocketType(to socketType: SocketType?) {
        if let socketType = socketType {
            filterSettings.socketTpye?.append(socketType)
        }
    }
    
    func removeSocketType(of socketType: SocketType) {
        if let index = filterSettings.socketTpye?.firstIndex(of: socketType) {
            filterSettings.socketTpye?.remove(at: index)
        }
    }
    
    func setServiceType(to serviceType: ServiceType?) {
        if let serviceType = serviceType {
            filterSettings.serviceType?.append(serviceType)
        }
    }
    
    func removeServiceType(of serviceType: ServiceType) {
        if let index = filterSettings.serviceType?.firstIndex(of: serviceType) {
            filterSettings.serviceType?.remove(at: index)
        }
    }
    
    func onFilterButtonPressed() {
        delegate?.onFilterChanged(with: filterSettings)
        router?.goBack()
    }
}

extension StationFilterPresenter: StationFilterInteractorToPresenterProtocol {
    // TODO: implement interactor output methods
}
