import SwiftUI


class DragDropListViewModel: ObservableObject, DragDropListViewProtocol {
    @Published var items: [Item] = []
    var presenter: DragDropListPresenterProtocol?

    func updateList(_ items: [Item]) {
        DispatchQueue.main.async {
            self.items = items
        }
    }
}



struct DragDropListView: View {
    @StateObject var viewModel = DragDropListViewModel()
    
    @State private var editedName: String = ""
    @State private var isEditing: Bool = false
    @State private var editingIndex: Int?

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.items.indices, id: \.self) { index in
                    HStack {
                        Image(systemName: viewModel.items[index].icon)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.blue)

                        if isEditing && editingIndex == index {
                            TextField("Edit Name", text: $editedName, onCommit: {
                                if let editingIndex = editingIndex {
                                    viewModel.presenter?.editItem(at: editingIndex, newName: editedName)
                                }
                                isEditing = false
                            })
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        } else {
                            Text(viewModel.items[index].name)
                                .onTapGesture {
                                    editingIndex = index
                                    editedName = viewModel.items[index].name
                                    isEditing = true
                                }
                        }

                        Spacer()

                        Button(action: {
                            viewModel.presenter?.deleteItem(at: index)
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                    }
                    .padding(.vertical, 5)
                }
                .onMove(perform: { indices, newOffset in
                    viewModel.presenter?.moveItem(from: indices, to: newOffset)
                })
            }
            .navigationTitle("VIPER Drag & Drop List")
            .toolbar {
                EditButton()
            }
        }
        .onAppear {
            viewModel.presenter?.viewDidLoad()
        }
    }
}
