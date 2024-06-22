//
//  ContentView.swift
//  SwiftTesting
//
//  Created by Serkan Kara on 11.06.2024.
//

import SwiftUI

struct ListView: View {
    
    @StateObject private var viewModel = ListViewModel()
    @State private var newItemName: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("New item name", text: $newItemName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    viewModel.addItem(name: newItemName)
                    newItemName = ""
                }) {
                    Text("Add Item")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                List {
                    ForEach(viewModel.items) { item in
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Items List")
        }
    }
}

#Preview {
    ListView()
}
