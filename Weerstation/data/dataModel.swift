import Foundation
import UIKit

class dataModel
{    
    var json = dataLoad().loadText(url: connectionURL.URLString + "metingen.json")
    var tempBinnenChartData = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBinnen.txt")
    var tempBuitenChartData = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBuiten.txt")
    var tempBinnenChartDataHours = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBinnenHours.txt")
    var tempBuitenChartDataHours = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBuitenHours.txt")
    
    func dataUpdate()    {
        json = dataLoad().loadText(url: connectionURL.URLString + "metingen.json")
        tempBinnenChartData = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBinnenHours.txt")
        tempBuitenChartData = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBuitenHours.txt")
        tempBinnenChartDataHours = dataLoad().loadText(url: connectionURL.URLString +  "iOS-tempBinnenHours.txt")
        tempBuitenChartDataHours = dataLoad().loadText(url: connectionURL.URLString + "iOS-tempBuitenHours.txt")
        }
}
