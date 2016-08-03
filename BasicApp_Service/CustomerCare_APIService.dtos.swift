/* Options:
Date: 2016-07-31 13:51:28
SwiftVersion: 2.0
Version: 4.060
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: http://192.168.1.200:9000/api

//BaseClass: 
//AddModelExtensions: True
//AddServiceStackTypes: True
//IncludeTypes: 
//ExcludeTypes: 
//ExcludeGenericBaseTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//InitializeCollections: True
//TreatTypesAsStrings: 
//DefaultImports: Foundation
*/

import Foundation;

// @Route("/hello")
// @Route("/hello/{Name}")
public class Hello : IReturn
{
    public typealias Return = HelloResponse

    required public init(){}
}

public class HelloResponse
{
    required public init(){}
    public var result:String?
    public var companyName:String?
}


extension Hello : JsonSerializable
{
    public static var typeName:String { return "Hello" }
    public static var metadata = Metadata.create([
        ])
}

extension HelloResponse : JsonSerializable
{
    public static var typeName:String { return "HelloResponse" }
    public static var metadata = Metadata.create([
            Type<HelloResponse>.optionalProperty("result", get: { $0.result }, set: { $0.result = $1 }),
            Type<HelloResponse>.optionalProperty("companyName", get: { $0.companyName }, set: { $0.companyName = $1 }),
        ])
}

