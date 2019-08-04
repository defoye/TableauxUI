//
//  NYCDataManager.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import Foundation

public struct SchoolDataManager {
	let schoolEndpoint = URL(string: "https://data.cityofnewyork.us/resource/s52a-8aq6.json")!
	
	public func fetchSchools(callback: @escaping ((SchoolList) -> Void)) {
		URLSession.shared.dataTask(with: schoolEndpoint) { (data, response, error) in
			if error != nil { fatalError("Network error") }
			guard let data = data else { fatalError("No data received") }
			do {
				let school = try JSONDecoder().decode(SchoolList.self, from: data)
				
				callback(school)
			} catch let err {
				fatalError(err.localizedDescription)
			}
		}.resume()
	}
}
