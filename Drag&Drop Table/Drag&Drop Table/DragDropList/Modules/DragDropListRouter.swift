import SwiftUI

class DragDropListRouter: DragDropListRouterProtocol {
    static func createModule() -> DragDropListView {
        let viewModel = DragDropListViewModel()
        let presenter = DragDropListPresenter()
        let interactor = DragDropListInteractor()
        let router = DragDropListRouter()

        viewModel.presenter = presenter
        presenter.view = viewModel
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter

        return DragDropListView(viewModel: viewModel)
    }
}

