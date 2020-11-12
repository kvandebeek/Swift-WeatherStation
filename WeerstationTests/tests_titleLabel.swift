import XCTest
@testable import Weerstation

class tests_titleLabel: XCTestCase {

    func test_titleLabelTextColorIsCorrect_Positive1()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertEqual((testTitleLabel.textColor), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), "Color is not black")
        
    }
    
    func test_titleLabelTextColorIsCorrect_Positive2()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertNotEqual((testTitleLabel.textColor), UIColor.black, "Color is not black")
    }
    
    func test_titleLabelBackgroundColorIsCorrect_Positive1()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertEqual((testTitleLabel.backgroundColor), #colorLiteral(red: 0.1529411765, green: 0.2549019608, blue: 0.2588235294, alpha: 1), "Color is not black")
    }
    
    func test_titleLabelBackgroundColorIsCorrect_Positive2()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertNotEqual((testTitleLabel.textColor), UIColor.black, "Color is not black")
    }
    
    func test_titleLabelTextAlignmentIsCorrect_Positive1()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertEqual((testTitleLabel.textAlignment), NSTextAlignment.center, "Alignment is center-align")
    }
    
    func test_titleLabelTextAlignmentIsCorrect_Negative1()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertNotEqual((testTitleLabel.textAlignment), NSTextAlignment.left, "Alignment is not left-align")
    }
    
    func test_titleLabelTextAlignmentIsCorrect_Negative2()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertNotEqual((testTitleLabel.textAlignment), NSTextAlignment.right, "Alignment is not right-align")
    }
    
    func test_titleLabelFont_Positive()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertEqual(testTitleLabel.font, UIFont(name: "Staatliches Regular", size: 20), "Correct font used")
    }
    
    func test_titleLabeltranslatesAutoResizeMaskFalse_Positive1()
    {
        //Given
        let testTitleLabel = titleLabel()
        
        //When
        testTitleLabel.text = "test"
        
        //Then
        XCTAssertEqual(testTitleLabel.translatesAutoresizingMaskIntoConstraints, false, "Correct AutoResizeMaskFalse")
    }

}
