//
//  RootView.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct RootView: View {
    @Environment(\.mainNavigationStack) var navigationStack
    
    var body: some View {
        NavigationStackView(navigationStack: navigationStack){
            FirstModuleInitializer().createFirstModule()
        }
    }
}
