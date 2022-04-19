//
//  TabBarViewPresenter.swift
//  viperExample
//
//  Created by Tribal on 4/03/22.
//

import SwiftUI
import Combine

class TabBarViewPresenter: ObservableObject {
 
    private let interactor: TabBarViewInteractor
    private let router: TabBarViewRouter
    private var cancellables = Set<AnyCancellable>()
    @Published var viewModel: TabBarViewViewModel = TabBarViewViewModel()

    init(interactor: TabBarViewInteractor, router: TabBarViewRouter) {
        self.interactor = interactor
        self.router = router
        interactor.$viewModel
            .assign(to: \.viewModel, on: self)
            .store(in: &cancellables)
    }
}
