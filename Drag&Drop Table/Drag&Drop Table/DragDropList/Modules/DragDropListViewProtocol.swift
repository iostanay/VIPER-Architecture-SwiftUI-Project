import Foundation

protocol DragDropListViewProtocol: AnyObject {
    func updateList(_ items: [Item])
}

protocol DragDropListPresenterProtocol: AnyObject {
    func viewDidLoad()
    func moveItem(from source: IndexSet, to destination: Int)
    func deleteItem(at index: Int)
    func editItem(at index: Int, newName: String)
}

protocol DragDropListInteractorProtocol: AnyObject {
    func fetchItems()
    func saveItems(_ items: [Item])
}

protocol DragDropListRouterProtocol: AnyObject {
    static func createModule() -> DragDropListView
}
