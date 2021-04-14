//
//  ContentView.swift
//  signinUsing google
//
//  Created by Deep Sathwara on 2021-03-19.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
    var body: some View {
        google().frame(width: 120, height: 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct google : UIViewRepresentable {

    
    func makeUIView(context: UIViewRepresentableContext<google>) -> GIDSignInButton{
        let button = GIDSignInButton()
        button.colorScheme = .dark
        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
        return button
    }
    
    func updateUIView(_ uiView: GIDSignInButton, context: UIViewRepresentableContext<google>) {
        
    }
}

