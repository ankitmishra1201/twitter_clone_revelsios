//
//  loginController.swift
//  twitter_clone_revelsios
//
//  Created by Ankit Mishra on 01/03/22.
//

import UIKit

class loginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    private let label: UILabel = {
        let label = UILabel()
        label.text = "Create your account"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .white
        label.numberOfLines = 1
        
        return label
    }()
    
    private let email: UITextField = {
        let email = UITextField()
        email.text = ""
       
        email.textColor = .white
        email.attributedPlaceholder = NSAttributedString(
            string: "Email", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return email
    }()

    private let password: UITextField = {
        let password = UITextField()
        password.text = ""
        
        password.textColor = .white
        password.attributedPlaceholder = NSAttributedString(
            string: "Password", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return password
    }()
    
    private func navBarSetup() {
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        logo.contentMode = .scaleAspectFit
        logo.image=UIImage(named: "TwitterLogo")
        self.navigationItem.titleView = logo
        
        self.navigationController?.navigationBar.tintColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - AutoLayout
    
    private func setUpAutoLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        email.translatesAutoresizingMaskIntoConstraints = false
        email.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 35).isActive = true
        email.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        email.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        email.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        password.translatesAutoresizingMaskIntoConstraints = false
        password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 10).isActive = true
        password.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
       

    }
    
    
    //MARK: - TapFunctions
    
    
    
    @objc private func didTapNext(){
        let rootVC = MainTabController()
        rootVC.modalPresentationStyle = .fullScreen
        
        present(rootVC, animated: true)
        
    }

    

}
