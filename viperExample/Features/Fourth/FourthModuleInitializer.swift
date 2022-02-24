//
//  FourthModuleInitializer.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

class FourthModuleInitializer {
    func createFourthModule() -> FourthView{
        let iteractor = FourthInteractor()
        let router = FourthRouter()
        let presenter = FourthPresenter(interactor: iteractor, router: router)
        return FourthView(presenter: presenter)
    }
}
