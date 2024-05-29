//
//  SignupWebServiceTests.swift
//  PhotoAppTestingTests
//
//  Created by Jadië Oliveira on 29/05/24.
//

import XCTest
@testable import PhotoAppTesting

final class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testSignupWebService_WhenGivenSucessfullResponse_ResturnsSucess() {
		let sut = SignupWebService()
		
		let signFormRequestModel = SignupFormRequestModel()
		sut.signup(whitForm: signFormRequestModel)
	}

}
