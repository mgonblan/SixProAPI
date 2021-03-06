//
// AbpApiDefinitionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class AbpApiDefinitionAPI {
    /**

     - parameter includeTypes: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpHttpModelingApplicationApiDescriptionModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAbpApiDefinitionGet(includeTypes: Bool? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpHttpModelingApplicationApiDescriptionModel, Error> {
        return Future<VoloAbpHttpModelingApplicationApiDescriptionModel, Error>.init { promise in
            apiAbpApiDefinitionGetWithRequestBuilder(includeTypes: includeTypes).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     - GET /api/abp/api-definition
     - parameter includeTypes: (query)  (optional)
     - returns: RequestBuilder<VoloAbpHttpModelingApplicationApiDescriptionModel> 
     */
    open class func apiAbpApiDefinitionGetWithRequestBuilder(includeTypes: Bool? = nil) -> RequestBuilder<VoloAbpHttpModelingApplicationApiDescriptionModel> {
        let path = "/api/abp/api-definition"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "IncludeTypes": includeTypes?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpHttpModelingApplicationApiDescriptionModel>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
