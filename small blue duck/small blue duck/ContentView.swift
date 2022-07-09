//
//  ContentView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    var Friend = [
        Friend(name: "Yuhan", attack: 10000000.0, defence: 100000.0, school: "MGS")
    ]
    var body: some View {
            NavigationView {
                List(Friends) { friend in
                    NavigationLink(destination: FriendDetailView(friend: friend)) {
                        HStack {
                            Image(systemName: friend.icon)
                            VStack(alignment: .leading) {
                                Text(friend.name)
                                    .bold()
                                Text(friend.school)
                            }
                        }
                    }
                }
                .navigationTitle("Friends")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
