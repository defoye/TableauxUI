//
//  MyRedCell.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/20/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public class MyRedCell: UITableViewCell {
	let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
}
extension MyRedCell: TableauCellProtocol {
	public func configure(data: Any?) {
		guard let data = data else { return }
		
		switch data {
		case let redData as RedCellViewData:
			configureWithRedData(redData: redData)
		case let redData2 as GreenCellViewData:
			configureWithRedData2(redData2: redData2)
		default:
			break
		}
	}
	
	private func configureWithRedData(redData: RedCellViewData) {
		self.backgroundColor = .red
		self.contentView.addSubview(textView)
		textView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([textView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
									 textView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
									 textView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
									 textView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)])
		
		textView.text = redData.text
		textView.isScrollEnabled = false
	}
	private func configureWithRedData2(redData2: GreenCellViewData) {
		self.backgroundColor = .red
		self.contentView.addSubview(textView)
		textView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([textView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
									 textView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
									 textView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
									 textView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)])
		
		textView.text = redData2.text
		textView.isScrollEnabled = false
	}
}
