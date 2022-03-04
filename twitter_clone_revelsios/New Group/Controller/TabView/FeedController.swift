//
//  FeedController.swift
//  twitter_clone_revelsios
//
//  Created by Ankit Mishra on 01/03/22.
//

import UIKit

class FeedController: UIViewController {

    
    private let feedview:UITableView={
        let feedview=UITableView()
        feedview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return feedview
        
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(feedview)
        feedview.delegate=self
        feedview.dataSource=self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        feedview.frame=view.frame
    }
    

        
        
        
        
}

extension FeedController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
       
    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath:IndexPath)->UITableViewCell{
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text="Tweet"
        return cell
        
    }
    }


