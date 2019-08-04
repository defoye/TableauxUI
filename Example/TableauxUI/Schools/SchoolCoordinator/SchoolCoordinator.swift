//
//  SchoolCoordinator.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import UIKit

public class SchoolCoordinator: Coordinator {
	
	public let navigationController: UINavigationController
	
	required public init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	public func start() {

		let viewModel = SchoolViewModel()
		let viewAdapter = SchoolViewAdapter(viewModel: viewModel)
		let viewController = SchoolViewController(viewAdapter: viewAdapter)
		
		self.navigationController.pushViewController(viewController, animated: true)
	}
}
