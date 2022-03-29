import UIKit

class CardImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image = UIImage(named: "card-back")
        
        translatesAutoresizingMaskIntoConstraints = false
        let aspectRatio: CGFloat = 1.27
        heightAnchor.constraint(equalTo: widthAnchor, multiplier: aspectRatio).isActive = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
