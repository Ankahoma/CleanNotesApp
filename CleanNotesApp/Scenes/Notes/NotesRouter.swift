//
//  NotesListRouter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.


import UIKit

@objc protocol NotesRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol NotesDataPassing
{
  var dataStore: NotesDataStore? { get }
}

class NotesRouter: NSObject, NotesRoutingLogic, NotesDataPassing
{
  weak var viewController: NotesViewController?
  var dataStore: NotesDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: NotesListViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: NotesListDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
