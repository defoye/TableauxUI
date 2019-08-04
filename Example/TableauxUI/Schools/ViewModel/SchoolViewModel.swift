//
//  SchoolDataManager.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import Foundation

public class SchoolViewModel {
	
	var state: SchoolList?
	let dataManager = SchoolDataManager()
	
	public func loadSchools(completion: @escaping ((SchoolList) -> Void)) {
		self.dataManager.fetchSchools { (schools: SchoolList) in
			self.state = schools
			
			completion(schools)
		}
	}
}
