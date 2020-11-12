import Foundation

class helper

{
    func printDate(tekst: String)
    {
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSS"
        let dateString = df.string(from: date)
        print(tekst + ":  " + dateString)
    }
}
