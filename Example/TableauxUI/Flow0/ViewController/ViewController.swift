//
//  ViewController.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/20/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI
import UIKit

public class ViewController: UIViewController {
	
	let tableauxViewAdapter: MyViewAdapter
	let tableauxView: TableauxView
	var tableauxPort: TableauxPort
	
	public init(viewAdapter: MyViewAdapter) {
		self.tableauxViewAdapter = viewAdapter
		self.tableauxView = TableauxView(frame: .zero, style: .plain)
		self.tableauxPort = TableauxPort(tableau: viewAdapter.tableau, tableauxUIView: tableauxView)
		
		super.init(nibName: nil, bundle: nil)
		
		// Register Types
		let types = [MyRedCell.self, MyBlueCell.self, MyGreenCell.self]
		tableauxView.registerCellTypes(types: types)

		tableauxPort.attach(delegateEndpoint: endpoint(message:))
		tableauxPort.attach(selectionEndpoint: selectionEndpoint(data:))
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func endpoint(message: UIMessage) {
		print(message)
	}
	func selectionEndpoint(data: Any?) {
		print(data)
	}
}

// Lifecycle
extension ViewController {
	public override func viewDidLoad() {
		super.viewDidLoad()
		self.view = tableauxView

		// Builds the entire Tableau!
		tableauxViewAdapter.buildTableaux {
			self.tableauxView.reloadData()
		}
	}
}
