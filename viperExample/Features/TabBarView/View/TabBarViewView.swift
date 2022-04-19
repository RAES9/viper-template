//
//  TabBarViewView.swift
//  viperExample
//
//  Created by Tribal on 4/03/22.
//

import SwiftUI
import NavigationStack

struct TabBarViewView: View {
    @StateObject var presenter: TabBarViewPresenter
    var body: some View {
        Text("TabBarViewView")
    }
}

struct TabBarViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewView(presenter: TabBarViewPresenter(interactor: TabBarViewInteractor(), router: TabBarViewRouter()))
    }
}
