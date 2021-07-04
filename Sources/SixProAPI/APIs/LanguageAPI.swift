//
// LanguageAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class LanguageAPI {
    /**

     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedLanguagesDtosLanguageDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppLanguageGet(sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedLanguagesDtosLanguageDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1SixLinkedLanguagesDtosLanguageDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppLanguageGetWithRequestBuilder(sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/language
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedLanguagesDtosLanguageDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppLanguageGetWithRequestBuilder(sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedLanguagesDtosLanguageDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> {
        let path = "/api/app/language"
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

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedLanguagesDtosLanguageDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppLanguageIdDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppLanguageIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/language/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppLanguageIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/language/{id}"
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
     - returns: AnyPublisher<SixLinkedLanguagesDtosLanguageDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppLanguageIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedLanguagesDtosLanguageDto, Error> {
        return Future<SixLinkedLanguagesDtosLanguageDto, Error>.init { promise in
            apiAppLanguageIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/language/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<SixLinkedLanguagesDtosLanguageDto> 
     */
    open class func apiAppLanguageIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<SixLinkedLanguagesDtosLanguageDto> {
        var path = "/api/app/language/{id}"
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

        let requestBuilder: RequestBuilder<SixLinkedLanguagesDtosLanguageDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter sixLinkedLanguagesDtosCreateUpdateLanguageDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedLanguagesDtosLanguageDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppLanguageIdPut(id: UUID, sixLinkedLanguagesDtosCreateUpdateLanguageDto: SixLinkedLanguagesDtosCreateUpdateLanguageDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedLanguagesDtosLanguageDto, Error> {
        return Future<SixLinkedLanguagesDtosLanguageDto, Error>.init { promise in
            apiAppLanguageIdPutWithRequestBuilder(id: id, sixLinkedLanguagesDtosCreateUpdateLanguageDto: sixLinkedLanguagesDtosCreateUpdateLanguageDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/app/language/{id}
     - parameter id: (path)  
     - parameter sixLinkedLanguagesDtosCreateUpdateLanguageDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedLanguagesDtosLanguageDto> 
     */
    open class func apiAppLanguageIdPutWithRequestBuilder(id: UUID, sixLinkedLanguagesDtosCreateUpdateLanguageDto: SixLinkedLanguagesDtosCreateUpdateLanguageDto? = nil) -> RequestBuilder<SixLinkedLanguagesDtosLanguageDto> {
        var path = "/api/app/language/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedLanguagesDtosCreateUpdateLanguageDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedLanguagesDtosLanguageDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter sixLinkedLanguagesDtosCreateUpdateLanguageDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedLanguagesDtosLanguageDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppLanguagePost(sixLinkedLanguagesDtosCreateUpdateLanguageDto: SixLinkedLanguagesDtosCreateUpdateLanguageDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedLanguagesDtosLanguageDto, Error> {
        return Future<SixLinkedLanguagesDtosLanguageDto, Error>.init { promise in
            apiAppLanguagePostWithRequestBuilder(sixLinkedLanguagesDtosCreateUpdateLanguageDto: sixLinkedLanguagesDtosCreateUpdateLanguageDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/language
     - parameter sixLinkedLanguagesDtosCreateUpdateLanguageDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedLanguagesDtosLanguageDto> 
     */
    open class func apiAppLanguagePostWithRequestBuilder(sixLinkedLanguagesDtosCreateUpdateLanguageDto: SixLinkedLanguagesDtosCreateUpdateLanguageDto? = nil) -> RequestBuilder<SixLinkedLanguagesDtosLanguageDto> {
        let path = "/api/app/language"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedLanguagesDtosCreateUpdateLanguageDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedLanguagesDtosLanguageDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}