//
//  DetailView.swift
//  CoreDataChallenge
//
//  Created by Travis Brigman on 2/21/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let user: User

    
    var body: some View {
        Group{
            VStack{
                Text(user.name)
                Text("\(user.age)")
            }
            List(user.friends) {
                friend in
                VStack(alignment: .leading) {
                    Text(friend.name)
                    
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User.example)
    }
}
