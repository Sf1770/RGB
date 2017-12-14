//
//  ViewController.swift
//  RGB
//
//  Created by Sabrina Fletcher on 12/13/17.
//  Copyright © 2017 Sabrina Fletcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greyLbl: UILabel!
    @IBOutlet weak var greySlider: UISlider!
    @IBOutlet weak var redLbl: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLbl: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLbl: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        greyAction(greySlider)
    }

 
    @IBAction func greyAction(_ sender: UISlider) { //CGFloat = Core Graphics
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        
        greyLbl.text = String(format: "%.2f", sender.value)
        
        if sender.value >= 0.5{
            greyLbl.textColor = UIColor(white: 0, alpha: 1)
            redLbl.textColor = UIColor(white: 0, alpha: 1)
            greenLbl.textColor = UIColor(white: 0, alpha: 1)
            blueLbl.textColor = UIColor(white: 0, alpha: 1)
        } else{
            greyLbl.textColor = UIColor(white: 1, alpha: 1)
            redLbl.textColor = UIColor(white: 1, alpha: 1)
            greenLbl.textColor = UIColor(white: 1, alpha: 1)
            blueLbl.textColor = UIColor(white: 1, alpha: 1)
        }
        //alpha is the levelof transparency, 1 is completely visible and 0 is transparency
    }
    
    @IBAction func rgbAction(_ sender: UISlider) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        redLbl.text = String(format: "%.2f", redSlider.value)
        greenLbl.text = String(format: "%.2f", greenSlider.value)
        blueLbl.text = String(format: "%.2f", blueSlider.value)
        
        if redSlider.value > 0.75 && greenSlider.value < 0.25 && blueSlider.value < 0.25 {
            redSlider.thumbTintColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            blueSlider.thumbTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            greenSlider.thumbTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            redSlider.maximumTrackTintColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            redSlider.minimumTrackTintColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
        } else if redSlider.value < 0.25 && greenSlider.value > 0.75 && blueSlider.value < 0.25{
            greenSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            blueSlider.thumbTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            redSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            greenSlider.minimumTrackTintColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            greenSlider.maximumTrackTintColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
        } else if redSlider.value < 0.25 && greenSlider.value < 0.25 && blueSlider.value > 0.75{
            
            blueSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            redSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            greenSlider.thumbTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            blueSlider.minimumTrackTintColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            blueSlider.maximumTrackTintColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
        } else if redSlider.value >= 0.75 && (greenSlider.value > 0.25 || blueSlider.value > 0.25){
            blueSlider.thumbTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            redSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            greenSlider.thumbTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            redSlider.maximumTrackTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            redSlider.minimumTrackTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)

        } else if greenSlider.value >= 0.75 && (redSlider.value > 0.25 || blueSlider.value > 0.25) {
            blueSlider.thumbTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            redSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            greenSlider.thumbTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            greenSlider.minimumTrackTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            greenSlider.maximumTrackTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
        } else if blueSlider.value >= 0.75 && (redSlider.value > 0.25 || greenSlider.value > 0.25) {
            blueSlider.thumbTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            redSlider.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            greenSlider.thumbTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            blueSlider.maximumTrackTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
        }
        
        
        
        if redSlider.value >= 0.5 && greenSlider.value >= 0.5 && blueSlider.value >= 0.5{
            redLbl.textColor = UIColor(white: 0, alpha: 1)
            greenLbl.textColor = UIColor(white: 0, alpha: 1)
            blueLbl.textColor = UIColor(white: 0, alpha: 1)
            greyLbl.textColor = UIColor(white: 0, alpha: 1)
        } else{
            redLbl.textColor = UIColor(white: 1, alpha: 1)
            greenLbl.textColor = UIColor(white: 1, alpha: 1)
            blueLbl.textColor = UIColor(white: 1, alpha: 1)
            greyLbl.textColor = UIColor(white: 1, alpha: 1)
        }
        
    }
    
    @IBAction func reset() {
        greySlider.value = 0.50
        greenSlider.value = 0.50
        redSlider.value = 0.50
        blueSlider.value = 0.50
        
        greyLbl.text = "0.50"
        greenLbl.text = "0.50"
        blueLbl.text = "0.50"
        redLbl.text = "0.50"
        
        view.backgroundColor = UIColor(white: 0.50, alpha: 1)
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 2
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        view.layer.add(transition, forKey: nil)
    }
    
}

