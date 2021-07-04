//
// ContactAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class ContactAPI {
    /**

     - parameter contactCompanyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactCompanyFromCompanyContactsContactCompanyIdDelete(contactCompanyId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppContactCompanyFromCompanyContactsContactCompanyIdDeleteWithRequestBuilder(contactCompanyId: contactCompanyId).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/contact/company-from-company-contacts/{contactCompanyId}
     - parameter contactCompanyId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppContactCompanyFromCompanyContactsContactCompanyIdDeleteWithRequestBuilder(contactCompanyId: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/contact/company-from-company-contacts/{contactCompanyId}"
        let contactCompanyIdPreEscape = "\(APIHelper.mapValueToPathItem(contactCompanyId))"
        let contactCompanyIdPostEscape = contactCompanyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactCompanyId}", with: contactCompanyIdPostEscape, options: .literal, range: nil)
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

     - parameter contactCompanyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactCompanyFromUserContactsContactCompanyIdDelete(contactCompanyId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppContactCompanyFromUserContactsContactCompanyIdDeleteWithRequestBuilder(contactCompanyId: contactCompanyId).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/contact/company-from-user-contacts/{contactCompanyId}
     - parameter contactCompanyId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppContactCompanyFromUserContactsContactCompanyIdDeleteWithRequestBuilder(contactCompanyId: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/contact/company-from-user-contacts/{contactCompanyId}"
        let contactCompanyIdPreEscape = "\(APIHelper.mapValueToPathItem(contactCompanyId))"
        let contactCompanyIdPostEscape = contactCompanyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactCompanyId}", with: contactCompanyIdPostEscape, options: .literal, range: nil)
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

     - parameter contactCompanyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedContactsDtosContactDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactCompanyToCompanyContactsContactCompanyIdPost(contactCompanyId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedContactsDtosContactDto, Error> {
        return Future<SixLinkedContactsDtosContactDto, Error>.init { promise in
            apiAppContactCompanyToCompanyContactsContactCompanyIdPostWithRequestBuilder(contactCompanyId: contactCompanyId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/contact/company-to-company-contacts/{contactCompanyId}
     - parameter contactCompanyId: (path)  
     - returns: RequestBuilder<SixLinkedContactsDtosContactDto> 
     */
    open class func apiAppContactCompanyToCompanyContactsContactCompanyIdPostWithRequestBuilder(contactCompanyId: UUID) -> RequestBuilder<SixLinkedContactsDtosContactDto> {
        var path = "/api/app/contact/company-to-company-contacts/{contactCompanyId}"
        let contactCompanyIdPreEscape = "\(APIHelper.mapValueToPathItem(contactCompanyId))"
        let contactCompanyIdPostEscape = contactCompanyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactCompanyId}", with: contactCompanyIdPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedContactsDtosContactDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter companyId: (query)  (optional)
     - parameter contactCompanyId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedContactsDtosContactDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactCompanyToCompanyContactsPost(companyId: UUID? = nil, contactCompanyId: UUID? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedContactsDtosContactDto, Error> {
        return Future<SixLinkedContactsDtosContactDto, Error>.init { promise in
            apiAppContactCompanyToCompanyContactsPostWithRequestBuilder(companyId: companyId, contactCompanyId: contactCompanyId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/contact/company-to-company-contacts
     - parameter companyId: (query)  (optional)
     - parameter contactCompanyId: (query)  (optional)
     - returns: RequestBuilder<SixLinkedContactsDtosContactDto> 
     */
    open class func apiAppContactCompanyToCompanyContactsPostWithRequestBuilder(companyId: UUID? = nil, contactCompanyId: UUID? = nil) -> RequestBuilder<SixLinkedContactsDtosContactDto> {
        let path = "/api/app/contact/company-to-company-contacts"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "companyId": companyId?.encodeToJSON(),
            "contactCompanyId": contactCompanyId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedContactsDtosContactDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter contactCompanyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedContactsDtosContactDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactCompanyToUserContactsContactCompanyIdPost(contactCompanyId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedContactsDtosContactDto, Error> {
        return Future<SixLinkedContactsDtosContactDto, Error>.init { promise in
            apiAppContactCompanyToUserContactsContactCompanyIdPostWithRequestBuilder(contactCompanyId: contactCompanyId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/contact/company-to-user-contacts/{contactCompanyId}
     - parameter contactCompanyId: (path)  
     - returns: RequestBuilder<SixLinkedContactsDtosContactDto> 
     */
    open class func apiAppContactCompanyToUserContactsContactCompanyIdPostWithRequestBuilder(contactCompanyId: UUID) -> RequestBuilder<SixLinkedContactsDtosContactDto> {
        var path = "/api/app/contact/company-to-user-contacts/{contactCompanyId}"
        let contactCompanyIdPreEscape = "\(APIHelper.mapValueToPathItem(contactCompanyId))"
        let contactCompanyIdPostEscape = contactCompanyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactCompanyId}", with: contactCompanyIdPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedContactsDtosContactDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter type: (query)  (optional)
     - parameter includeContactInformation: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosListResultDto1SixLinkedContactsDtosContactDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactContactsGet(type: SixLinkedContactsContactType? = nil, includeContactInformation: Bool? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosListResultDto1SixLinkedContactsDtosContactDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosListResultDto1SixLinkedContactsDtosContactDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppContactContactsGetWithRequestBuilder(type: type, includeContactInformation: includeContactInformation, sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/contact/contacts
     - parameter type: (query)  (optional)
     - parameter includeContactInformation: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosListResultDto1SixLinkedContactsDtosContactDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppContactContactsGetWithRequestBuilder(type: SixLinkedContactsContactType? = nil, includeContactInformation: Bool? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosListResultDto1SixLinkedContactsDtosContactDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> {
        let path = "/api/app/contact/contacts"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Type": type?.encodeToJSON(),
            "IncludeContactInformation": includeContactInformation?.encodeToJSON(),
            "Sorting": sorting?.encodeToJSON(),
            "SkipCount": skipCount?.encodeToJSON(),
            "MaxResultCount": maxResultCount?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosListResultDto1SixLinkedContactsDtosContactDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter contactUserId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactUserFromCompanyContactsContactUserIdDelete(contactUserId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppContactUserFromCompanyContactsContactUserIdDeleteWithRequestBuilder(contactUserId: contactUserId).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/contact/user-from-company-contacts/{contactUserId}
     - parameter contactUserId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppContactUserFromCompanyContactsContactUserIdDeleteWithRequestBuilder(contactUserId: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/contact/user-from-company-contacts/{contactUserId}"
        let contactUserIdPreEscape = "\(APIHelper.mapValueToPathItem(contactUserId))"
        let contactUserIdPostEscape = contactUserIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactUserId}", with: contactUserIdPostEscape, options: .literal, range: nil)
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

     - parameter contactUserId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactUserFromUserContactsContactUserIdDelete(contactUserId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppContactUserFromUserContactsContactUserIdDeleteWithRequestBuilder(contactUserId: contactUserId).execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/app/contact/user-from-user-contacts/{contactUserId}
     - parameter contactUserId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppContactUserFromUserContactsContactUserIdDeleteWithRequestBuilder(contactUserId: UUID) -> RequestBuilder<Void> {
        var path = "/api/app/contact/user-from-user-contacts/{contactUserId}"
        let contactUserIdPreEscape = "\(APIHelper.mapValueToPathItem(contactUserId))"
        let contactUserIdPostEscape = contactUserIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactUserId}", with: contactUserIdPostEscape, options: .literal, range: nil)
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

     - parameter contactUserId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedContactsDtosContactDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactUserToCompanyContactsContactUserIdPost(contactUserId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedContactsDtosContactDto, Error> {
        return Future<SixLinkedContactsDtosContactDto, Error>.init { promise in
            apiAppContactUserToCompanyContactsContactUserIdPostWithRequestBuilder(contactUserId: contactUserId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/contact/user-to-company-contacts/{contactUserId}
     - parameter contactUserId: (path)  
     - returns: RequestBuilder<SixLinkedContactsDtosContactDto> 
     */
    open class func apiAppContactUserToCompanyContactsContactUserIdPostWithRequestBuilder(contactUserId: UUID) -> RequestBuilder<SixLinkedContactsDtosContactDto> {
        var path = "/api/app/contact/user-to-company-contacts/{contactUserId}"
        let contactUserIdPreEscape = "\(APIHelper.mapValueToPathItem(contactUserId))"
        let contactUserIdPostEscape = contactUserIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactUserId}", with: contactUserIdPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedContactsDtosContactDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter contactUserId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedContactsDtosContactDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppContactUserToUserContactsContactUserIdPost(contactUserId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedContactsDtosContactDto, Error> {
        return Future<SixLinkedContactsDtosContactDto, Error>.init { promise in
            apiAppContactUserToUserContactsContactUserIdPostWithRequestBuilder(contactUserId: contactUserId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/contact/user-to-user-contacts/{contactUserId}
     - parameter contactUserId: (path)  
     - returns: RequestBuilder<SixLinkedContactsDtosContactDto> 
     */
    open class func apiAppContactUserToUserContactsContactUserIdPostWithRequestBuilder(contactUserId: UUID) -> RequestBuilder<SixLinkedContactsDtosContactDto> {
        var path = "/api/app/contact/user-to-user-contacts/{contactUserId}"
        let contactUserIdPreEscape = "\(APIHelper.mapValueToPathItem(contactUserId))"
        let contactUserIdPostEscape = contactUserIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactUserId}", with: contactUserIdPostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedContactsDtosContactDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
