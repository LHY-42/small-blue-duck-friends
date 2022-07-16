//
//  ContentView.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var friendManager = FriendManager()
    @State var isSheetGiven = false
    
    var body: some View {
            NavigationView {
                List {
                    ForEach($friendManager.friends) { $friend in
                        NavigationLink {
                            FriendDetailView(friends: $friend)
                        } label: {
                            HStack {
                                
                                VStack(alignment: .leading) {
                                    Text(friend.name)
                                        .bold()
                                    Text(friend.school)
                                    Float(friend.attack)
                                    Float(friend.defence)
                                }
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
                NewFriendView(friends: $friendManager.friends)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
