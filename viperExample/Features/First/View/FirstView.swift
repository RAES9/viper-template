//
//  FirstView.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct FirstView: View {
    @StateObject var presenter: FirstPresenter
    var body: some View {
        VStack{
            Text(presenter.firstViewModel.titleText)
                .onTapGesture {
                    presenter.updateString()
                }
            Button(action: {
                presenter.goToSecond()
            }, label: {
                Text("Go to second")
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBar(hideNavigationBar: true)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(presenter: FirstPresenter(interactor: FirstInteractor(), router: FirstRouter()))
    }
}
