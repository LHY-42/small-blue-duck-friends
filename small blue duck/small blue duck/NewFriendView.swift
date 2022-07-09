//
//  NewFriendView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct NewFriendView: View {
    
    @State var friendName = ""
    @State var friendSchool = ""
    @State var friendAttack = 0.0
    @State var friendDefence = 0.0
    @Binding var friends: [Friend]
    
    @State private var isEditing = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("enter name", text: $friendName)
            TextField("enter school", text: $friendSchool)
            Slider(
                value: $friendAttack,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(friendAttack)")
                .foregroundColor(isEditing ? .red : .blue)
            
            Slider(
                value: $friendDefence,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(friendDefence)")
                .foregroundColor(isEditing ? .red : .blue)
            
            Button("save friend") {
                let friend = Friend(name: friendName, school: friendSchool, attack: friendAttack, defence: friendDefence)
                friends.append(friend)
                dismiss()
            }
        }
    }
}

struct NewFriendView_Previews: PreviewProvider {
    static var previews: some View {
        NewFriendView(friends: .constant([]))
    }
}
