//
// TenantAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class TenantAPI {
    /**

     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoVoloAbpTenantManagementApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsGet(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoVoloAbpTenantManagementApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoVoloAbpTenantManagementApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiMultiTenancyTenantsGetWithRequestBuilder(filter: filter, sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/multi-tenancy/tenants
     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoVoloAbpTenantManagementApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiMultiTenancyTenantsGetWithRequestBuilder(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoVoloAbpTenantManagementApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        let path = "/api/multi-tenancy/tenants"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Filter": filter?.encodeToJSON(),
            "Sorting": sorting?.encodeToJSON(),
            "SkipCount": skipCount?.encodeToJSON(),
            "MaxResultCount": maxResultCount?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpTenantManagementTenantDtoVoloAbpTenantManagementApplicationContractsVersion4300CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsIdDefaultConnectionStringDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiMultiTenancyTenantsIdDefaultConnectionStringDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/multi-tenancy/tenants/{id}/default-connection-string
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiMultiTenancyTenantsIdDefaultConnectionStringDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/multi-tenancy/tenants/{id}/default-connection-string"
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

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<String, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsIdDefaultConnectionStringGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<String, Error> {
        return Future<String, Error>.init { promise in
            apiMultiTenancyTenantsIdDefaultConnectionStringGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/multi-tenancy/tenants/{id}/default-connection-string
     - parameter id: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func apiMultiTenancyTenantsIdDefaultConnectionStringGetWithRequestBuilder(id: UUID) -> RequestBuilder<String> {
        var path = "/api/multi-tenancy/tenants/{id}/default-connection-string"
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

        let requestBuilder: RequestBuilder<String>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter defaultConnectionString: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsIdDefaultConnectionStringPut(id: UUID, defaultConnectionString: String? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiMultiTenancyTenantsIdDefaultConnectionStringPutWithRequestBuilder(id: id, defaultConnectionString: defaultConnectionString).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/multi-tenancy/tenants/{id}/default-connection-string
     - parameter id: (path)  
     - parameter defaultConnectionString: (query)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiMultiTenancyTenantsIdDefaultConnectionStringPutWithRequestBuilder(id: UUID, defaultConnectionString: String? = nil) -> RequestBuilder<Void> {
        var path = "/api/multi-tenancy/tenants/{id}/default-connection-string"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "defaultConnectionString": defaultConnectionString?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsIdDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiMultiTenancyTenantsIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/multi-tenancy/tenants/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiMultiTenancyTenantsIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/multi-tenancy/tenants/{id}"
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

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpTenantManagementTenantDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpTenantManagementTenantDto, Error> {
        return Future<VoloAbpTenantManagementTenantDto, Error>.init { promise in
            apiMultiTenancyTenantsIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/multi-tenancy/tenants/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpTenantManagementTenantDto> 
     */
    open class func apiMultiTenancyTenantsIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpTenantManagementTenantDto> {
        var path = "/api/multi-tenancy/tenants/{id}"
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

        let requestBuilder: RequestBuilder<VoloAbpTenantManagementTenantDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter voloAbpTenantManagementTenantUpdateDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpTenantManagementTenantDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsIdPut(id: UUID, voloAbpTenantManagementTenantUpdateDto: VoloAbpTenantManagementTenantUpdateDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpTenantManagementTenantDto, Error> {
        return Future<VoloAbpTenantManagementTenantDto, Error>.init { promise in
            apiMultiTenancyTenantsIdPutWithRequestBuilder(id: id, voloAbpTenantManagementTenantUpdateDto: voloAbpTenantManagementTenantUpdateDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/multi-tenancy/tenants/{id}
     - parameter id: (path)  
     - parameter voloAbpTenantManagementTenantUpdateDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpTenantManagementTenantDto> 
     */
    open class func apiMultiTenancyTenantsIdPutWithRequestBuilder(id: UUID, voloAbpTenantManagementTenantUpdateDto: VoloAbpTenantManagementTenantUpdateDto? = nil) -> RequestBuilder<VoloAbpTenantManagementTenantDto> {
        var path = "/api/multi-tenancy/tenants/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpTenantManagementTenantUpdateDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpTenantManagementTenantDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter voloAbpTenantManagementTenantCreateDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpTenantManagementTenantDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiMultiTenancyTenantsPost(voloAbpTenantManagementTenantCreateDto: VoloAbpTenantManagementTenantCreateDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpTenantManagementTenantDto, Error> {
        return Future<VoloAbpTenantManagementTenantDto, Error>.init { promise in
            apiMultiTenancyTenantsPostWithRequestBuilder(voloAbpTenantManagementTenantCreateDto: voloAbpTenantManagementTenantCreateDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/multi-tenancy/tenants
     - parameter voloAbpTenantManagementTenantCreateDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpTenantManagementTenantDto> 
     */
    open class func apiMultiTenancyTenantsPostWithRequestBuilder(voloAbpTenantManagementTenantCreateDto: VoloAbpTenantManagementTenantCreateDto? = nil) -> RequestBuilder<VoloAbpTenantManagementTenantDto> {
        let path = "/api/multi-tenancy/tenants"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpTenantManagementTenantCreateDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpTenantManagementTenantDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
