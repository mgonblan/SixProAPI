//
// AbpTenantAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class AbpTenantAPI {
    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAbpMultiTenancyTenantsByIdIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto, Error> {
        return Future<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto, Error>.init { promise in
            apiAbpMultiTenancyTenantsByIdIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/abp/multi-tenancy/tenants/by-id/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto> 
     */
    open class func apiAbpMultiTenancyTenantsByIdIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto> {
        var path = "/api/abp/multi-tenancy/tenants/by-id/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter name: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAbpMultiTenancyTenantsByNameNameGet(name: String, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto, Error> {
        return Future<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto, Error>.init { promise in
            apiAbpMultiTenancyTenantsByNameNameGetWithRequestBuilder(name: name).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/abp/multi-tenancy/tenants/by-name/{name}
     - parameter name: (path)  
     - returns: RequestBuilder<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto> 
     */
    open class func apiAbpMultiTenancyTenantsByNameNameGetWithRequestBuilder(name: String) -> RequestBuilder<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto> {
        var path = "/api/abp/multi-tenancy/tenants/by-name/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpAspNetCoreMvcMultiTenancyFindTenantResultDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
