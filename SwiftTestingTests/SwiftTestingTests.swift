//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Serkan Kara on 21.06.2024.
//

import Testing

@testable import SwiftTesting

@Suite("Swift Testing")
struct SwiftTestingTests {
    
    var viewModel: ListViewModel!
    
    init() {
        self.viewModel = ListViewModel()
    }
    
    @Test
    func testAddItem() {
        //Given
        let initialItemCount = viewModel.items.count
        let newItemName = "New Test Item"
        
        //When
        viewModel.addItem(name: newItemName)
        
        //Then
        #expect(viewModel.items.count == initialItemCount + 1)
        #expect(viewModel.items.last?.name == newItemName)
    }
    
    @Test
    func testRemoveItem() {
        //Given
        let initialItemCount = viewModel.items.count
        let itemToRemove = viewModel.items[0]
        
        //When
        viewModel.removeItem(at: itemToRemove)
        
        //Then
        #expect(viewModel.items.count == initialItemCount - 1)
        #expect(!viewModel.items.contains(itemToRemove))
    }
}
