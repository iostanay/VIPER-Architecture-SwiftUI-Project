//
//  DragDropListPresenter.swift
//  Drag&Drop Table
//
//  Created by Tanay Bhattacharjee on 11/02/25.
//


import Foundation

class DragDropListPresenter: DragDropListPresenterProtocol {
    weak var view: DragDropListViewProtocol?
    var interactor: DragDropListInteractorProtocol?
    var router: DragDropListRouterProtocol?

    private var items: [Item] = []

    func viewDidLoad() {
        interactor?.fetchItems()
    }

    func itemsFetched(_ items: [Item]) {
        self.items = items
        view?.updateList(items)
    }

    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
        interactor?.saveItems(items)
    }

    func deleteItem(at index: Int) {
        items.remove(at: index)
        interactor?.saveItems(items)
    }

    func editItem(at index: Int, newName: String) {
        items[index].name = newName
        interactor?.saveItems(items)
    }
}
