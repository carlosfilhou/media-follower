//
//  ContentView.swift
//  MediaFollower
//
//  Created by Carlos dos Santos Filho on 12/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            //Perfil ---
            Image("profile")
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            
            Text("Carlos Augusto")
                .font(.system(size: 45, weight: .bold))
            
            Text("@carlosfilhou")
                .font(.system(size: 23, weight: .regular))
                .foregroundColor(.gray)
            
            Text("23.643K")
                .font(.system(size: 80, weight: .light))
                .padding(40)
            
            
        }
    }
}

#Preview {
    ContentView()
}
