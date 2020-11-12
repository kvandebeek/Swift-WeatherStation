import Foundation
import UIKit

class datetimeLabel: UILabel {
    
    func decorate()
    {
        textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        textAlignment = .center
        font = UIFont(name: "Staatliches Regular", size: 15)
        translatesAutoresizingMaskIntoConstraints = false
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.decorate()
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
