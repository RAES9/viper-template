//
//  EnvironmentValues+Extensions.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

private struct NavigationStackKey: EnvironmentKey {
  static let defaultValue = NavigationStack()
}

extension EnvironmentValues {
  var mainNavigationStack: NavigationStack {
    get { self[NavigationStackKey.self] }
    set { self[NavigationStackKey.self] = newValue }
  }
}
