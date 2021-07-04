//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class UserAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityUsersAssignableRolesGet(apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiIdentityUsersAssignableRolesGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/users/assignable-roles
     - returns: RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiIdentityUsersAssignableRolesGetWithRequestBuilder() -> RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        let path = "/api/identity/users/assignable-roles"
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

     - parameter email: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityUsersByEmailEmailGet(email: String, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiIdentityUsersByEmailEmailGetWithRequestBuilder(email: email).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/users/by-email/{email}
     - parameter email: (path)  
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiIdentityUsersByEmailEmailGetWithRequestBuilder(email: String) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/identity/users/by-email/{email}"
        let emailPreEscape = "\(APIHelper.mapValueToPathItem(email))"
        let emailPostEscape = emailPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{email}", with: emailPostEscape, options: .literal, range: nil)
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

     - parameter userName: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpIdentityIdentityUserDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityUsersByUsernameUserNameGet(userName: String, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiIdentityUsersByUsernameUserNameGetWithRequestBuilder(userName: userName).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/users/by-username/{userName}
     - parameter userName: (path)  
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiIdentityUsersByUsernameUserNameGetWithRequestBuilder(userName: String) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/identity/users/by-username/{userName}"
        let userNamePreEscape = "\(APIHelper.mapValueToPathItem(userName))"
        let userNamePostEscape = userNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userName}", with: userNamePostEscape, options: .literal, range: nil)
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

     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityUsersGet(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiIdentityUsersGetWithRequestBuilder(filter: filter, sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/users
     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiIdentityUsersGetWithRequestBuilder(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1VoloAbpIdentityIdentityUserDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        let path = "/api/identity/users"
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
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiIdentityUsersIdDelete(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiIdentityUsersIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/identity/users/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiIdentityUsersIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/api/identity/users/{id}"
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
    open class func apiIdentityUsersIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiIdentityUsersIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/users/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiIdentityUsersIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/identity/users/{id}"
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
    open class func apiIdentityUsersIdPut(id: UUID, voloAbpIdentityIdentityUserUpdateDto: VoloAbpIdentityIdentityUserUpdateDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiIdentityUsersIdPutWithRequestBuilder(id: id, voloAbpIdentityIdentityUserUpdateDto: voloAbpIdentityIdentityUserUpdateDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/identity/users/{id}
     - parameter id: (path)  
     - parameter voloAbpIdentityIdentityUserUpdateDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiIdentityUsersIdPutWithRequestBuilder(id: UUID, voloAbpIdentityIdentityUserUpdateDto: VoloAbpIdentityIdentityUserUpdateDto? = nil) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        var path = "/api/identity/users/{id}"
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
    open class func apiIdentityUsersIdRolesGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiIdentityUsersIdRolesGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/identity/users/{id}/roles
     - parameter id: (path)  
     - returns: RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> 
     */
    open class func apiIdentityUsersIdRolesGetWithRequestBuilder(id: UUID) -> RequestBuilder<VoloAbpApplicationDtosListResultDto1VoloAbpIdentityIdentityRoleDtoVoloAbpIdentityApplicationContractsVersion4300CultureneutralPublicKeyTokennull> {
        var path = "/api/identity/users/{id}/roles"
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
    open class func apiIdentityUsersIdRolesPut(id: UUID, voloAbpIdentityIdentityUserUpdateRolesDto: VoloAbpIdentityIdentityUserUpdateRolesDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiIdentityUsersIdRolesPutWithRequestBuilder(id: id, voloAbpIdentityIdentityUserUpdateRolesDto: voloAbpIdentityIdentityUserUpdateRolesDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/identity/users/{id}/roles
     - parameter id: (path)  
     - parameter voloAbpIdentityIdentityUserUpdateRolesDto: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiIdentityUsersIdRolesPutWithRequestBuilder(id: UUID, voloAbpIdentityIdentityUserUpdateRolesDto: VoloAbpIdentityIdentityUserUpdateRolesDto? = nil) -> RequestBuilder<Void> {
        var path = "/api/identity/users/{id}/roles"
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
    open class func apiIdentityUsersPost(voloAbpIdentityIdentityUserCreateDto: VoloAbpIdentityIdentityUserCreateDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpIdentityIdentityUserDto, Error> {
        return Future<VoloAbpIdentityIdentityUserDto, Error>.init { promise in
            apiIdentityUsersPostWithRequestBuilder(voloAbpIdentityIdentityUserCreateDto: voloAbpIdentityIdentityUserCreateDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/identity/users
     - parameter voloAbpIdentityIdentityUserCreateDto: (body)  (optional)
     - returns: RequestBuilder<VoloAbpIdentityIdentityUserDto> 
     */
    open class func apiIdentityUsersPostWithRequestBuilder(voloAbpIdentityIdentityUserCreateDto: VoloAbpIdentityIdentityUserCreateDto? = nil) -> RequestBuilder<VoloAbpIdentityIdentityUserDto> {
        let path = "/api/identity/users"
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

}