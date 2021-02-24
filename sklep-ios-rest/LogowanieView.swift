//
//  LogowanieView.swift
//  sklep-ios-rest
//
//  Created by Mike Crow on 24/02/2021.
//

import SwiftUI



struct LogowanieView: View {
    @State var login: String = ""
    @State var haslo: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Login:")
                .font(.callout)
                .bold()
            TextField("login...", text: $login)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Haslo:")
                .font(.callout)
                .bold()
            SecureField("haslo...", text: $haslo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button {
                print("loguje")
            } label: {
                Text("Zaloguj")
            }
            
            
        }.padding()
    }
}

struct LogowanieView_Previews: PreviewProvider {
    static var previews: some View {
        LogowanieView()
    }
}
