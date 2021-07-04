//
// AddressSuggestionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class AddressSuggestionAPI {
    /**

     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedAddressSuggestionsDtosAddressSuggestionDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiAppAddressSuggestionGet(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil, apiResponseQueue: DispatchQueue = SixProApiAPI.apiResponseQueue) -> AnyPublisher<VoloAbpApplicationDtosPagedResultDto1SixLinkedAddressSuggestionsDtosAddressSuggestionDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error> {
        return Future<VoloAbpApplicationDtosPagedResultDto1SixLinkedAddressSuggestionsDtosAddressSuggestionDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull, Error>.init { promise in
            apiAppAddressSuggestionGetWithRequestBuilder(filter: filter, sorting: sorting, skipCount: skipCount, maxResultCount: maxResultCount).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/app/address-suggestion
     - parameter filter: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter skipCount: (query)  (optional)
     - parameter maxResultCount: (query)  (optional)
     - returns: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedAddressSuggestionsDtosAddressSuggestionDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> 
     */
    open class func apiAppAddressSuggestionGetWithRequestBuilder(filter: String? = nil, sorting: String? = nil, skipCount: Int? = nil, maxResultCount: Int? = nil) -> RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedAddressSuggestionsDtosAddressSuggestionDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull> {
        let path = "/api/app/address-suggestion"
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

        let requestBuilder: RequestBuilder<VoloAbpApplicationDtosPagedResultDto1SixLinkedAddressSuggestionsDtosAddressSuggestionDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull>.Type = SixProApiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}