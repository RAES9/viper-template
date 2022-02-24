//
//  FourthPresenter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI

class FourthPresenter: ObservableObject {
 
    private let interactor: FourthInteractor
    private let router: FourthRouter

    init(interactor: FourthInteractor, router: FourthRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    //MARK: - Navigation
    
    func returnToSecond(){
        router.popToSecond()
    }
    
    func returnToRoot(){
        router.popToRoot()
    }
}
