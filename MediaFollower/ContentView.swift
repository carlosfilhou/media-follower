//
//  ContentView.swift
//  MediaFollower
//
//  Created by Carlos dos Santos Filho on 12/02/2024.
//

import SwiftUI

//MARK: - MODEL

//Modelando um tipo usuário e as propriedades desse novo tipo serão os dados ---
struct User {
    var picture: String
    var name: String
    var nick: String
    var followers: Double
}


//MARK: - VIEWMODEL
struct ProfileViewModel {
    
    //Uma propriedade usuário1 que vai ser do tipo de dado modelado la em cima ---
    var user1 = User(picture: "profile",
                     name: "Carlos Augusto",
                     nick: "@carlosfilhou",
                     followers: 23643)
}


//MARK: - VIEW
struct ProfileView: View {
    var viewModel = ProfileViewModel()
    
    var body: some View {
        
        VStack {
            
            //Perfil ---
            Image(viewModel.user1.picture)
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            
            Text(viewModel.user1.name)
                .font(.system(size: 45, weight: .bold))
            
            Text(viewModel.user1.nick)
                .font(.system(size : 23, weight: .regular))
                .foregroundColor(.gray)
            
            Text("\(viewModel.user1.followers)")
                .font(.system(size: 80, weight: .light))
                .padding(40)
            
            VStack {
                
                //Seguir ---
                Button{} label: {
                    Label("follow", systemImage: "person.crop.circle.fill.badge.plus")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .accentColor(.indigo)
                
                //Enviar Mensagem ---
                Button{} label: {
                    Label("enviar mensagem", systemImage: "paperplane.fill")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(true)
            }
            .padding(20)
        }
    }
}

#Preview {
    ProfileView()
}
