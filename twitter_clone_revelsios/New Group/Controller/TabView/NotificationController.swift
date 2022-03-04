//
//  NotificationController.swift
//  twitter_clone_revelsios
//
//  Created by Ankit Mishra on 01/03/22.
//

import UIKit

class NotificationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI(){
        view.backgroundColor = .white
        let imageview = UIImageView(image:UIImage(named: "twitter_logo_blue"))
        imageview.contentMode = .scaleAspectFit
        navigationItem.titleView=imageview
        
        navigationItem.title="Feed"
        
        
        navigationItem.leftBarButtonItem=UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(dismissself))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(dismissself))
            
    }
    
    @objc func dismissself(){
        dismiss(animated: true, completion: nil)
    }


}
