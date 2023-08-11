//
//  NotesListViewController.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NotesListDisplayLogic: AnyObject {
    func displayNotesList(viewModel: NotesList.Something.ViewModel)
}

class NotesListViewController: UIViewController {
    @IBOutlet var notesListTableView: UITableView!
    
    private var interactor: NotesListBusinessLogic?
    var router: (NSObjectProtocol & NotesListRoutingLogic & NotesListDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup() {
        let viewController = self
        let interactor = NotesListInteractor()
        let presenter = NotesListPresenter()
        let router = NotesListRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        fetchNotes()
        notesListTableView.delegate = self
        title = ""
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func fetchNotes() {
        let request = NotesList.Something.Request()
        interactor?.fetchNotes(request: request)
    }
}

extension NotesListViewController: NotesListDisplayLogic {
    func displayNotesList(viewModel: NotesList.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}

extension NotesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let noteCell = tableView.dequeueReusableCell(withIdentifier: "noteCellId", for: indexPath)
        return noteCell
    }
    
}

extension NotesListViewController: UITableViewDelegate {
    
}
