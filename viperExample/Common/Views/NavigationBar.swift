//
//  NavigationBar.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI

struct NavigationBar: ViewModifier {
    @Environment(\.mainNavigationStack) var navigationStack
    var hideNavigationBar: Bool = false
    
    func body(content: Content) -> some View {
        VStack{
            if !hideNavigationBar {
                HStack{
                    Button(action: {
                        navigationStack.pop()
                    }, label: {
                        Text("Back")
                    })
                        .padding()
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
            }
            content
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}
