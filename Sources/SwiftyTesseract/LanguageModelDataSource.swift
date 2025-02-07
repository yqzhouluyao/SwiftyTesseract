//
//  LanguageModelDataSource.swift
//  SwiftyTesseract
//
//  Created by Antonio Zaitoun on 17/04/2020.
//  Copyright © 2020 Steven Sherry. All rights reserved.
//

import Foundation

/// Defines a way for Tesseract to locate the language training files to be consume
public protocol LanguageModelDataSource {

  /// Path for Tesseract to search for available languages
  var pathToTrainedData: String { get }
}

extension Bundle: LanguageModelDataSource {
  public var pathToTrainedData: String {
    // 获取应用的文档目录
    let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
    let documentsDirectory = paths[0]
    return (documentsDirectory as NSString).appendingPathComponent("tessdata")
  }
}
