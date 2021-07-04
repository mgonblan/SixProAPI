//
// ProfileAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class ProfileAPI {
    /**

     - parameter slug: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedProfilesDtosProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileBySlugGet(slug: String? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedProfilesDtosProfileDto, Error> {
        return Future<SixLinkedProfilesDtosProfileDto, Error>.init { promise in
            apiAppProfileBySlugGetWithRequestBuilder(slug: slug).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/profile/by-slug
     - parameter slug: (query)  (optional)
     - returns: RequestBuilder<SixLinkedProfilesDtosProfileDto> 
     */
    open class func apiAppProfileBySlugGetWithRequestBuilder(slug: String? = nil) -> RequestBuilder<SixLinkedProfilesDtosProfileDto> {
        let path = "/api/app/profile/by-slug"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "slug": slug?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedProfilesDtosProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter userId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedProfilesDtosProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileByUserIdUserIdGet(userId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedProfilesDtosProfileDto, Error> {
        return Future<SixLinkedProfilesDtosProfileDto, Error>.init { promise in
            apiAppProfileByUserIdUserIdGetWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/profile/by-user-id/{userId}
     - parameter userId: (path)  
     - returns: RequestBuilder<SixLinkedProfilesDtosProfileDto> 
     */
    open class func apiAppProfileByUserIdUserIdGetWithRequestBuilder(userId: UUID) -> RequestBuilder<SixLinkedProfilesDtosProfileDto> {
        var path = "/api/app/profile/by-user-id/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedProfilesDtosProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter sixLinkedProfilesDtosCreateUpdateNewProfileDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedProfilesDtosProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileCompletePost(sixLinkedProfilesDtosCreateUpdateNewProfileDto: SixLinkedProfilesDtosCreateUpdateNewProfileDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedProfilesDtosProfileDto, Error> {
        return Future<SixLinkedProfilesDtosProfileDto, Error>.init { promise in
            apiAppProfileCompletePostWithRequestBuilder(sixLinkedProfilesDtosCreateUpdateNewProfileDto: sixLinkedProfilesDtosCreateUpdateNewProfileDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/profile/complete
     - parameter sixLinkedProfilesDtosCreateUpdateNewProfileDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedProfilesDtosProfileDto> 
     */
    open class func apiAppProfileCompletePostWithRequestBuilder(sixLinkedProfilesDtosCreateUpdateNewProfileDto: SixLinkedProfilesDtosCreateUpdateNewProfileDto? = nil) -> RequestBuilder<SixLinkedProfilesDtosProfileDto> {
        let path = "/api/app/profile/complete"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedProfilesDtosCreateUpdateNewProfileDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedProfilesDtosProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedProfilesDtosProfileDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileGet(sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedProfilesDtosProfileDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1SixLinkedProfilesDtosProfileDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppProfileGetWithRequestBuilder(sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/profile
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedProfilesDtosProfileDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppProfileGetWithRequestBuilder(sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedProfilesDtosProfileDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> {
        let path = "/api/app/profile"
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

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedProfilesDtosProfileDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileIdDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppProfileIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/profile/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppProfileIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/profile/{id}"
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
     - returns: AnyPublisher<SixLinkedProfilesDtosProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedProfilesDtosProfileDto, Error> {
        return Future<SixLinkedProfilesDtosProfileDto, Error>.init { promise in
            apiAppProfileIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/profile/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<SixLinkedProfilesDtosProfileDto> 
     */
    open class func apiAppProfileIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<SixLinkedProfilesDtosProfileDto> {
        var path = "/api/app/profile/{id}"
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

        let requestBuilder: RequestBuilder<SixLinkedProfilesDtosProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter sixLinkedProfilesDtosCreateUpdateProfileDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedProfilesDtosProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfileIdPut(id: UUID, sixLinkedProfilesDtosCreateUpdateProfileDto: SixLinkedProfilesDtosCreateUpdateProfileDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedProfilesDtosProfileDto, Error> {
        return Future<SixLinkedProfilesDtosProfileDto, Error>.init { promise in
            apiAppProfileIdPutWithRequestBuilder(id: id, sixLinkedProfilesDtosCreateUpdateProfileDto: sixLinkedProfilesDtosCreateUpdateProfileDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/app/profile/{id}
     - parameter id: (path)  
     - parameter sixLinkedProfilesDtosCreateUpdateProfileDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedProfilesDtosProfileDto> 
     */
    open class func apiAppProfileIdPutWithRequestBuilder(id: UUID, sixLinkedProfilesDtosCreateUpdateProfileDto: SixLinkedProfilesDtosCreateUpdateProfileDto? = nil) -> RequestBuilder<SixLinkedProfilesDtosProfileDto> {
        var path = "/api/app/profile/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedProfilesDtosCreateUpdateProfileDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedProfilesDtosProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter sixLinkedProfilesDtosCreateUpdateProfileDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedProfilesDtosProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppProfilePost(sixLinkedProfilesDtosCreateUpdateProfileDto: SixLinkedProfilesDtosCreateUpdateProfileDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedProfilesDtosProfileDto, Error> {
        return Future<SixLinkedProfilesDtosProfileDto, Error>.init { promise in
            apiAppProfilePostWithRequestBuilder(sixLinkedProfilesDtosCreateUpdateProfileDto: sixLinkedProfilesDtosCreateUpdateProfileDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/profile
     - parameter sixLinkedProfilesDtosCreateUpdateProfileDto: (body)  (optional)
     - returns: RequestBuilder<SixLinkedProfilesDtosProfileDto> 
     */
    open class func apiAppProfilePostWithRequestBuilder(sixLinkedProfilesDtosCreateUpdateProfileDto: SixLinkedProfilesDtosCreateUpdateProfileDto? = nil) -> RequestBuilder<SixLinkedProfilesDtosProfileDto> {
        let path = "/api/app/profile"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedProfilesDtosCreateUpdateProfileDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedProfilesDtosProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter voloAbpIdentityChangePasswordInput: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityMyProfileChangePasswordPost(voloAbpIdentityChangePasswordInput: VoloAbpIdentityChangePasswordInput? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiIdentityMyProfileChangePasswordPostWithRequestBuilder(voloAbpIdentityChangePasswordInput: voloAbpIdentityChangePasswordInput).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/identity/my-profile/change-password
     - parameter voloAbpIdentityChangePasswordInput: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiIdentityMyProfileChangePasswordPostWithRequestBuilder(voloAbpIdentityChangePasswordInput: VoloAbpIdentityChangePasswordInput? = nil) -> RequestBuilder<Void> {
        let path = "/api/identity/my-profile/change-password"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpIdentityChangePasswordInput)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityMyProfileGet(apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityProfileDto, Error> {
        return Future<VoloAbpIdentityProfileDto, Error>.init { promise in
            apiIdentityMyProfileGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/my-profile
     - returns: RequestBuilder<VoloAbpIdentityProfileDto> 
     */
    open class func apiIdentityMyProfileGetWithRequestBuilder() -> RequestBuilder<VoloAbpIdentityProfileDto> {
        let path = "/api/identity/my-profile"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpIdentityProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter voloAbpIdentityUpdateProfileDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityProfileDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityMyProfilePut(voloAbpIdentityUpdateProfileDto: VoloAbpIdentityUpdateProfileDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityProfileDto, Error> {
        return Future<VoloAbpIdentityProfileDto, Error>.init { promise in
            apiIdentityMyProfilePutWithRequestBuilder(voloAbpIdentityUpdateProfileDto: voloAbpIdentityUpdateProfileDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/identity/my-profile
     - parameter voloAbpIdentityUpdateProfileDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityProfileDto> 
     */
    open class func apiIdentityMyProfilePutWithRequestBuilder(voloAbpIdentityUpdateProfileDto: VoloAbpIdentityUpdateProfileDto? = nil) -> RequestBuilder<VoloAbpIdentityProfileDto> {
        let path = "/api/identity/my-profile"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpIdentityUpdateProfileDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpIdentityProfileDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
