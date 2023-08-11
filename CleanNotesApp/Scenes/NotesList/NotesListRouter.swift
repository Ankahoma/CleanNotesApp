//
//  NotesListRouter.swift
//  CleanNotesApp
//
//  Created by Анна Вертикова on 11.08.2023.


import UIKit

@objc protocol NotesListRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol NotesListDataPassing
{
  var dataStore: NotesListDataStore? { get }
}

class NotesListRouter: NSObject, NotesListRoutingLogic, NotesListDataPassing
{
  weak var viewController: NotesListViewController?
  var dataStore: NotesListDataStore?
  
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
