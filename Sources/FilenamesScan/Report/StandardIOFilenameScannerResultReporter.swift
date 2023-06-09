//
//  StandardIOFilenameScannerResultReporter.swift
//  
//
//  Created by Zehua Chen on 5/20/23.
//

import Foundation

public struct StandardIOFilenameScannerResultReporter: FilenameScannerResultReporter {
  public init() {}
  
  public func report(_ result: FilenameScannerResult) {
    switch result {
    case .invalid(let url, let os):
      print("Invalid \(os): \(url.relativePath)")
    default:
      break
    }
  }
}
