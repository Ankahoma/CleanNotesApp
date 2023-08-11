//
//  NoteDetailsViewController.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 10.08.2023.


import UIKit

protocol NoteDetailsDisplayLogic: AnyObject {
    func displayNotesList(viewModel: NoteDetails.GetNoteDetails.ViewModel)
}

class NoteDetailsViewController: UIViewController {
    
    var interactor: NoteDetailsBusinessLogic?
    var router: (NSObjectProtocol & NoteDetailsRoutingLogic & NoteDetailsDataPassing)?
    
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
        let interactor = NoteDetailsInteractor()
        let presenter = NoteDetailsPresenter()
        let router = NoteDetailsRouter()
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
        doSomething()
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func doSomething() {
        let request = NoteDetails.GetNoteDetails.Request()
        interactor?.doSomething(request: request)
    }
}

extension NoteDetailsViewController: NoteDetailsDisplayLogic {
    func displayNotesList(viewModel: NoteDetails.GetNoteDetails.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
