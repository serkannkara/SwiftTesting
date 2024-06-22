//
//  ContentModel.swift
//  SwiftTesting
//
//  Created by Serkan Kara on 12.06.2024.
//

import Foundation

struct ListItem: Identifiable, Equatable {
    var id = UUID()
    var name: String
}
