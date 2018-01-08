//
//  PageModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/7/18.
//

import Foundation
public class PageModel {
    var id : Int?
    var urn : String?
    var type : PageType?
    public enum PageType:String {
        case performance = "performance"
        case exhibition = "exhibition"
        case training = "training"
        case conference = "conference"
        case tour = "tour"
        case event = "event"
        case membership = "membership"
        case film = "film"
        case music_album = "music_album"
        case music_track = "music_track"
        case product = "product"
        case book = "book"
    }
    public enum PageBehaviors:String {
        case event = "event"
        case product = "product"
    }
    var behavior : PageBehaviors?
    var title : String?
    var title_prefix : String?
    var price : Price?
    var discount : Discount?
    var spec : PageSpecModel?
    var has : Has?
    var sale : SaleModel?
    public enum SaleMethod:String {
        case event = "event"
        case event_seat = "event_seat"
        case product = "product"
        case product_shipping = "product_shipping"
        case free = "free"
    }
    public enum DeliverType : String {
        case receipt = "receipt"
        case ticket = "ticket"
        case receipt_station = "receipt_station"
    }
    var subject : SubjectModel?
    var image : ImageModel?
    var cover : ImageModel?
    var parent_id : Int?
    var promo_desc : String?
    var short_desc : String?
    var desc : String?
    var url : String?
    static func parse(rawJson: Dictionary<String,Any>)->PageModel{
        let model = PageModel()
        if let temp = rawJson["id"] as? Int{
            model.id = temp
        }
        if let temp = rawJson["urn"] as? String{
            model.urn = temp
        }
        if let temp = rawJson["type"] as? String{
            model.type = PageType(rawValue: temp)
        }
        if let temp = rawJson["behavior"] as? String{
            model.behavior = PageBehaviors(rawValue: temp)
        }
        if let temp = rawJson["title"] as? String{
            model.title = temp
        }
        if let temp = rawJson["title_prefix"] as? String{
            model.title_prefix = temp
        }
        if let temp = rawJson["title_prefix"] as? String{
            model.title_prefix = temp
        }
        if let temp = rawJson["price"] as? Dictionary<String,Any>{
            model.price = Price.parse(rawJson: temp)
        }
        if let temp = rawJson["discount"] as? Dictionary<String,Any>{
            model.discount = Discount.parse(rawJson: temp)
        }
        if let temp = rawJson["spec"] as? Dictionary<String,Any>{
            model.spec = PageSpecModel.parseSpec(rawJson: temp)
        }
        if let temp = rawJson["has"] as? Dictionary<String,Any>{
            model.has = Has.parse(rawJson: temp)
        }
        if let temp = rawJson["sale"] as? Dictionary<String,Any>{
            model.sale = SaleModel.parse(rawJson: temp)
        }
        if let temp = rawJson["subject"] as? Dictionary<String,Any>{
            model.subject = SubjectModel.parse(rawJson: temp)
        }
        if let temp = rawJson["image"] as? Dictionary<String,Any>{
            model.image = ImageModel.parse(rawJson: temp)
        }
        if let temp = rawJson["cover"] as? Dictionary<String,Any>{
            model.cover = ImageModel.parse(rawJson: temp)
        }
        if let temp = rawJson["parent_id"] as? Int{
            model.parent_id = temp
        }
        if let temp = rawJson["promo_desc"] as? String{
            model.promo_desc = temp
        }
        if let temp = rawJson["short_desc"] as? String{
            model.short_desc = temp
        }
        if let temp = rawJson["desc"] as? String{
            model.desc = temp
        }
        if let temp = rawJson["url"] as? String{
            model.url = temp
        }
        return model
    }
    static func parseArray(jsonArr: [Dictionary<String,Any>])->[PageModel]{
        var models = [PageModel]()
        for item in jsonArr{
            if let json = item as? Dictionary<String,Any>{
                let model = PageModel.parse(rawJson: json)
                models.append(model)
            }
        }
        return models
    }
    class Price {
        var text : String?
        var desc : String?
        var list : [Int]?
        static func parse(rawJson: Dictionary<String,Any>)->Price{
            let model = Price()
            if let temp = rawJson["text"] as? String{
                model.text = temp
            }
            if let temp = rawJson["desc"] as? String{
                model.desc = temp
            }
            return model
        }
    }
    class Discount {
        var text : String?
        static func parse(rawJson: Dictionary<String,Any>)->Discount{
            let model = Discount()
            if let temp = rawJson["text"] as? String{
                model.text = temp
            }
            return model
        }
    }
    
    class Has{
        var sale : Bool?
        var discount : Bool?
        var child_pages : Bool?
        var news : Bool?
        var photoalbum : Bool?
        var podcast : Bool?
        var video : Bool?
        static func parse(rawJson: Dictionary<String,Any>)->Has{
            let model = Has()
            if let temp = rawJson["sale"] as? Bool{
                model.sale = temp
            }
            if let temp = rawJson["discount"] as? Bool{
                model.discount = temp
            }
            if let temp = rawJson["child_pages"] as? Bool{
                model.child_pages = temp
            }
            if let temp = rawJson["news"] as? Bool{
                model.news = temp
            }
            if let temp = rawJson["photoalbum"] as? Bool{
                model.photoalbum = temp
            }
            if let temp = rawJson["podcast"] as? Bool{
                model.podcast = temp
            }
            if let temp = rawJson["video"] as? Bool{
                model.video = temp
            }
            return model
        }
        
    }
    
    
}
