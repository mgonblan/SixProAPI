//
// CustomIdentityUserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class CustomIdentityUserAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserAssignableRolesGet(apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppCustomIdentityUserAssignableRolesGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/custom-identity-user/assignable-roles
     - returns: RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppCustomIdentityUserAssignableRolesGetWithRequestBuilder() -> RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        let path = "/api/app/custom-identity-user/assignable-roles"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter email: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserFindByEmailPost(email: String? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiAppCustomIdentityUserFindByEmailPostWithRequestBuilder(email: email).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/custom-identity-user/find-by-email
     - parameter email: (query)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiAppCustomIdentityUserFindByEmailPostWithRequestBuilder(email: String? = nil) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        let path = "/api/app/custom-identity-user/find-by-email"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "email": email?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpIdentityIdentityUserDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter userName: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserFindByUsernamePost(userName: String? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiAppCustomIdentityUserFindByUsernamePostWithRequestBuilder(userName: userName).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/custom-identity-user/find-by-username
     - parameter userName: (query)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiAppCustomIdentityUserFindByUsernamePostWithRequestBuilder(userName: String? = nil) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        let path = "/api/app/custom-identity-user/find-by-username"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userName": userName?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpIdentityIdentityUserDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserGet(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppCustomIdentityUserGetWithRequestBuilder(filter: filter, sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/custom-identity-user
     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppCustomIdentityUserGetWithRequestBuilder(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        let path = "/api/app/custom-identity-user"
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

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserIdContractorsGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiAppCustomIdentityUserIdContractorsGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/custom-identity-user/{id}/contractors
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiAppCustomIdentityUserIdContractorsGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/app/custom-identity-user/{id}/contractors"
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

        let requestBuilder: RequestBuilder<VoloAbpIdentityIdentityUserDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserIdDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppCustomIdentityUserIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/custom-identity-user/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppCustomIdentityUserIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/custom-identity-user/{id}"
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
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiAppCustomIdentityUserIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/custom-identity-user/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiAppCustomIdentityUserIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/app/custom-identity-user/{id}"
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

        let requestBuilder: RequestBuilder<VoloAbpIdentityIdentityUserDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter voloAbpIdentityIdentityUserUpdateDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserIdPut(id: UUID, voloAbpIdentityIdentityUserUpdateDto: VoloAbpIdentityIdentityUserUpdateDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiAppCustomIdentityUserIdPutWithRequestBuilder(id: id, voloAbpIdentityIdentityUserUpdateDto: voloAbpIdentityIdentityUserUpdateDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/app/custom-identity-user/{id}
     - parameter id: (path)  
     - parameter voloAbpIdentityIdentityUserUpdateDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiAppCustomIdentityUserIdPutWithRequestBuilder(id: UUID, voloAbpIdentityIdentityUserUpdateDto: VoloAbpIdentityIdentityUserUpdateDto? = nil) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/app/custom-identity-user/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpIdentityIdentityUserUpdateDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpIdentityIdentityUserDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserIdRolesGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppCustomIdentityUserIdRolesGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/custom-identity-user/{id}/roles
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppCustomIdentityUserIdRolesGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        var path = "/api/app/custom-identity-user/{id}/roles"
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

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter voloAbpIdentityIdentityUserUpdateRolesDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserIdRolesPut(id: UUID, voloAbpIdentityIdentityUserUpdateRolesDto: VoloAbpIdentityIdentityUserUpdateRolesDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppCustomIdentityUserIdRolesPutWithRequestBuilder(id: id, voloAbpIdentityIdentityUserUpdateRolesDto: voloAbpIdentityIdentityUserUpdateRolesDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/app/custom-identity-user/{id}/roles
     - parameter id: (path)  
     - parameter voloAbpIdentityIdentityUserUpdateRolesDto: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppCustomIdentityUserIdRolesPutWithRequestBuilder(id: UUID, voloAbpIdentityIdentityUserUpdateRolesDto: VoloAbpIdentityIdentityUserUpdateRolesDto? = nil) -> RequestBuilder<Void> {
        var path = "/api/app/custom-identity-user/{id}/roles"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpIdentityIdentityUserUpdateRolesDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter voloAbpIdentityIdentityUserCreateDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserPost(voloAbpIdentityIdentityUserCreateDto: VoloAbpIdentityIdentityUserCreateDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiAppCustomIdentityUserPostWithRequestBuilder(voloAbpIdentityIdentityUserCreateDto: voloAbpIdentityIdentityUserCreateDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/custom-identity-user
     - parameter voloAbpIdentityIdentityUserCreateDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiAppCustomIdentityUserPostWithRequestBuilder(voloAbpIdentityIdentityUserCreateDto: VoloAbpIdentityIdentityUserCreateDto? = nil) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        let path = "/api/app/custom-identity-user"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: voloAbpIdentityIdentityUserCreateDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpIdentityIdentityUserDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserProfilePictureDelete(apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiAppCustomIdentityUserProfilePictureDeleteWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/custom-identity-user/profile-picture
     - returns: RequestBuilder<Bool> 
     */
    open class func apiAppCustomIdentityUserProfilePictureDeleteWithRequestBuilder() -> RequestBuilder<Bool> {
        let path = "/api/app/custom-identity-user/profile-picture"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter profilePictureId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Data, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserProfilePictureProfilePictureIdGet(profilePictureId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Data, Error> {
        return Future<Data, Error>.init { promise in
            apiAppCustomIdentityUserProfilePictureProfilePictureIdGetWithRequestBuilder(profilePictureId: profilePictureId).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/custom-identity-user/profile-picture/{profilePictureId}
     - parameter profilePictureId: (path)  
     - returns: RequestBuilder<Data> 
     */
    open class func apiAppCustomIdentityUserProfilePictureProfilePictureIdGetWithRequestBuilder(profilePictureId: UUID) -> RequestBuilder<Data> {
        var path = "/api/app/custom-identity-user/profile-picture/{profilePictureId}"
        let profilePictureIdPreEscape = "\(APIHelper.mapValueToPathItem(profilePictureId))"
        let profilePictureIdPostEscape = profilePictureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{profilePictureId}", with: profilePictureIdPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppCustomIdentityUserSaveProfilePicturePost(body: Data? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiAppCustomIdentityUserSaveProfilePicturePostWithRequestBuilder(body: body).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/custom-identity-user/save-profile-picture
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiAppCustomIdentityUserSaveProfilePicturePostWithRequestBuilder(body: Data? = nil) -> RequestBuilder<UUID> {
        let path = "/api/app/custom-identity-user/save-profile-picture"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UUID>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
