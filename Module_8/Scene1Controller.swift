//
//  Scene1Controller.swift
//  Module_8
//
//  Created by Любовь Волкова on 17.01.2021.
//

import UIKit

class Scene1Controller: UIViewController {
    @IBOutlet weak var imageContainer: UIImageView!
    @IBOutlet weak var buttonBack: UIButton!
    @IBOutlet weak var buttonNext: UIButton!
    var img = 0
    var images = [UIImage(named: "Pic_1.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonBack.layer.cornerRadius = 5
        buttonBack.isHidden = true
        buttonNext.layer.cornerRadius = 5
        
        images = self.createImageStack()
        imageContainer.image = images[img]
    }
    
    func createImageStack() -> [UIImage]{
        var imageStack: [UIImage] = []
        for i in 0..<10 {
            imageStack.append(UIImage(named: "Pic_\(i+1).png")!)
        }
        
        return imageStack
    }
    
    func setImage(image: UIImage) {
        self.imageContainer.image = image
    }
    
    @IBAction func changeImage(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            img -= 1
        case 1:
            img += 1
        default:
            break
        }
        
        self.setImage(image: self.images[img]!)
        
        switch img {
        case 0:
            self.buttonBack.isHidden = true
        case 1:
            self.buttonBack.isHidden = false
        case 8:
            self.buttonNext.isHidden = false
        case 9:
            self.buttonNext.isHidden = true
        default:
            break
        }
    }
}
