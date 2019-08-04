//
//  MyViewAdapter.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/20/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public enum RGBTableaux: Int, CaseIterable {
	case RedTableau
	case GreenTableau
	case BlueTableau
}

public class MyViewAdapter {
	
	let viewModel: MyViewModel
	let tableau: Tableau
	
	init(viewModel: MyViewModel) {
		self.viewModel = viewModel
		self.tableau = Tableau(numberReservedTableaux: RGBTableaux.allCases.count)
	}
	
	// Called by view controller
	public func buildTableaux(reloadBlock: @escaping () -> Void) {
		self.buildRedTableau(index: .RedTableau) {
			reloadBlock()
		}
		self.buildGreenTableau(index: .GreenTableau) {
			reloadBlock()
		}
		self.buildBlueTableau(index: .BlueTableau) {
			reloadBlock()
		}
	}
}

// MARK: - Tableau Construction
extension MyViewAdapter {
	private func buildRedTableau(index: RGBTableaux, reloadBlock: @escaping () -> Void) {
		viewModel.loadRedData { (data: [RedCellViewData]) in
			let bucketAdapter = self.tableau.bucketAdapter4()
			bucketAdapter.addItem(sectionItem: data, atIndex: index.rawValue)
			
			reloadBlock()
		}
	}
	
	private func buildGreenTableau(index: RGBTableaux, reloadBlock: @escaping () -> Void) {
		viewModel.loadGreenData { (redData: [GreenCellViewData]) in
			let bucketAdapter1 = self.tableau.bucketAdapter1()
			
			bucketAdapter1.pour(sectionModel: redData, into: index.rawValue)
			bucketAdapter1.pour(sectionModel: redData, into: index.rawValue)
			
			reloadBlock()
		}
	}
	
	private func buildBlueTableau(index: RGBTableaux, reloadBlock: @escaping () -> Void) {
		viewModel.loadBlueData { (data: BlueCellViewData) in
			let bucketAdapter4 = self.tableau.bucketAdapter4()
			let tenBlueCellRows = Array.init(repeating: data, count: 10)
			
			bucketAdapter4.addItem(sectionItem: tenBlueCellRows, atIndex: index.rawValue)

			reloadBlock()
		}
	}
}

// MARK: - Tableau Operations
extension MyViewAdapter {
	public func addRedFilterOnTableau() {
		let indexSet: IndexSet = self.tableau.informationAdapter().tableMatrixIndexSet()
		let redFilter: ((Any) -> Bool) = { data in
			return (data as? RedCellViewData) == nil ? false : true
		}
		
		tableau.apply(filter: redFilter, onIndexSet: indexSet)
	}
}
