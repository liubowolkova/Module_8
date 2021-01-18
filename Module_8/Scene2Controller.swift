//
//  Scene2Controller.swift
//  Module_8
//
//  Created by Любовь Волкова on 18.01.2021.
//

import UIKit

class Scene2Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageFrames = [
            1: CGRect(x: 10, y: 40, width: 185, height: 329),
            2: CGRect(x: 215, y: 40, width: 185, height: 329),
            3: CGRect(x: 10, y: 419, width: 185, height: 329),
            4: CGRect(x: 215, y: 419, width: 185, height: 329)
        ]
        
        let labelFrames = [
            1: CGRect(x: 10, y: 374, width: 185, height: 20),
            2: CGRect(x: 215, y: 374, width: 185, height: 20),
            3: CGRect(x: 10, y: 753, width: 185, height: 20),
            4: CGRect(x: 215, y: 753, width: 185, height: 20)
        ]
        
        for i in 1...4 {
            let imageView = UIImageView(image: UIImage(named: "Pic_\(i).png"))
            imageView.frame = imageFrames[i]!
            self.view.addSubview(imageView)
            
            let label = UILabel(frame: labelFrames[i]!)
            label.text = "Image \(i)"
            label.textAlignment = .left
            label.tintColor = .black
            self.view.addSubview(label)
        }
    }
}
