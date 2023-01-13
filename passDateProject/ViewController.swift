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
    
    var color: UIColor?
    
    @IBAction func goTapped(_ sender: Any) {
        switch loginTF.text {
        case "red":
            color = .red
        case "blue":
            color = .blue
        case "green":
            color = .green
        default:
            return
        }
    }
    
    // MARK: Passing date(log and pass) to the Second View
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? Second else { return }
        dvc.login = loginTF.text
        dvc.pass = passwordTF.text
        dvc.colorToSecond = color
    }
    
    @IBAction func myWindSegue(segue: UIStoryboardSegue) {
        
    }
}

