//
//  ProtocolHelpers.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import UIKit

public protocol Coordinator {
	func start()
	var navigationController: UINavigationController { get }
	init(navigationController: UINavigationController)
}
