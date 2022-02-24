//
//  FourthRouter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct FourthRouter {
    @Environment(\.mainNavigationStack) var navStack
    
    func popToRoot(){
        self.navStack.pop(to: .root)
    }
    
    func popToSecond(){
        self.navStack.pop(to: .view(withId: MainNavigationIdentifier.secondView))
    }
}
