import Foundation
import UIKit

class dataLoad

{
    
    func loadText(url: String) -> String

        { let contents = ""
        if let url = URL(string: url) {
                do {
                    let contents = try String(contentsOf: url)
                    return contents
                } catch {
                    // contents could not be loaded
                }
            } else {
                // the URL was bad!
            }
        
        print(contents)
        return contents
        }
}

