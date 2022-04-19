//
//  TabBarViewModuleInitializer.swift
//  viperExample
//
//  Created by Tribal on 4/03/22.
//

import SwiftUI
import NavigationStack

class TabBarViewModuleInitializer {
    func createTabBarViewModule(_ navigationStack: NavigationStack) -> TabBarViewView{
        let iteractor = TabBarViewInteractor()
        let router = TabBarViewRouter()
        let presenter = TabBarViewPresenter(interactor: iteractor, router: router)
        return TabBarViewView(presenter: presenter)
    }
}
