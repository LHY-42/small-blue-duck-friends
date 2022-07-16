//
//  FriendDetailView.swift
//  small blue duck
//
//  Created by hy loh on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    
    @State var isSaved = false
    @Binding var friends: Friend
    
    var body: some View {
        Form {
            TextField("edit the name", text: $friends.name)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("edit the school", text: $friends.school)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("edit the school", text: $friends.attack)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("edit the school", text: $friends.defence)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button {
                friends.isSaved = true
            } label: {
                Text("save")
                    .foregroundColor(.blue)
            }
        }

    }

}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friends: .constant(Friend(name: "TEst", school: "yut", attack: 50, defence: 30, isSaved: true)))
    }
}
