//
//  DynamicJSONTests.swift
//  DynamicJSONTests
//
//  Created by Andrew Vergunov on 9/26/18.
//  Copyright © 2018 Andrew Vergunov. All rights reserved.
//

import XCTest
@testable import DynoJSON

class DynamicJSONTests: XCTestCase {
    
    func testStringValue() {
        let response: JSON = facebookJsonResponse()
        let nextPaging: String? = response.comments?.paging?.next
        XCTAssert(nextPaging == "https://graph.facebook.com/1809938745705498/comments?access_token=valid_token_goes_here")
    }
    
    func testIntValue() {
        let response: JSON = facebookJsonResponse()
        let intValue: Int? = response.comments?.paging?.integerValue
        XCTAssert(intValue == 7)
    }
    
    func testArrayJsonValue() {
        let response: JSON = facebookJsonResponse()
        let arrayJson: [JSON]? = response.comments?.data
        XCTAssert(arrayJson?.count == 3)
    }
    
    func testValueOfArrayElement() {
        let response: JSON = facebookJsonResponse()
        let arrayJson: [JSON]? = response.comments?.data
        let message: String? = arrayJson?.first?.message
        XCTAssert(message == ":) :) :)")
    }
    
    func testDoubleValue() {
        let response: JSON = facebookJsonResponse()
        let doubleValue: Double? = response.comments?.paging?.cursors?.doubleValue
        XCTAssert(doubleValue == 12.5)
    }
}
