//
//  ThirdPresenter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI

class ThirdPresenter: ObservableObject {
 
    private let interactor: ThirdInteractor
    private let router: ThirdRouter

    init(interactor: ThirdInteractor, router: ThirdRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    //MARK: - Navigation
    
    func goToFourth(){
        router.pushFourth()
    }
    
    func returnToRoot(){
        router.popToRoot()
    }
}
