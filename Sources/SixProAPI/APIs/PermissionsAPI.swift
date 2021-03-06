//
// PermissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class PermissionsAPI {
    /**

     - parameter providerName: (query)  (optional)
     - parameter providerKey: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpPermissionManagementGetPermissionListResultDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiPermissionManagementPermissionsGet(providerName: String? = nil, providerKey: String? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpPermissionManagementGetPermissionListResultDto, Error> {
        return Future<VoloAbpPermissionManagementGetPermissionListResultDto, Error>.init { promise in
            apiPermissionManagementPermissionsGetWithRequestBuilder(providerName: providerName, providerKey: providerKey).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/permission-management/permissions
     - parameter providerName: (query)  (optional)
     - parameter providerKey: (query)  (optional)
     - returns: RequestBuilder<VoloAbpPermissionManagementGetPermissionListResultDto> 
     */
    open class func apiPermissionManagementPermissionsGetWithRequestBuilder(providerName: String? = nil, providerKey: String? = nil) -> RequestBuilder<VoloAbpPermissionManagementGetPermissionListResultDto> {
        let path = "/api/permission-management/permissions"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "providerName": providerName?.encodeToJSON(),
            "providerKey": providerKey?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpPermissionManagementGetPermissionListResultDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter providerName: (query)  (optional)
     - parameter providerKey: (query)  (optional)
     - parameter voloAbpPermissionManagementUpdatePermissionsDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiPermissionManagementPermissionsPut(providerName: String? = nil, providerKey: String? = nil, voloAbpPermissionManagementUpdatePermissionsDto: VoloAbpPermissionManagementUpdatePermissionsDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiPermissionManagementPermissionsPutWithRequestBuilder(providerName: providerName, providerKey: providerKey, voloAbpPermissionManagementUpdatePermissionsDto: voloAbpPermissionManagementUpdatePermissionsDto).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     - PUT /api/permission-management/permissions
     - parameter providerName: (query)  (optional)
     - parameter providerKey: (query)  (optional)
     - parameter voloAbpPermissionManagementUpdatePermissionsDto: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiPermissionManagementPermissionsPutWithRequestBuilder(providerName: String? = nil, providerKey: String? = nil, voloAbpPermissionManagementUpdatePermissionsDto: VoloAbpPermissionManagementUpdatePermissionsDto? = nil) -> RequestBuilder<Void> {
        let path = "/api/permission-management/permissions"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpPermissionManagementUpdatePermissionsDto)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "providerName": providerName?.encodeToJSON(),
            "providerKey": providerKey?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
