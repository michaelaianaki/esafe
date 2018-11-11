//
//  MapViewController.swift
//  gunViolence
//
//  Created by Michaela Ianaki on 11/11/18.
//  Copyright © 2018 Michaela Ianaki. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private let dataSource = ["First Floor Level", "Second Floor Level", "Third Floor Level", "Fourth Floor"]
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var mapImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self

    }

func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return dataSource.count
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    if row == 0 {
        mapImageView.image = #imageLiteral(resourceName: "IMG_1911 2")
    } else if row == 1 {
        mapImageView.image = #imageLiteral(resourceName: "IMG_1910 2")
    } else if row == 2 {
        mapImageView.image = #imageLiteral(resourceName: "IMG_1912 2")
    } else {
        mapImageView.image = #imageLiteral(resourceName: "IMG_1913 2")
    }
}

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return dataSource[row]
}


        // Do any additional setup after loading the view.
}
    

