import Foundation
import UIKit

class spacerLabel: UILabel {
    
    func decorate()
    {
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textAlignment = .center
        font = UIFont(name: "Staatliches Regular", size: 15)
        translatesAutoresizingMaskIntoConstraints = false
        text = "text"
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.decorate()
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
