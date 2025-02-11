//
//  DragDropListInteractor.swift
//  Drag&Drop Table
//
//  Created by Tanay Bhattacharjee on 11/02/25.
//


import Foundation

class DragDropListInteractor: DragDropListInteractorProtocol {
    weak var presenter: DragDropListPresenter?

    private var items: [Item] = [
        Item(name: "Apple", icon: "applelogo"),
        Item(name: "Star", icon: "star.fill"),
        Item(name: "Heart", icon: "heart.fill"),
        Item(name: "Clock", icon: "clock.fill")
    ]

    func fetchItems() {
        presenter?.itemsFetched(items)
    }

    func saveItems(_ items: [Item]) {
        self.items = items
        presenter?.itemsFetched(items)
    }
}