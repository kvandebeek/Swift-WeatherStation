import XCTest
@testable import Weerstation

class tests_dataLoad: XCTestCase {

    func test_dataLoad_DataCanBeRead_Positive()
    {
        //Given
        let dataLoader = dataLoad()
        let urlString: String = "https://realtime.fookus.be/realtime/php/output/testdata.txt"
        
        //When
        let checkString: String = dataLoader.loadText(url: urlString)
                
        //Then
        XCTAssertEqual(String(checkString.prefix(4)), "1234", "Incorrect loading!")
        print(checkString)
    }
    
    func test_dataLoad_DataCanBeRead_Negative()
    {
        //Given
        let dataLoader = dataLoad()
        let urlString: String = "https://realtime.fookus.be/realtime/php/output/testdata.txt"
        
        //When
        let checkString: String = dataLoader.loadText(url: urlString)
                
        //Then
        XCTAssertNotEqual(String(checkString.prefix(4)), "4567", "Incorrect loading!")
        print(checkString)
    }
    
    func test_dataLoad_URLCorruptNegative1()
    {
        //Given
        let dataLoader = dataLoad()
        let urlString: String = "https://realtime.fookus.be/realtime/php/output/testdata.txt"
        
        //When
        let checkString: String = dataLoader.loadText(url: urlString)
                
        //Then
        XCTAssertNotEqual(String(checkString.prefix(4)), "4567", "Incorrect loading!")
        print(checkString)
    }
    
    func test_dataLoad_URLCorruptNegative2()
    {
        //Given
        let dataLoader = dataLoad()
        let urlString: String = "https://realtime.fookus.be/realtime/php/output/testdatas.txt"
        
        //When
        let checkString: String = dataLoader.loadText(url: urlString)
                
        //Then
        XCTAssertNotEqual(String(checkString.prefix(4)), "1234", "Incorrect loading!")
        print(checkString)
    }
    
    
}
