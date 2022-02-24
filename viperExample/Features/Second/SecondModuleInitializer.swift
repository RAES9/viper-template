//
//  SecondModuleInitializer.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

class SecondModuleInitializer {
    func createSecondModule() -> SecondView {
        let iteractor = SecondInteractor()
        let router = SecondRouter()
        let presenter = SecondPresenter(interactor: iteractor, router: router)
        return SecondView(presenter: presenter)
    }
}
