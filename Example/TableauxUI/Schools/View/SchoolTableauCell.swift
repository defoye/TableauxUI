//
//  SchoolTableauCell.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import TableauxUI

public class SchoolTableauCell: TableauCell {
	
	let backView: UIView
	let schoolNameLabel: UILabel
	
	public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		schoolNameLabel = UILabel(frame: .zero)
		backView = UIView()
		super.init(style: style, reuseIdentifier: reuseIdentifier)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	public override func configure(data: Any?) {

		addSubview(schoolNameLabel)
		
		if let schoolViewData = data as? SchoolViewData {
			self.configure(withViewData: schoolViewData)
		}
	}
}

extension SchoolTableauCell {
	private func configure(withViewData schoolViewData: SchoolViewData) {
		self.backgroundColor = .clear
		
		setupBackView()
		setupSchoolNameLabel(schoolName: schoolViewData.schoolName)
	}
	
	private func setupBackView() {
		self.addSubview(backView)
		
		let backViewOffset: CGFloat = 5.0
		
		backView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([backView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: backViewOffset),
			backView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: backViewOffset),
			backView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -backViewOffset),
			backView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -backViewOffset)])
	}
	
	private func setupSchoolNameLabel(schoolName: String) {
		// constraints
		schoolNameLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([schoolNameLabel.topAnchor.constraint(equalTo: self.backView.topAnchor),
									 schoolNameLabel.leftAnchor.constraint(equalTo: self.backView.leftAnchor),
									 schoolNameLabel.rightAnchor.constraint(equalTo: self.backView.rightAnchor)])
		
		schoolNameLabel.text = schoolName
		schoolNameLabel.font = UIFont.systemFont(ofSize: 24)
	}
}
