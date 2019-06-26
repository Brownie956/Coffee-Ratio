import XCTest

class SpecHelperComplete {
    func clearField(field: XCUIElement) {
        field.tap()
        XCUIApplication().menuItems["Select All"].tap()
        XCUIApplication().keys["Delete"].tap()
    }
}
