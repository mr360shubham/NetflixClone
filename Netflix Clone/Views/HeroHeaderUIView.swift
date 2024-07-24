//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Shubam Vijay Yeme on 11/07/23.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let DownloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let playButton : UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()

    private let heroImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "crop2")
        return imageView
    }()
    
    
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(DownloadButton)
        applyconstraints()
       
        
    }
    
    private func applyconstraints(){
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let DownloadButtonConstraints = [
            DownloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
            DownloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            DownloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(DownloadButtonConstraints)
    }
    
    required init?(coder : NSCoder){
        fatalError()
    }
    func addimage(){
        addSubview(heroImageView)
        heroImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heroImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            heroImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            heroImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            heroImageView.topAnchor.constraint(equalTo: topAnchor)
        ])
        
    }
}
