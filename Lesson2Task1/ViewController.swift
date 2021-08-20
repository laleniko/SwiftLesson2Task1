//
//  ViewController.swift
//  Lesson2Task1
//
//  Created by Николай Ларьков on 20.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorBox: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    private var currenViewColor: [String: CGFloat] = [
        "red": 0,
        "green": 0,
        "blue": 0
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorBox.layer.cornerRadius = colorBox.frame.width / 20
        colorBox.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        // Do any additional setup after loading the view.
    }

    @IBAction func redSlide(_ sender: UISlider) {
        let roundedColor = (sender.value * 100).rounded() / 100
        currenViewColor["red"] = CGFloat(roundedColor)
        redLabel.text = String(roundedColor)
        setViewBackgroundColor()
    }
    
    @IBAction func greenSlide(_ sender: UISlider) {
        let roundedColor = (sender.value * 100).rounded() / 100
        currenViewColor["green"] = CGFloat(roundedColor)
        greenLabel.text = String(roundedColor)
        setViewBackgroundColor()
    }
    
    @IBAction func blueSlide(_ sender: UISlider) {
        let roundedColor = (sender.value * 100).rounded() / 100
        currenViewColor["blue"] = CGFloat(roundedColor)
        blueLabel.text = String(roundedColor)
        setViewBackgroundColor()
    }
    
    private func setViewBackgroundColor() {
        colorBox.backgroundColor = UIColor.init(
            red: currenViewColor["red"] ?? 0,
            green: currenViewColor["green"] ?? 0,
            blue: currenViewColor["blue"] ?? 0,
            alpha: 1
        )
    }
}

