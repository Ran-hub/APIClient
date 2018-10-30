import Foundation

public class JSONDeserializer: Deserializer {
    
    public func deserialize(_ response: HTTPURLResponse, data: Data) -> Result<AnyObject> {
        do {
            let jsonObject = try JSONSerialization
                .jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as AnyObject
            return .success(jsonObject)
        } catch let error {
            return .failure(error)
        }
    }
    
    public init() {}
}
