//
//  NewsDetail.swift
//  MyFirstProject
//
//  Created by std109 on 6/1/17.
//  Copyright © 2017 IndyZaLab. All rights reserved.
//

import UIKit
import ObjectMapper


class NewsDetail:Mappable
{
    var backgroundColorStr:String = "#FFFFFF" //Default = White
    var content:String = ""
    var createdAt:String = ""
    var id:Int = -1
    var imageUrl:[String] = []
    var lat:Double?
    var link:String = ""
    var lng:Double?
    private var primaryColorStr:String = "#000000" //Default = Black
    var secondaryColorStr:String = "#D1D1D1" //Default = Grey
    var updatedAt:String = ""
    
    var primaryColor:UIColor{
   
    return UIColor(hexString: self.primaryColorStr)
    }
    var secondaryColor:UIColor{
        
        return UIColor(hexString: self.secondaryColorStr)
    }
    
    var backgroundColor:UIColor{
        
        return UIColor(hexString: self.backgroundColorStr)
    }
    
    
    

    required init(map: Map){
    }
    
    
    
    
    
    func mapping(map: Map){
        self.backgroundColorStr <- map["background_color"]
        self.content <- map["content"]
        self.createdAt <- map["created_at"]
        self.id <- map["id"]
        self.imageUrl <- map["image_url"]
        self.lat <- map["lat"]
        self.link <- map["link"]
        self.lng <- map["lng"]
        self.primaryColorStr <- map["primary_color"]
        self.secondaryColorStr <- map["secondary_color"]
        self.updatedAt <- map["updated_at"]
        
        
    }
    
}



