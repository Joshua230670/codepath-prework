//
//  ViewController.swift
//  Codepath Pre-work
//
//  Created by Joshua Izquierdo on 8/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UILabel!
    @IBOutlet weak var textSchool: UILabel!
    @IBOutlet weak var textCareer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeBackColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        textName.textColor = randomColor
        textSchool.textColor = randomColor
        textCareer.textColor = randomColor
    }
    
    @IBAction func hideText(_ sender: UIButton) {
        textName = invisibleTextOn(text: textName)
        textSchool = invisibleTextOn(text: textSchool)
        textCareer = invisibleTextOn(text: textCareer)
    }
    
    @IBAction func showText(_ sender: UIButton) {
        textName = invisibleTextOff(text: textName)
        textSchool = invisibleTextOff(text: textSchool)
        textCareer = invisibleTextOff(text: textCareer)
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func invisibleTextOn(text: UILabel) -> UILabel{
        let currentLabel = text
        currentLabel.isHidden = true
        return currentLabel
    }
    
    func invisibleTextOff(text: UILabel) -> UILabel{
        let currentLabel = text
        currentLabel.isHidden = false
        return currentLabel
    }
}

