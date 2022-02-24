//
//  SecondView.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct SecondView: View {
    @StateObject var presenter: SecondPresenter
    var body: some View {
        VStack{
            Text("SecondView")
            Button(action: {
                presenter.goToThird()
            }, label: {
                Text("Go to third")
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBar()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(presenter: SecondPresenter(interactor: SecondInteractor(), router: SecondRouter()))
    }
}
