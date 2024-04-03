//
//  ContentView.swift
//  MediaFollower
//
//  Created by Carlos dos Santos Filho on 12/02/2024.
//

import SwiftUI

//MARK: - VIEW
struct ProfileView: View {
    @State var viewModel = ProfileViewModel()
    
    
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
            
            Text(viewModel.userFollowers)
                .font(.system(size: 80, weight: .light))
                .padding(viewModel.isFollowing ? 30 : 25)
            
            VStack {
                
                //Seguir ---
                Button{ viewModel.followToggle() } label: {
                    Label(!viewModel.isFollowing ? "follow" : "unfollow", systemImage: "person.crop.circle.fill.badge.plus")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .accentColor(.indigo)
                .tint(!viewModel.isFollowing ? .indigo : .black)
                
                //Enviar Mensagem ---
                Button{} label: {
                    Label("enviar mensagem", systemImage: "paperplane.fill")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .accentColor(.indigo)
                .disabled(!viewModel.isFollowing)
            }
            .padding(20)
        }
        .animation(.easeInOut, value: viewModel.isFollowing)
    }
}

#Preview {
    ProfileView()
}
