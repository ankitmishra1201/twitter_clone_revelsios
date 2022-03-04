//
//  SignUpController.swift
//  twitter_clone_revelsios
//
//  Created by Ankit Mishra on 01/03/22.
//

import UIKit

class SignUpController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

       
        
        view.addSubview(label)
        view.addSubview(Name)
        view.addSubview(PhoneNumber_email)
        view.addSubview(DOB)
        view.addSubview(Next)
        
        setUpAutoLayout()
    }
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Create your account"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .black
        label.numberOfLines = 1
        
        return label
    }()
    
    private let Name: UITextField = {
        let Name = UITextField()
        Name.text = ""
       
        Name.textColor = .black
        Name.attributedPlaceholder = NSAttributedString(
            string: "Name", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]
        )

        return Name
    }()

    private let PhoneNumber_email: UITextField = {
        let PorE = UITextField()
        PorE.text = ""
        
        PorE.textColor = .black
        PorE.attributedPlaceholder = NSAttributedString(
            string: "Phone number or email address", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]
        )

        return PorE
    }()
    
    private let DOB: UITextField = {
        let DOB = UITextField()
        DOB.text = ""
        
        DOB.textColor = .black
        DOB.attributedPlaceholder = NSAttributedString(
            string: "Date of birth", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]
        )

        return DOB
    }()
    
    private let Next: UIButton = {
        let Next = UIButton()
        Next.setTitle("Next", for: .normal)
        Next.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        Next.backgroundColor = #colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1)
        Next.layer.cornerRadius = 12.5
        Next.setTitleColor(.white, for: .normal)
        Next.addTarget(self, action: #selector(didTapNext), for: .touchUpInside)
        
        return Next
    }()


    
    
    //MARK: - AutoLayout
    
    private func setUpAutoLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        Name.translatesAutoresizingMaskIntoConstraints = false
        Name.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 35).isActive = true
        Name.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Name.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Name.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        PhoneNumber_email.translatesAutoresizingMaskIntoConstraints = false
        PhoneNumber_email.topAnchor.constraint(equalTo: Name.bottomAnchor, constant: 10).isActive = true
        PhoneNumber_email.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        PhoneNumber_email.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        PhoneNumber_email.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        DOB.translatesAutoresizingMaskIntoConstraints = false
        DOB.topAnchor.constraint(equalTo: PhoneNumber_email.bottomAnchor, constant: 10).isActive = true
        DOB.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        DOB.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        DOB.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        Next.translatesAutoresizingMaskIntoConstraints = false
        Next.widthAnchor.constraint(equalToConstant: 70).isActive = true
        Next.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Next.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        Next.heightAnchor.constraint(equalToConstant: 25).isActive = true

    }
    
    
    
    
    
    
    @objc private func didTapNext(){
        let rootVC = MainTabController()
        rootVC.modalPresentationStyle = .fullScreen
        
        present(rootVC, animated: true)
        
    }

}
