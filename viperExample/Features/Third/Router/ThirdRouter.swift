//
//  ThirdRouter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct ThirdRouter {
    @Environment(\.mainNavigationStack) var navStack
    
    func pushFourth(){
        let fourthView = FourthModuleInitializer().createFourthModule()
        self.navStack.push(fourthView, withId: MainNavigationIdentifier.fourthView)
    }
    
    func popToRoot(){
        self.navStack.pop(to: .root)
    }
}
