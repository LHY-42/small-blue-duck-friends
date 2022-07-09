//
//  FriendDetailView.swift
//  small blue duck
//
//  Created by hy loh on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    
    @State var isSaved = false
    @Binding var friend: Friend
    
    var body: some View {
        Form {
            TextField("edit the name", text: $friend.name)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("edit the school", text: $friend.school)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                $friend.$isSaved = true
            } label: {
                Text("save")
                    .foregroundColor(.blue)
            }
        }

    }

}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: .constant(Friend(name: "sa", school: "dsd")))
    }
}
