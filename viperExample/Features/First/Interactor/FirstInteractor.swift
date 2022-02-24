//
//  FirstInteractor.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//
import Foundation

class FirstInteractor {
    @Published var firstViewModel : FirstViewModel = FirstViewModel()
    
    func updateString(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.firstViewModel.titleText = "XD"
            NotificationCenter.default.post(name: .firstPresenter.goToSecond, object: nil)
        }
    }
}
