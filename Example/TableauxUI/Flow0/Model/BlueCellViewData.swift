//
//  BlueCellViewData.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/21/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public struct BlueCellViewData {
	let color: String = "blue"
}
extension BlueCellViewData: TableauDataAdapter {
	public var constantHeight: Float? {
		return nil
	}
	
	public var identifier: String {
		return MyBlueCell.reuseIdentifier
	}
}
