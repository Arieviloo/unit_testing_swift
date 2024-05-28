import UIKit

class SignupFormModelValidator {
	
	func isFirstNameValid(firstName: String) -> Bool {
		var returnValueName = true
		
		if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
			returnValueName = false
		}
		
		return returnValueName
	}
}
