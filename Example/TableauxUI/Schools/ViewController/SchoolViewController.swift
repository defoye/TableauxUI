//
//  SchoolViewController.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public class SchoolViewController: UIViewController {
	
	let schoolViewAdapter: SchoolViewAdapter
	let tableauxView: TableauxView
	let tableauPort: TableauxPort
	
	init(viewAdapter: SchoolViewAdapter) {
		self.schoolViewAdapter = viewAdapter
		self.tableauxView = TableauxView(frame: .zero, style: .plain)
		self.tableauPort = TableauxPort(tableau: viewAdapter.tableau, tableauxUIView: tableauxView)
		
		
		super.init(nibName: nil, bundle: nil)
		
		self.tableauxView.registerCellTypes(types: [SchoolTableauCell.self])
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension SchoolViewController {
	public override func viewDidLoad() {
		super.viewDidLoad()
		self.view = tableauxView
		
		schoolViewAdapter.buildTableaux {
			DispatchQueue.main.async {
				self.tableauxView.reloadData()
			}
		}
	}
}
