//
//  ThirdModuleInitializer.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

class ThirdModuleInitializer {
    func createThirdModule() -> ThirdView{
        let iteractor = ThirdInteractor()
        let router = ThirdRouter()
        let presenter = ThirdPresenter(interactor: iteractor, router: router)
        return ThirdView(presenter: presenter)
    }
}
