
import Foundation

class GooglePlacesAutocomplete {
    let apiKey: String

    init(apiKey: String) {
        self.apiKey = apiKey
    }

//    func getAutocompleteResults(query: String, completion: @escaping ([Place]) -> Void) {
//        let urlString = "https://maps.googleapis.com/maps/api/place/autocomplete/json"
//        let parameters: [String: Any] = [
//            "input": query,
//            "key": apiKey
//        ]
//
//        AF.request(urlString, parameters: parameters)
//            .validate()
//            .responseDecodable(of: AutocompleteResponse.self) { response in
//                switch response.result {
//                case .success(let autocompleteResponse):
//                    completion(autocompleteResponse.predictions)
//                case .failure(let error):
//                    print("Error: \(error.localizedDescription)")
//                    completion([])
//                }
//            }
//    }
}
