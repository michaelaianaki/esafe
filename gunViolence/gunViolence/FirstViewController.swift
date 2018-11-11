//
//  FirstViewController.swift
//  gunViolence
//
//  Created by Michaela Ianaki on 11/11/18.
//  Copyright © 2018 Michaela Ianaki. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var concernField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var infoField: UITextField!
    
    @IBOutlet weak var submitReport: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        nameField.delegate = self
//        concernField.delegate = self
//        locationField.delegate = self
//        dateField.delegate = self
//        infoField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func enterTapped(_ sender: Any) {
        var request = URLRequest(url: URL(string: "172.20.10.2:5000")!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            print("Entered the completionHandler")
            }.resume()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
//extension FirstViewController : UITextFieldDelegate {
//    private func textFieldShouldReturn(_: _UITextField) -> Bool {
////        textField.resignFirstResponder()
//        return true
//    }
//}
