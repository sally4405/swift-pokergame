import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let backgroundImage = UIImage(named: "bg_pattern.png") {
            self.view.backgroundColor = UIColor(patternImage: backgroundImage)
        }
        
        (0...6).forEach { setupView(leadingTag: CGFloat($0)) }
    }
    
    func setupView(leadingTag: CGFloat) {
        let cardView = UIImageView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cardView)

        let aspectRatio: CGFloat = 1.27 / 1
        let widthRatio: CGFloat = 1 / 7
        
        cardView.image = UIImage(named: "card-back")

        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            cardView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: leadingTag * view.frame.width * widthRatio),
            cardView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: widthRatio),
            cardView.heightAnchor.constraint(equalTo: cardView.widthAnchor, multiplier: aspectRatio)
        ])
    }
    
}
