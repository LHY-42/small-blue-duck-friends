//
//  NewFriendView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct NewFriendView: View {
    
    @State var friendName = ""
    @Binding var friends: [Friend]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("enter friend name", text: $friendName)
            Button("save friend") {
                let friend = Friend(name: friendName, stats: friendStat, school: friendSchool, text: friendPhrase)
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
