//
//  FriendDetailView.swift
//  small blue duck
//
//  Created by hy loh on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    @Binding var friend: Friend;
    var body: some View {
        List{
            ForEach(Friend){
                
            }
        }

    }

}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView()
    }
}
