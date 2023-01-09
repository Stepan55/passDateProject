//
//  ViewController.swift
//  passDateProject
//
//  Created by Степан on 03.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func goTapped(_ sender: Any) {
//        if loginTF.text == "red" {
//            view.backgroundColor = .red
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? Second else { return }
        dvc.login = loginTF.text
        dvc.pass = passwordTF.text
    }
}

