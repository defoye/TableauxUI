//
//  SchoolCellViewData.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

// Later, we may need to perform "View Data things," such as format the school name.  For now, just hold on to the entire School model to work with it and see what we need. 
public struct SchoolViewData {
	let schoolName: String
	let school: School
	
	init(school: School) {
		self.schoolName = school.schoolName
		self.school = school
	}
}

extension SchoolViewData: TableauDataAdapter {
	public var identifier: String {
		return SchoolTableauCell.reuseIdentifier
	}
}

