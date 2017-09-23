//
//  PropertyTests.swift
//  Property
//
//  Created by Bernardo Breder.
//
//

import XCTest
@testable import PropertyTests

extension PropertyTests {

	static var allTests : [(String, (PropertyTests) -> () throws -> Void)] {
		return [
			("testCount", testCount),
			("testValue", testValue),
		]
	}

}

XCTMain([
	testCase(PropertyTests.allTests),
])

