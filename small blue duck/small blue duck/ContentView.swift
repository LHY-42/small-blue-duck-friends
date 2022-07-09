//
//  ContentView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var Friend = FriendManager()
    
    var body: some View {
            NavigationView {
                List(FriendManager.friends) { friend in
                    NavigationLink(destination: FriendDetailView(friend: FriendManager.friends)) {
                        HStack {
                            Image(systemName: Friend.icon)
                            VStack(alignment: .leading) {
                                Text(Friend.name)
                                    .bold()
                                Text(Friend.school)
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
