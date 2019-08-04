//
//  MyGreenCell.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/21/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public class MyGreenCell: TableauCell, CellDelegateAdapter {
	weak var delegate: TableauxDataSourceDelegateAdapter?
	public func addDelegateAdapter(delegate: TableauxDataSourceDelegateAdapter) {
		self.delegate = delegate
	}
	
	public override func configure(data: Any?) {
		self.backgroundColor = .green
		
		delegate?.relay(message: g())
	}
}

struct g: UIMessage {}
