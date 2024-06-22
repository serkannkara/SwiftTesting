//
//  ContentViewModel.swift
//  SwiftTesting
//
//  Created by Serkan Kara on 12.06.2024.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ListItem] = []

    init() {
        items = [
            ListItem(name: "Item 1"),
            ListItem(name: "Item 2"),
            ListItem(name: "Item 3")
        ]
    }

    func addItem(name: String) {
        let newItem = ListItem(name: name)
        items.append(newItem)
    }

    func removeItem(at item: ListItem) {
        items.removeAll(where: { item == $0 })
    }
}

