//
//  NewConversationViewController.swift
//  ChatMe
//
//  Created by Antt Min on 3/19/24.
//

import UIKit
import JGProgressHUD

class NewConversationViewController: UIViewController {
    
    private let spinning = JGProgressHUD(style: .dark)
    
    private let searchBar : UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = " Search for Users..."
        return searchBar
    }()
    
    private let tableView : UITableView = {
       let table = UITableView()
        table.isHidden = true
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return table
    }()
    
    private let noResultsLabel : UILabel = {
       let label = UILabel()
        label.isHidden = true
        label.text = "No Result"
        label.textAlignment = .center
        label.textColor = .green
        label.font = .systemFont(ofSize: 21, weight: .medium)
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.titleView = searchBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(dismissSelf))
        
        searchBar.becomeFirstResponder()
        
        
        
         }
    
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion : nil)
    }

    
}

extension NewConversationViewController : UISearchBarDelegate {
    func searchBarSearchButtonClicked( _ searchBar : UISearchBar){
        
    }
}
