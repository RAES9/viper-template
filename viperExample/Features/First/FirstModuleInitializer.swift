//
//  FirstModuleInitializer.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

class FirstModuleInitializer {
    func createFirstModule() -> FirstView {
        let router = FirstRouter()
        let iteractor = FirstInteractor()
        let presenter = FirstPresenter(interactor: iteractor, router: router)
        return FirstView(presenter: presenter)
    }
}
