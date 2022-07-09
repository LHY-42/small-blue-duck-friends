//
//  ContentView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var friends = [
        Friend(name: "Yuhan", school: "MGS", attack: 10000000.0, defence: 100000.0)
    ]
    
    @State var isSheetGiven = false
    
    var body: some View {
            NavigationView {
                List(friends) { $friend in
                    NavigationLink {
                        FriendDetailView(friend: $friend)
                    } label: {
                        HStack {
                            Image(systemName: "sun")
                            VStack(alignment: .leading) {
                                Text(Friend.name)
                                    .bold()
                                Text(Friend.school)
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
