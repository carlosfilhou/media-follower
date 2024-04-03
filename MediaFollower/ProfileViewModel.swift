//
//  ProfielViewModel.swift
//  MediaFollower
//
//  Created by Carlos dos Santos Filho on 16/03/2024.
//

import Foundation

//MARK: - VIEWMODEL
struct ProfileViewModel {
    
    var isFollowing = false
    var userFollowers = String()
    
    //Uma variável que vai ser do tipo de dado modelado la em cima ---
    var user1 = User(picture: "profile",
                     name: "Carlos Augusto",
                     nick: "@carlosfilhou",
                     followers: 23643)
    
    init() {
        loadFollowers()
    }
    
    mutating func loadFollowers(){
        self.userFollowers = customizeNumber(value: user1.followers)
    }
    
    //Método que processa um valor numérico e retorna uma String --
    func customizeNumber(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "pt_BR")
        let shorten = formatter.string(for: value) ?? "0"
        return "\(shorten)K"
    }
    
    mutating func followToggle() {
        self.isFollowing.toggle()
        self.isFollowing ? (self.user1.followers += 1) : (self.user1.followers -= 1)
        loadFollowers()
    }
    
}
