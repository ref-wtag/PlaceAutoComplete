////
////  ViewController.swift
////  PlaceAutoComplete
////
////  Created by Refat E Ferdous on 12/12/23.
////
//
//import UIKit
//
//class PreviousViewController: UIViewController {
//
//    @IBOutlet var tableView: UITableView!
//    let searchController = UISearchController(searchResultsController: nil)
//    var autocompleteResults: [Place] = []
//    let googlePlacesAutocomplete = GooglePlacesAutocomplete(apiKey: "AIzaSyBgOAZqposbLWbFafJhvCTfZLunOFF6Vu4")
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//       
//        setupSearchController()
//        setupTableView()
//    }
//    
//    func setupSearchController() {
//            searchController.searchResultsUpdater = self
//            searchController.obscuresBackgroundDuringPresentation = false
//            searchController.searchBar.placeholder = "Search for a place"
//            navigationItem.searchController = searchController
//            definesPresentationContext = true
//        }
//    func setupTableView() {
//            tableView.delegate = self
//            tableView.dataSource = self
//            tableView.tableFooterView = UIView() // Remove empty cell separators
//        }
//}
//
//extension PreviousViewController: UISearchResultsUpdating {
//    func updateSearchResults(for searchController: UISearchController) {
//        guard let query = searchController.searchBar.text, !query.isEmpty else {
//            autocompleteResults = []
//            tableView.reloadData()
//            return
//        }
//
//        googlePlacesAutocomplete.getAutocompleteResults(query: query) { [weak self] places in
//            self?.autocompleteResults = places
//            self?.tableView.reloadData()
//        }
//    }
//}
//
//extension PreviousViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return autocompleteResults.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)
//        let place = autocompleteResults[indexPath.row]
//        cell.textLabel?.text = place.description
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // Handle the selected place, if needed
//        let selectedPlace = autocompleteResults[indexPath.row]
//        print("Selected Place: \(selectedPlace.description)")
//    }
//}
//
