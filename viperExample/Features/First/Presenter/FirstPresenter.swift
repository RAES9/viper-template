//
//  FirstPresenter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import Combine
import Foundation

class FirstPresenter: ObservableObject {
 
    private let interactor: FirstInteractor
    private let router: FirstRouter
    private var cancellables = Set<AnyCancellable>()
    
    @Published var firstViewModel : FirstViewModel = FirstViewModel()

    init(interactor: FirstInteractor, router: FirstRouter) {
        self.interactor = interactor
        self.router = router
        
        // Assing interactor view model value
        interactor.$firstViewModel
            .assign(to: \.firstViewModel, on: self)
            .store(in: &cancellables)
        
        // Notifications
        NotificationCenter.default.addObserver(self, selector: #selector(self.goToSecondWithDispatch(notification:)), name: .firstPresenter.goToSecond, object: nil)
    }
    
    //MARK: - Navigation
    
    func goToSecond(){
        router.pushSecond()
    }
    
    //MARK: - Interaction
    
    func updateString(){
        interactor.updateString()
    }
    
    //MARK: - Notifications
    
    @objc private func goToSecondWithDispatch(notification: Notification) {
        goToSecond()
    }
}
