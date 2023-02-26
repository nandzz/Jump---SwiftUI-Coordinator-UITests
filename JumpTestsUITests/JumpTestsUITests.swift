import XCTest

final class JumpTestsUITests: XCTestCase {
    
    func test_app_all_push_presentation_with_back_to_root() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["PushFromA"].tap()
        app.buttons["PushFromB"].tap()
        app.buttons["PushFromC"].tap()
        app.buttons["PushFromD"].tap()
        app.buttons["PushFromE"].tap()
        app.buttons["PushFromF"].tap()
        app.buttons["RootFromG"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 6))
    }
    
    func test_app_all_fullScreen_presentation_with_back_to_root() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["FullScreenFromA"].tap()
        app.buttons["FullScreenFromB"].tap()
        app.buttons["FullScreenFromC"].tap()
        app.buttons["FullScreenFromD"].tap()
        app.buttons["FullScreenFromE"].tap()
        app.buttons["FullScreenFromF"].tap()
        app.buttons["RootFromG"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 6))
    }
    
    func test_app_all_sheet_presentation_with_back_to_root() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["SheetFromA"].tap()
        app.buttons["SheetFromB"].tap()
        app.buttons["SheetFromC"].tap()
        app.buttons["SheetFromD"].tap()
        app.buttons["SheetFromE"].tap()
        app.buttons["SheetFromF"].tap()
        app.buttons["RootFromG"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 6))
    }
    
    func test_app_all_top_presentation_with_back_to_root() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["TopFromA"].tap()
        app.buttons["TopFromB"].tap()
        app.buttons["TopFromC"].tap()
        app.buttons["TopFromD"].tap()
        app.buttons["TopFromE"].tap()
        app.buttons["TopFromF"].tap()
        app.buttons["RootFromG"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 6))
    }
    
    func test_app_all_swap_presentation_with_back_to_root() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["SwapFromA"].tap()
        app.buttons["SwapFromB"].tap()
        app.buttons["SwapFromC"].tap()
        app.buttons["SwapFromD"].tap()
        app.buttons["SwapFromE"].tap()
        app.buttons["SwapFromF"].tap()
        app.buttons["RootFromG"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 6))
    }
    
    func test_app_dismiss_and_present() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["PushFromA"].tap()
        app.buttons["PushFromB"].tap()
        app.buttons["Dismiss and PresentFromC"].tap()
        
        let viewA = app.staticTexts["View C"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 3))
    }
    
    func test_app_complex_dismiss_and_present() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["PushFromA"].tap()
        app.buttons["PushFromB"].tap()
        app.buttons["Dismiss and PresentFromC"].tap()
        
        app.buttons["SheetFromC"].tap()
        app.buttons["FullScreenFromD"].tap()
        
        app.buttons["Dismiss and PresentFromE"].tap()
        
        let viewA = app.staticTexts["View E"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 3))
    }
    
    func test_complex_navigation_with_back_to_root() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["PushFromA"].tap()
        app.buttons["FullScreenFromB"].tap()
        app.buttons["SheetFromC"].tap()
        app.buttons["PushFromD"].tap()
        app.buttons["SwapFromE"].tap()
        app.buttons["RootFromF"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 3))
    }
    
    func test_navigation_back_button() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["PushFromA"].tap()
        app.buttons["BackFromB"].tap()
        
        let viewA = app.staticTexts["View A"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 3))
    }
    
    func test_simple_push() {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["PushFromA"].tap()
        app.buttons["PushFromB"].tap()
        app.buttons["PushFromC"].tap()
        
        let viewA = app.staticTexts["View D"]
        XCTAssertTrue(viewA.waitForExistence(timeout: 6))
    }
}
