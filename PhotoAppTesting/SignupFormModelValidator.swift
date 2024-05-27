import UIKit

class SignupFormModelValidator {
	
	func isFirstNameValid(firstName: String) -> Bool {
		var nameEmpty = true
		
		if firstName.isEmpty {
			nameEmpty = false
		}
		
		return nameEmpty
	}
}
