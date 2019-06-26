import XCTest

class CoffeePageComplete {
    private let coffeeTotalInput = "coffee_total_input"
    private let coffeeRatioInput = "coffee_ratio_input"
    private let waterRatioInput = "water_ratio_input"
    private let waterGramsLabel = "water_grams_label"

    func coffeeRatioInputElement() -> XCUIElement {
        return XCUIApplication().textFields[coffeeRatioInput]
    }

    func waterRatioInputElement() -> XCUIElement {
        return XCUIApplication().textFields[waterRatioInput]
    }

    func coffeeTotalInputElement() -> XCUIElement {
        return XCUIApplication().textFields[coffeeTotalInput]
    }

    func waterGramsLabelElement() -> XCUIElement {
        return XCUIApplication().staticTexts[waterGramsLabel]
    }

    func enterCoffeeTotal(_ coffeeTotal: String) {
        coffeeTotalInputElement().tap()
        coffeeTotalInputElement().typeText(coffeeTotal)
    }

    func enterCoffeeRatio(_ coffeeRatio: String) {
        coffeeRatioInputElement().tap()
        coffeeRatioInputElement().typeText(coffeeRatio)
    }

    func enterWaterRatio(_ waterRatio: String) {
        waterRatioInputElement().tap()
        waterRatioInputElement().typeText(waterRatio)
    }
}
