//
//  Scene3Controller.swift
//  Module_8
//
//  Created by Любовь Волкова on 18.01.2021.
//

import UIKit

class Scene3Controller: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet var textfields: [UITextField]!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var imageViews: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewBackgound(color: .green)
        for button in buttons {
            button.layer.cornerRadius = 10
        }
    }
    
    func setViewBackgound(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    func setHiddenProps(textfieldBool: Bool, buttonBool: Bool, imageBool: Bool) {
        for i in 0..<2 {
            textfields[i].isHidden = textfieldBool
            buttons[i].isHidden = buttonBool
            imageViews[i].isHidden = imageBool
        }
    }
    
    @IBAction func changeView(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.setViewBackgound(color: .green)
            self.setHiddenProps(textfieldBool: false, buttonBool: true, imageBool: true)
        case 1:
            self.setViewBackgound(color: .blue)
            self.setHiddenProps(textfieldBool: true, buttonBool: false, imageBool: true)
        case 2:
            self.setViewBackgound(color: .purple)
            self.setHiddenProps(textfieldBool: true, buttonBool: true, imageBool: false)
        default:
            break
        }
    }
}
