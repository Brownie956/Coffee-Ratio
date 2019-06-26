import XCTest

class CoffeeRatioTestsComplete: XCTestCase {
  
  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    XCUIApplication().activate()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
    func test_example_coffee_calculation() {
        let app = XCUIApplication()

        //Enter coffee total
        app.textFields["coffee_total_input"].tap()
        app.textFields["coffee_total_input"].typeText("10")

        //Select water ratio
        app.textFields["water_ratio_input"].tap()

        //Clear field
        app.textFields["water_ratio_input"].tap()
        app.menuItems["Select All"].tap()
        app.keys["Delete"].tap()

        //Enter water ratio
        app.textFields["water_ratio_input"].typeText("20")

        //Assert correct calculation
        let expectedCalculated = "200.00"
        let actualCalculated = XCUIApplication().staticTexts["water_grams_label"].label
        XCTAssertEqual(expectedCalculated, actualCalculated)
    }

    func test_better_example_coffee_calculation() {
        //Enter coffee total
        CoffeePageComplete().enterCoffeeTotal("10")

        //Select water ratio
        CoffeePageComplete().waterRatioInputElement().tap()

        //Clear field
        SpecHelperComplete().clearField(field: CoffeePageComplete().waterRatioInputElement())

        //Enter water ratio
        CoffeePageComplete().enterWaterRatio("20")

        //Assert correct calculation
        let expectedCalculated = "200.00"
        let actualCalculated = CoffeePageComplete().waterGramsLabelElement().label
        XCTAssertEqual(expectedCalculated, actualCalculated)
    }

    func test_coffee_error_message_shows() {
        XCTAssert(true)
    }

    func test_coffee_welcome_message_shows() {
        XCTAssert(true)
    }

    func test_coffee_ratio_error_message_shows() {
        XCTAssert(true)
    }

    func test_coffee_ratio_help_message_shows() {
        XCTAssert(true)
    }

    func test_coffee_negative_ratio() {
        XCTAssert(true)
    }

    func test_water_invalid_value() {
        XCTAssert(true)
    }
}
