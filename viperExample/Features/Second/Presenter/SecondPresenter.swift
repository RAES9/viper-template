//
//  SecondPresenter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI

class SecondPresenter: ObservableObject {
 
    private let interactor: SecondInteractor
    private let router: SecondRouter

    init(interactor: SecondInteractor, router: SecondRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    //MARK: - Navigation
    
    func goToThird(){
        router.pushThird()
    }
}
