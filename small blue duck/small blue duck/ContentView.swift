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
                List(friends) { $friend in
                    NavigationLink {
                        FriendDetailView(friend: $friend)
                    } label: {
                        HStack {
                            
                            VStack(alignment: .leading) {
                                Text(Friend.name)
                                    .bold()
                                Text(Friend.school)
                                Text(Friend.attack)
                                Text(Friend.defence)
                            }
                        }
                    }
                }
                .navigationTitle("Friends")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isSheetGiven = true
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
            }
            .sheet(isPresented: $isSheetGiven) {
                NewFriendView(friends: $friend)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
