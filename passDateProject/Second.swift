//
//  Second.swift
//  passDateProject
//
//  Created by Степан on 08.01.2023.
//

import UIKit

class Second: UIViewController {
    
    var login: String?
    var pass: String?
    
    var colorToSecond: UIColor?

    @IBOutlet weak var textLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login, let pass = pass else { return }
        
        view.backgroundColor = colorToSecond
        
        /// Fit the text
        textLbl.adjustsFontSizeToFitWidth = true
        textLbl.numberOfLines = 0
        
        textLbl.text = "Log: \(login)\nPass: \(pass)"
    }
    
    /// Getting back to the First Screen
    @IBAction func backClicked(_ sender: Any) {
    }
    
    ///  Switching to the Third Screen
    // грубо говоря одним методом привязываем к третьему экрану
    /// Привязав так вручную и даем идентификатор(имя) сигвею может вызывать с помощью метода ниже чтобы переходить на третий экран 
    @IBAction func checkPressed(_ sender: Any) {
        if colorToSecond == .green {
            performSegue(withIdentifier: "toTheThird", sender: nil)
        } 
    }
    
    
}
