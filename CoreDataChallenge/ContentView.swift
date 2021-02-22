//
//  ContentView.swift
//  CoreDataChallenge
//
//  Created by Travis Brigman on 2/21/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users = [User]()
    @State private var friends = [Friend]()
    
    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                NavigationLink(destination: DetailView(user: user)){
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                        Text(user.company)
                    }
                }
            }
            .onAppear(perform: loadData)
        }
    }
    
    func loadData()  {
        guard let url = URL(string:"https://www.hackingwithswift.com/samples/friendface.json") else {  print("invalid URL")
            return  }
        
        let request = URLRequest(url: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data {
                if let decodedResponse = try? decoder.decode([User].self, from: data) {
                    DispatchQueue.main.async {
                        self.users = decodedResponse
                    }
                    
                    return
                }
            }
            print("fetch failed: \(error?.localizedDescription ?? "unknown error")")
        }.resume()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
