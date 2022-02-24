//
//  ThirdView.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct ThirdView: View {
    @StateObject var presenter: ThirdPresenter
    var body: some View {
        VStack{
            Text("ThirdView")
            Button(action: {
                presenter.goToFourth()
            }, label: {
                Text("Go to fourth")
            })
            Button(action: {
                presenter.returnToRoot()
            }, label: {
                Text("Pop to root")
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBar()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(presenter: ThirdPresenter(interactor: ThirdInteractor(), router: ThirdRouter()))
    }
}
