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
	
	func testSignFormModelValidator_WhenValidEmailFormatProvided_ShouldReturnFalse() {
		let isEmailValid = sut.isValidEmailFormat(email: "jaja")
		XCTAssertFalse(isEmailValid, "The isEmailValid should have returned FALSE for email format but it has returned TRUE")
	}
	
	func testSignFormModelValidator_WhenValidPasswordLengthProvided_ShoulReturnTrue() {
		let isPasswordValid = sut.isPasswordValid(password: "12345678")
		XCTAssertTrue(isPasswordValid, "The isPasswordValid should have returned TRUE for a valid o length but returned FALSE")
	}
	
	func testSignFormModelValidator_WhenValidPasswordLengthLessMinProvided_ShoulReturnFalse() {
		let isPasswordValid = sut.isPasswordValid(password: "123")
		XCTAssertFalse(isPasswordValid, "The isPasswordValid should have returned FALSE when the length is less than the min but it has returned TRUE")
	}
	
	func testSignFormModelValidator_WhenValidPasswordLengthBiggerMaxProvided_ShoulReturnFalse() {
		let isPasswordValid = sut.isPasswordValid(password: "123456789123456789")
		XCTAssertFalse(isPasswordValid, "The isPasswordValid should have returned FALSE when the length is bigger than the max but it has returned TRUE")
	}
	
	func testSignFormModelValidator_WhenValidPasswordEqualProvided_ShoulReturnTrue() {
		let isPasswordValid = sut.isPasswordMatch(password: "12345678", repeatPassword: "12345678")
		XCTAssertTrue(isPasswordValid, "The isPasswordValid should have returned TRUE when the repeatPassword is match to the password but it has returned FALSE")
	}
	
	func testSignFormModelValidator_WhenValidPasswordNotEqualProvided_ShoulReturnFalse() {
		let isPasswordValid = sut.isPasswordMatch(password: "12345678", repeatPassword: "123678")
		XCTAssertFalse(isPasswordValid, "The isPasswordValid should have returned FALSE when the repeatPassword is not match to the password but it has returned TRUE")
	}
}

