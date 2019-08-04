//
//  SchoolModels.swift
//  TableauxUI
//
//  Created by Ernest DeFoy on 7/22/19.
//  Copyright © 2019 Ernest DeFoy III. All rights reserved.
//

import Foundation

public typealias SchoolList = [School]

// MARK: - School
public struct School: Codable {
	let dbn, schoolName: String
	let year: Year
	let totalEnrollment, gradePkHalfDayFullDay, gradeK, grade1: String
	let grade2, grade3, grade4, grade5: String
	let grade6, grade7, grade8, grade9: String
	let grade10, grade11, grade12, female1: String
	let female2, male1, male2, asian1: String
	let asian2, black1, black2, hispanic1: String
	let hispanic2, multipleRaceCategoriesNotRepresented1, multipleRaceCategoriesNotRepresented2, white1: String
	let white2, studentsWithDisabilities1, studentsWithDisabilities2, englishLanguageLearners1: String
	let englishLanguageLearners2, poverty1, poverty2, economicNeedIndex: String
	
	enum CodingKeys: String, CodingKey {
		case dbn
		case schoolName = "school_name"
		case year
		case totalEnrollment = "total_enrollment"
		case gradePkHalfDayFullDay = "grade_pk_half_day_full_day"
		case gradeK = "grade_k"
		case grade1 = "grade_1"
		case grade2 = "grade_2"
		case grade3 = "grade_3"
		case grade4 = "grade_4"
		case grade5 = "grade_5"
		case grade6 = "grade_6"
		case grade7 = "grade_7"
		case grade8 = "grade_8"
		case grade9 = "grade_9"
		case grade10 = "grade_10"
		case grade11 = "grade_11"
		case grade12 = "grade_12"
		case female1 = "female_1"
		case female2 = "female_2"
		case male1 = "male_1"
		case male2 = "male_2"
		case asian1 = "asian_1"
		case asian2 = "asian_2"
		case black1 = "black_1"
		case black2 = "black_2"
		case hispanic1 = "hispanic_1"
		case hispanic2 = "hispanic_2"
		case multipleRaceCategoriesNotRepresented1 = "multiple_race_categories_not_represented_1"
		case multipleRaceCategoriesNotRepresented2 = "multiple_race_categories_not_represented_2"
		case white1 = "white_1"
		case white2 = "white_2"
		case studentsWithDisabilities1 = "students_with_disabilities_1"
		case studentsWithDisabilities2 = "students_with_disabilities_2"
		case englishLanguageLearners1 = "english_language_learners_1"
		case englishLanguageLearners2 = "english_language_learners_2"
		case poverty1 = "poverty_1"
		case poverty2 = "poverty_2"
		case economicNeedIndex = "economic_need_index"
	}
}

enum Year: String, Codable {
	case the201314 = "2013-14"
	case the201415 = "2014-15"
	case the201516 = "2015-16"
	case the201617 = "2016-17"
	case the201718 = "2017-18"
}

