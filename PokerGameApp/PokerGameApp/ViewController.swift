import UIKit

class ViewController: UIViewController {
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let backgroundImage = UIImage(named: "bg_pattern.png") {
            self.view.backgroundColor = UIColor(patternImage: backgroundImage)
        }
        
        setupStackView()
        
        for _ in 0...6 {
            let cardImageView = CardImageView(frame: CGRect())
            stackView.addSubview(cardImageView)
        }
        stackView.axis = .vertical
        stackView.alignment = .fill
    }
    
    func setupStackView() {
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let aspectRatio: CGFloat = 1.27 / 7
        
        NSLayoutConstraint.activate([
            self.stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8),
            self.stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.stackView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor),
            self.stackView.heightAnchor.constraint(equalTo: self.stackView.widthAnchor, multiplier: aspectRatio)
        ])
    }
    
}
