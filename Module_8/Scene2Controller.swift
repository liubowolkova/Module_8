//
//  Scene2Controller.swift
//  Module_8
//
//  Created by Любовь Волкова on 18.01.2021.
//

import UIKit

class Scene2Controller: UIViewController {
    // Number of elements in gallery
    let numberOfElements = 4
    
    // Elements sizes
    let imgWidth = 185
    let imgHeight = 329
    let labelWidth = 185
    let labelHeight = 20
    
    // Elements margins
    let marginLeftFirstColumn = 10
    let marginLeftSecondColumn = 215
    
    // Y-axis distance between elements
    let distance = 15

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createGallery(self.numberOfElements)
    }
    
    private func setImageFrame(x: Int, y: Int) -> CGRect {
        return CGRect(x: x, y: y, width: self.imgWidth, height: self.imgHeight)
    }
    
    private func setLabelFrame(x: Int, y: Int) -> CGRect {
        return CGRect(x: x, y: y, width: self.labelWidth, height: self.labelHeight)
    }
    
    private func createGallery(_ numberOfElements: Int) {
        var marginLeft = 0
        var marginTop = 40
        
        for i in 1...numberOfElements {
            let thisMarginTop = marginTop
            marginLeft = i.isMultiple(of: 2) ? self.marginLeftSecondColumn : self.marginLeftFirstColumn
            
            let imageView = UIImageView(image: UIImage(named: "Pic_\(i).png"))
            imageView.frame = self.setImageFrame(x: marginLeft, y: marginTop)
            
            marginTop += self.imgHeight + self.distance
            
            let label = UILabel(frame: self.setLabelFrame(x: marginLeft, y: marginTop))
            label.text = "Image \(i)"
            label.textAlignment = .left
            label.tintColor = .black
            
            self.view.addSubview(imageView)
            self.view.addSubview(label)
            
            marginTop += self.labelHeight + self.distance
            
            marginTop = i.isMultiple(of: 2) ? marginTop : thisMarginTop
        }
    }
}
