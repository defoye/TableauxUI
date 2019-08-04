//
//  MyBlueCell.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/21/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI
import UIKit

public class MyBlueCell: UITableViewCell {
	
}

extension MyBlueCell: TableauCellProtocol {
	public func configure(data: Any?) {
		if let blueData = data as? BlueCellViewData {
			self.backgroundColor = .blue
		}
	}
}
