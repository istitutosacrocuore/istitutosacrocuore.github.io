//  MessageCell.swift

import UIKit

class ImageCell: UITableViewCell {
    let sourceIndicator = CAShapeLayer()
    let displayImageView = UIImageView()
    
    static let defaultLayoutMargins: UIEdgeInsets = {
        return UIEdgeInsets(top: 20.0, left: 55.0, bottom: 20.0, right: 20.0)
    }()
    
    var displayImage: UIImage? {
        get {
            return displayImageView.image
        }
        set {
            displayImageView.image = newValue
        }
    }
    
    class var reuseIdentifier: String {
        return "ImageCell"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = nil
        selectionStyle = .none
        layoutMargins = ImageCell.defaultLayoutMargins
        
        sourceIndicator.fillColor = UIColor(white: 0.0, alpha: 0.9).cgColor
        layer.addSublayer(sourceIndicator)
        
        displayImageView.contentMode = .scaleAspectFit
        displayImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(displayImageView)
        
        NSLayoutConstraint.activate([
            displayImageView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            displayImageView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            displayImageView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            displayImageView.widthAnchor.constraint(equalTo:
                displayImageView.heightAnchor, multiplier: 1)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Layout
    
    override func layoutSubviews() {
        sourceIndicator.frame = CGRect(x: layoutMargins.left - 20,
                                       y: layoutMargins.top,
                                       width: 5,
                                       height: bounds.height - layoutMargins.top - layoutMargins.bottom)
        sourceIndicator.path = UIBezierPath(roundedRect: sourceIndicator.bounds, cornerRadius: sourceIndicator.bounds.width / 2.0).cgPath
        
        super.layoutSubviews()
    }
}
