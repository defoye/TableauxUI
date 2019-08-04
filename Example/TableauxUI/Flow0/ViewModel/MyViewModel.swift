//
//  MyViewModel.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/20/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import Foundation

public class MyViewModel {
	
	public func loadRedData(completion: @escaping ([RedCellViewData]) -> Void) {
		let redData = RedCellViewData()
		let array: [RedCellViewData] = Array.init(repeating: redData, count: 3)
		
		completion(array)
	}
	
	public func loadGreenData(completion: @escaping ([GreenCellViewData]) -> Void) {
		let redData = GreenCellViewData()
		let array: [GreenCellViewData] = Array.init(repeating: redData, count: 3)
		
		completion(array)
	}
	
	public func loadBlueData(completion: @escaping (BlueCellViewData) -> Void) {
		let blueData = BlueCellViewData()
		
		completion(blueData)
	}
}
