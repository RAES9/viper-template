//
//  FourthView.swift
//  viperExample
//
//  Created by Tribal on 21/02/22.
//

import SwiftUI
import NavigationStack

struct FourthView: View {
    @StateObject var presenter: FourthPresenter
    var body: some View {
        VStack{
            Text("FourthView")
            Button(action: {
                presenter.returnToSecond()
            }, label: {
                Text("Pop to second")
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

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView(presenter: FourthPresenter(interactor: FourthInteractor(), router: FourthRouter()))
    }
}
