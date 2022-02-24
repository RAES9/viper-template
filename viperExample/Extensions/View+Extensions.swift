//
//  View+Extensions.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

extension View {
    func captionNavigationStack(_ navStack: NavigationStack) -> some View {
        environment(\.mainNavigationStack, navStack)
    }
    
    func navigationBar(hideNavigationBar: Bool = false) -> some View {
        modifier(NavigationBar(hideNavigationBar: hideNavigationBar))
    }
}

