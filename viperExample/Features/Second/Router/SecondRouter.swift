//
//  SecondRouter.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct SecondRouter {
    @Environment(\.mainNavigationStack) var navStack
    
    func pushThird(){
        let thirdView = ThirdModuleInitializer().createThirdModule()
        self.navStack.push(thirdView, withId: "thirdView")
    }
}
