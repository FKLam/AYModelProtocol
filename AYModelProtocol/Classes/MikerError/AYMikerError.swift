//
//  AYMikerError.swift
//  AYModelProtocol
//
//  Created by amg on 2021/3/31.
//

import Foundation

/// 请求超时
let NETTIMEOUT = 500000
/**
 *  JSON转换错误
 */
public struct AYMikerError : Error {
    public let domain: String
    public let code: Int
    public let message: String
    
    
    public init(_ domain:String,code:Int,message:String) {
        
        self.domain = domain
        self.code = code
        self.message = message
    }
    
    public init(_ code:Int,domain:String = "client error") {
        self.domain = domain
        self.code = code
        self.message =  "请求超时"
    }
    
    /// NSError类型的转换成MikerError
    ///
    /// - Parameter
    public init(error:NSError?) {
        if let error = error {
            self.domain = error.domain
            self.code = error.code
            self.message = error.localizedDescription
        }else{
            self.domain = "NSError error "
            self.code = NETTIMEOUT
            self.message = "请求超时"
        }
        
    }
}
