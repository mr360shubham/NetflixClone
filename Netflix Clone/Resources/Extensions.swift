//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Shubam Vijay Yeme on 14/07/23.
//

import Foundation

extension String {
    func capitalizedFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
