//
//  NotesListViewController.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NotesDisplayLogic: AnyObject {
    func displayNotes(viewModel: Notes.GetNotes.ViewModel)
}

class NotesViewController: UIViewController {
    @IBOutlet var notesTableView: UITableView!
    
    private var interactor: NotesBusinessLogic?
    var router: (NSObjectProtocol & NotesRoutingLogic & NotesDataPassing)?
    
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
        let interactor = NotesInteractor()
        let presenter = NotesPresenter()
        let router = NotesRouter()

        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let scene = segue.identifier {
//            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
//            if let router = router, router.responds(to: selector) {
//                router.perform(selector, with: segue)
//            }
//        }
//    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchNotes()

    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func fetchNotes() {
//        let request = NotesList.Something.Request()
//        interactor?.fetchNotes(request: request)
    }
}

extension NotesViewController: NotesDisplayLogic {
    func displayNotes(viewModel: Notes.GetNotes.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}



extension NotesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let noteCell = tableView.dequeueReusableCell(
            withIdentifier: "noteCell", for: indexPath
        ) as! NoteCell
        
        
        return noteCell
    }
}
    
//    extension NotesViewController: UITableViewDelegate {
//
//
//    }
//

