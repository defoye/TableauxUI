//
//  MyCoordinator.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/20/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import UIKit

public class MyCoordinator: Coordinator {
	
	public let navigationController: UINavigationController
	
	public required init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	public func start() {
		let viewModel = MyViewModel()
		let viewAdapter = MyViewAdapter(viewModel: viewModel)
		let viewController = ViewController(viewAdapter: viewAdapter)
		self.navigationController.pushViewController(viewController, animated: true)
	}
}
