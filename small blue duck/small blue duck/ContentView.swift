//
//  ContentView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var friendManager = FriendManager()
    
    var body: some View {
            NavigationView {
                List(friendManager.friends) { friend in
                    NavigationLink(destination:
                                    FriendDetailView(friend: $friend))
                    {
                        HStack {
                            
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
