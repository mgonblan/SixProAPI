//
// RequirementAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class RequirementAPI {
    /**

     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedRequirementsDtosRequirementDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppRequirementGet(sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedRequirementsDtosRequirementDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1SixLinkedRequirementsDtosRequirementDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppRequirementGetWithRequestBuilder(sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/requirement
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedRequirementsDtosRequirementDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppRequirementGetWithRequestBuilder(sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedRequirementsDtosRequirementDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> {
        let path = "/api/app/requirement"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Sorting": sorting?.encodeToJSON(),
            "SkipCount": skipCount?.encodeToJSON(),
            "MaxResultCount": maxResultCount?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedRequirementsDtosRequirementDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppRequirementIdDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppRequirementIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/requirement/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppRequirementIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/requirement/{id}"
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
     - returns: AnyPublisher<SixLinkedRequirementsDtosRequirementDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppRequirementIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedRequirementsDtosRequirementDto, Error> {
        return Future<SixLinkedRequirementsDtosRequirementDto, Error>.init { promise in
            apiAppRequirementIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/requirement/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<SixLinkedRequirementsDtosRequirementDto> 
     */
    open class func apiAppRequirementIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<SixLinkedRequirementsDtosRequirementDto> {
        var path = "/api/app/requirement/{id}"
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

        let requestBuilder: RequestBuilder<SixLinkedRequirementsDtosRequirementDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter sixLinkedRequirementsDtosCreateUpdateRequirementDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedRequirementsDtosRequirementDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppRequirementIdPut(id: UUID, sixLinkedRequirementsDtosCreateUpdateRequirementDto: SixLinkedRequirementsDtosCreateUpdateRequirementDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedRequirementsDtosRequirementDto, Error> {
        return Future<SixLinkedRequirementsDtosRequirementDto, Error>.init { promise in
            apiAppRequirementIdPutWithRequestBuilder(id: id, sixLinkedRequirementsDtosCreateUpdateRequirementDto: sixLinkedRequirementsDtosCreateUpdateRequirementDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/app/requirement/{id}
     - parameter id: (path)  
     - parameter sixLinkedRequirementsDtosCreateUpdateRequirementDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedRequirementsDtosRequirementDto> 
     */
    open class func apiAppRequirementIdPutWithRequestBuilder(id: UUID, sixLinkedRequirementsDtosCreateUpdateRequirementDto: SixLinkedRequirementsDtosCreateUpdateRequirementDto? = nil) -> RequestBuilder<SixLinkedRequirementsDtosRequirementDto> {
        var path = "/api/app/requirement/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedRequirementsDtosCreateUpdateRequirementDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedRequirementsDtosRequirementDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter sixLinkedRequirementsDtosCreateUpdateRequirementDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedRequirementsDtosRequirementDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppRequirementPost(sixLinkedRequirementsDtosCreateUpdateRequirementDto: SixLinkedRequirementsDtosCreateUpdateRequirementDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedRequirementsDtosRequirementDto, Error> {
        return Future<SixLinkedRequirementsDtosRequirementDto, Error>.init { promise in
            apiAppRequirementPostWithRequestBuilder(sixLinkedRequirementsDtosCreateUpdateRequirementDto: sixLinkedRequirementsDtosCreateUpdateRequirementDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/requirement
     - parameter sixLinkedRequirementsDtosCreateUpdateRequirementDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedRequirementsDtosRequirementDto> 
     */
    open class func apiAppRequirementPostWithRequestBuilder(sixLinkedRequirementsDtosCreateUpdateRequirementDto: SixLinkedRequirementsDtosCreateUpdateRequirementDto? = nil) -> RequestBuilder<SixLinkedRequirementsDtosRequirementDto> {
        let path = "/api/app/requirement"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedRequirementsDtosCreateUpdateRequirementDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedRequirementsDtosRequirementDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
