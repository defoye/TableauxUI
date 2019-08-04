//
//  SchoolViewAdapter.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public enum SchoolTableau: Int, CaseIterable {
	case Schools
}

public class SchoolViewAdapter {
	
	let tableau: Tableau
	let viewModel: SchoolViewModel
	
	init(viewModel: SchoolViewModel) {
		self.viewModel = viewModel
		self.tableau = Tableau(numberReservedTableaux: SchoolTableau.allCases.count)
	}
}

extension SchoolViewAdapter {
	
	public func buildTableaux(reloadBlock: @escaping (() -> Void)) {
		self.buildSchoolsTableau(index: .Schools) {
			reloadBlock()
		}
	}
	
	private func buildSchoolsTableau(index: SchoolTableau, reloadBlock: @escaping (() -> Void)) {
		self.viewModel.loadSchools { (schools: SchoolList) in
			
			let adapter = self.tableau.paintAdapter()
			let schoolModels = schools.map({ (school: School) -> SchoolViewData in
				return SchoolViewData(school: school)
			})
			
			adapter.paint(sectionModel: schoolModels, at: index.rawValue)
			
			reloadBlock()
		}
	}
}
