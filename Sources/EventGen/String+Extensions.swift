//
//  String+Extensions.swift
//  CSVToEvent
//
//  Created by Kieran Brown on 8/28/20.
//  Copyright © 2020 Voice. All rights reserved.
//

import Foundation

extension Substring.SubSequence {
    var string: String {String(self)}
}

extension String {

    func removeSpaces() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }

    func pascalCase(_ separator: Character = "_") -> String {
        self
            .split(separator: separator)  // Separate component words.
            .map(\.capitalized)           // Capitalize.
            .reduce("", +)                // Reduce into a single string.
    }

    func camelCase(_ separator: Character = "_") -> String {

        var components = self
            .split(separator: separator) // Separate component words.
            .map { String($0) }          // Convert back to String type.

        let first = components
            .removeFirst() // Remove the first word.
            .lowercased()  // Make sure it is lowercased.

        return
            components
                .map { $0.capitalized } // Capitalize all other words.
                .reduce(first, +)       // Reduce into first word.

    }

    static func lineBreaks(_ count: Int) -> String {
        count == 0
            ? ""
            : (0..<count).map({_ in "\n"}).reduce("", +)

    }

    static func spaces(_ count: Int) -> String {
        count == 0 ? "" : (0..<count).map({_ in " "}).reduce("", +)

    }

    static func tabs(_ count: Int) -> String {
        count == 0 ? "" : (0..<count).map({_ in "    "}).reduce("", +)

    }

    static let placeholder = "<#Name#>"

}
