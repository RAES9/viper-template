//
//  FirstPresenter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import Combine

class FirstPresenter: ObservableObject {
 
    private let interactor: FirstInteractor
    private let router: FirstRouter
    private var cancellables = Set<AnyCancellable>()
    
    @Published var firstViewModel : FirstViewModel = FirstViewModel()

    init(interactor: FirstInteractor, router: FirstRouter) {
        self.interactor = interactor
        self.router = router
        interactor.$firstViewModel
            .assign(to: \.firstViewModel, on: self)
            .store(in: &cancellables)
    }
    
    //MARK: - Navigation
    
    func goToSecond(){
        router.pushSecond()
    }
    
    //MARK: - Interaction
    
    func updateString(){
        interactor.updateString()
    }
}
