//
//  ViewController.swift
//  Leaso2.04
//
//  Created by AbuYusuf on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var viewRGB: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelRedView: UILabel!
    @IBOutlet weak var labelGreenView: UILabel!
    @IBOutlet weak var labelBlueView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewRGB.layer.cornerRadius = 10
        viewRGB.backgroundColor = view.backgroundColor
    }
    
    override func viewWillLayoutSubviews() {
        setValue()
        updateColor()
    }
    
    @IBAction func sliderAction() {
        setValue()
        updateColor()
    }
    
    
    private func setValue() {
        labelRedView.text = redSlider.value.formatted(.number.precision(.fractionLength(2)))
        labelGreenView.text = greenSlider.value.formatted(.number.precision(.fractionLength(2)))
        labelBlueView.text = blueSlider.value.formatted(.number.precision(.fractionLength(2)))
    }
    
    private func updateColor() {
        let red: CGFloat = CGFloat(redSlider.value)
        let green: CGFloat = CGFloat(greenSlider.value)
        let blue: CGFloat = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        viewRGB.backgroundColor = color
    }
}





                                

