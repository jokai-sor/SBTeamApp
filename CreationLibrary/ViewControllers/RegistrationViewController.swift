//
//  RegistrationViewController.swift
//  CreationLibrary
//
//  Created by Artur Anissimov on 17.11.2021.
//

import UIKit

class RegistrationViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Public Properties
    var users: [User]!
    var delegate: RegistrationViewControllerDelegate!
    
    // MARK: - Private Properies
    private var user: User!
    
    // MARK: - Ovveride Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func registrationButtonTapped() {
        checkTextFieldValue(usernameTextField, passwordTextField)
        
        if registrateNewUser(usernameTextField, passwordTextField) {
            showAlert(title: "Поздравляю!", message: "Вы создали нового пользователя!")
        } else {
            showAlert(title: "Ошибка!", message: "В системе уже есть такой пользователь!")
        }
    }
    
}

// MARK: - RegistrationViewController extension
extension RegistrationViewController {
    private func registrateNewUser(_ login: UITextField, _ password: UITextField) -> Bool{
        
        guard let login = login.text, !login.isEmpty else { return false }
        guard let password = password.text, !password.isEmpty else { return false }
        
        user = User(login: login, password: password)
        
        if users.contains(user) {
            return false
        } else {
            delegate.updateUsersList(user)
            return true
        }
        
    }
}

// MARK: - UITextFieldDelegate
extension RegistrationViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            registrationButtonTapped()
        }
        return true
    }
}


