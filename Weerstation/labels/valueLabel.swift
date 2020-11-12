import Foundation
import UIKit

class valueLabel: UILabel {
    
    func decorate()
    {
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        backgroundColor = #colorLiteral(red: 0.480438292, green: 0.6141300201, blue: 0.5867120624, alpha: 1)
        textAlignment = .center
        font = UIFont(name: "Staatliches Regular", size: 45)
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
