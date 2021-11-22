//
//  LoginViewController.swift
//  CreationLibrary
//
//  Created by Artur Anissimov on 17.11.2021.
//

import UIKit

protocol RegistrationViewControllerDelegate {
    func updateUsersList(_ user: User)
    func checkIsUserInList(_ user: User) -> Bool
}

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private var users = UserDataManager().users

    // MARK: - Ovveride Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let registrationVC = segue.destination as? RegistrationViewController else { return }
        registrationVC.delegate = self
    }

    // MARK: - IB Actions
    @IBAction func showPrompt(_ sender: UIBarButtonItem) {
        guard let login = users.first?.login else { return }
        guard let password = users.first?.password else { return }
        showAlert(
            title: "Подсказка!",
            message: "Тестовый пользователь:\nИмя пользователя: \(login)\nПароль: \(password) "
        )
    }
    
    @IBAction func logInButtonTapped() {
        checkTextFieldValue(loginTextField, passwordTextField)
        if checkAuthorization(loginTextField, passwordTextField) {
            performSegue(withIdentifier: "mainAppView", sender: nil)
        } else {
            showAlert(title: "Ошибка!", message: "Введены неверные данные!")
        }
    }
    
}

// MARK: - UIViewController Extensions
extension UIViewController {
    //MARK: - Show Alert Function
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    func checkTextFieldValue(_ textFields: UITextField...) {
        textFields.forEach { textField in
            guard let textField = textField.text else { return }
            if textField.isEmpty {
                showAlert(title: "Ошибка!", message: "Текстовое поле НЕ может быть пустым!")
            }
        }
    }
    
}

// MARK: - LoginViewController Extensions
extension LoginViewController {
    
    private func checkAuthorization(_ login: UITextField, _ password: UITextField) -> Bool {
        
        guard let login = login.text else { return false }
        guard let password = password.text else { return false }
        
        let user = User(login: login, password: password)
        
        if users.contains(user) {
            return true
        }
        
        return false
    }
    
}

// MARK: - RegistrationViewControllerDelegate
extension LoginViewController: RegistrationViewControllerDelegate {
    func checkIsUserInList(_ user: User) -> Bool {
        users.contains(user)
    }
    
    func updateUsersList(_ user: User) {
        users.append(user)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonTapped()
        }
        return true
    }
}
