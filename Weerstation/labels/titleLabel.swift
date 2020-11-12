import Foundation
import UIKit

class titleLabel: UILabel {
    
    func decorate()
    {
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.2549019608, blue: 0.2588235294, alpha: 1)
        textAlignment = .center
        font = UIFont(name: "Staatliches Regular", size: 20)
        translatesAutoresizingMaskIntoConstraints = false
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.decorate()
}
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.decorate()
    }
}
