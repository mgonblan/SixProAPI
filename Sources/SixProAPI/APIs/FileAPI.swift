//
// FileAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class FileAPI {
    /**

     - parameter content: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SixLinkedStorageDtosBlobDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppFileBlobGet(content: Data? = nil, name: String? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<SixLinkedStorageDtosBlobDto, Error> {
        return Future<SixLinkedStorageDtosBlobDto, Error>.init { promise in
            apiAppFileBlobGetWithRequestBuilder(content: content, name: name).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/file/blob
     - parameter content: (query)  (optional)
     - parameter name: (query)  (optional)
     - returns: RequestBuilder<SixLinkedStorageDtosBlobDto> 
     */
    open class func apiAppFileBlobGetWithRequestBuilder(content: Data? = nil, name: String? = nil) -> RequestBuilder<SixLinkedStorageDtosBlobDto> {
        let path = "/api/app/file/blob"
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Content": content?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SixLinkedStorageDtosBlobDto>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter sixLinkedStorageDtosBlobDto: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppFileSaveBlobPost(sixLinkedStorageDtosBlobDto: SixLinkedStorageDtosBlobDto? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            apiAppFileSaveBlobPostWithRequestBuilder(sixLinkedStorageDtosBlobDto: sixLinkedStorageDtosBlobDto).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/app/file/save-blob
     - parameter sixLinkedStorageDtosBlobDto: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiAppFileSaveBlobPostWithRequestBuilder(sixLinkedStorageDtosBlobDto: SixLinkedStorageDtosBlobDto? = nil) -> RequestBuilder<Void> {
        let path = "/api/app/file/save-blob"
        let URLString = SixProApiAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sixLinkedStorageDtosBlobDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter fileName: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func downloadFileNameGet(fileName: String, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            downloadFileNameGetWithRequestBuilder(fileName: fileName).execute(apiResponseQueue) { result -> Void in
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
     - GET /download/{fileName}
     - parameter fileName: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func downloadFileNameGetWithRequestBuilder(fileName: String) -> RequestBuilder<Void> {
        var path = "/download/{fileName}"
        let fileNamePreEscape = "\(APIHelper.mapValueToPathItem(fileName))"
        let fileNamePostEscape = fileNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{fileName}", with: fileNamePostEscape, options: .literal, range: nil)
        let URLString = SixProApiAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func fileIdGet(id: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            fileIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /file/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func fileIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var path = "/file/{id}"
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

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter profilePictureId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func viewProfilePictureIdGet(profilePictureId: UUID, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            viewProfilePictureIdGetWithRequestBuilder(profilePictureId: profilePictureId).execute(apiResponseQueue) { result -> Void in
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
     - GET /view/{profilePictureId}
     - parameter profilePictureId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func viewProfilePictureIdGetWithRequestBuilder(profilePictureId: UUID) -> RequestBuilder<Void> {
        var path = "/view/{profilePictureId}"
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

        let requestBuilder: RequestBuilder<Void>.Type = SixProApiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
