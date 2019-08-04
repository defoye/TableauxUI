//
//  ViewController.swift
//  TableauxUI
//
//  Created by defoye on 08/04/2019.
//  Copyright (c) 2019 defoye. All rights reserved.
//

import UIKit
import TableauxUI

class ViewController: UIViewController {
	
	var isBlinking = false
	let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Setup the BlinkingLabel
		blinkingLabel.text = "I blink!"
		blinkingLabel.font = UIFont.systemFont(ofSize: 20)
		view.addSubview(blinkingLabel)
		blinkingLabel.startBlinking()
		isBlinking = true
		
		// Create a UIButton to toggle the blinking
		let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
		toggleButton.setTitle("Toggle Blinking", for: .normal)
		toggleButton.setTitleColor(.red, for: .normal)
		view.addSubview(toggleButton)
	}
	
	func toggleBlinking() {
		if (isBlinking) {
			blinkingLabel.stopBlinking()
		} else {
			blinkingLabel.startBlinking()
		}
		isBlinking = !isBlinking
	}
	
}

