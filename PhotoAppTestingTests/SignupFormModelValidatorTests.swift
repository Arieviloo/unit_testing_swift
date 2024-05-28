//
//  SignupFormModelValidator.swift
//  PhotoAppTestingTests
//
//  Created by Jadië Oliveira on 27/05/24.
//

import XCTest
@testable import PhotoAppTesting

class SignupFormModelValidatorTests: XCTestCase {
	var sut: SignupFormModelValidator!
	
	override func setUpWithError() throws {
		sut = SignupFormModelValidator()
	}
	
	override func tearDownWithError() throws {
		sut = nil
	}
	
	func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
		// Arrange
		
		// Act
		let isFirstNameValid = sut.isFirstNameValid(firstName: "Dojo")
		// Assert
		XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
		
	}
	
	func testSignFormModelValidator_WhenValidShortNameProvided_ShouldReturnFalse() {
		let isShortNameValid = sut.isFirstNameValid(firstName: "S")
		XCTAssertFalse(isShortNameValid, "The isShortNameValid should have returned FALSE for valid name that is shorter than 2 characters but it has returned TRUE")
	}
	
	func testSignFormModelValidator_WhenValidTooLongNameProvided_ShouldReturnFalse() {
		let isLongNameValid = sut.isFirstNameValid(firstName: "pneumoultramicroscopicossilicovulcanoconiótico")
		XCTAssertFalse(isLongNameValid, "The isLongNameValid shoulf have returned FALSE for first name that is long than \(SignupConstants.firstNameMaxLength) characters but it has returned TRUE")
	}
	
	func testSignFormModelValidator_WhenValidEmailFormatProvided_ShouldReturnTrue() {
		let isEmailValid = sut.isValidEmailFormat(email: "jaja@jaja.com")
		XCTAssertTrue(isEmailValid, "The isEmailValid should have returned TRUE for email format but it has returned FALSE")
	}
	
	func testSignFormMOdelValidator_WhenValidEmailFormatProvided_ShouldReturnFalse() {
		let isEmailValid = sut.isValidEmailFormat(email: "jaja")
		XCTAssertFalse(isEmailValid, "The isEmailValid should have returned FALSE for email format but it has returned TRUE")
	}
	
}

