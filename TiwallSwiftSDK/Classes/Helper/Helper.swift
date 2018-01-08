//
//  Helper.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation

func convertDictToArrayKeys(dict : Dictionary<String,String>)->[String]{
    var keys = [String]()
    for item in dict{
        keys.append(item.key)
    }
    return keys
}
func convertDictToArrayValues(dict : Dictionary<String,String>)->[String]{
    var values = [String]()
    for item in dict{
        values.append(item.value)
    }
    return values
}
func createPersianNumberFromString(_ str : String)->String{
    var resultStr = str
    let largeNumber = resultStr
    var numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = NumberFormatter.Style.decimal
    if let number = Int(largeNumber){
        resultStr = numberFormatter.string(from: NSNumber(value: number))!
    }
    
    resultStr = resultStr.replacingOccurrences(of: "9", with:"۹", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "8", with:"۸", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "7", with:"۷", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "6", with:"۶", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "5", with:"۵", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "4", with:"۴", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "3", with:"۳", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "2", with:"۲", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "1", with:"۱", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "0", with:"۰", options: NSString.CompareOptions.literal, range: nil)
    return resultStr
}
func replaceDoubleQuote(_ str : String) -> String {
    var resultStr = str
    resultStr = resultStr.replacingOccurrences(of: "»", with:"\"", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "«", with:"\"", options: NSString.CompareOptions.literal, range: nil)
    resultStr = resultStr.replacingOccurrences(of: "&quot;", with:"\"", options: NSString.CompareOptions.literal, range: nil)
    
    return resultStr
}
func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
