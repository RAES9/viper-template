//
//  FirstRouter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct FirstRouter {
    @Environment(\.mainNavigationStack) var navStack
    
    func pushSecond(){
        let secondView = SecondModuleInitializer().createSecondModule()
        self.navStack.push(secondView, withId: MainNavigationIdentifier.secondView)
    }
}
