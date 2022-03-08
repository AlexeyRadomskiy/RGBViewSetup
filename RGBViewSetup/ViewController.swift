//
//  ViewController.swift
//  RGBViewSetup
//
//  Created by Alexey on 08.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var RGBView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View
        RGBView.layer.cornerRadius = 20
        setColor()
        
        // Labels
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        // Sliders
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
    }

    @IBAction func redSliderAction() {
        setColor()
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        setColor()
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        setColor()
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setColor() {
        RGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

