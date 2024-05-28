import UIKit

class SignupFormModelValidator {
	
	func isFirstNameValid(firstName: String) -> Bool {
		var returnValueName = true
		
		if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
			returnValueName = false
		}
		
		return returnValueName
	}
	
	func isValidEmailFormat(email: String) -> Bool {
		return NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: email)
	}
}
