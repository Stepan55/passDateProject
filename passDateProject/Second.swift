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
        
        view.backgroundColor = colorToSecond
        
        textLbl.adjustsFontSizeToFitWidth = true
        textLbl.numberOfLines = 0
        
        textLbl.text = "Log: \(login!)\nPass: \(pass!)"
    }
    
    
    @IBAction func backClicked(_ sender: Any) {
    }
    
}
