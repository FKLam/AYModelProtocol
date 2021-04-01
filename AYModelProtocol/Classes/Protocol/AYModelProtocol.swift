//
//  AYModelProtocol.swift
//  AYModelProtocol
//
//  Created by amg on 2021/3/31.
//

import Foundation
import SwiftyJSON
/// model 基础协议
public protocol AYModelProtocol {
    init?(json:JSON)
}
