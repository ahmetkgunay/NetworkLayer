# NetworkLayer
<p align="left">
<a href="https://swift.org">
<img src="http://img.shields.io/badge/Swift-4.0-brightgreen.svg" alt="Language">
</a>  <a href="https://github.com/ahmetkgunay/NetworkLayer/blob/master/LICENSE">
<img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT License">
</a>
<a href="https://twitter.com/ahmtgny">
<img src="https://img.shields.io/badge/contact-@ahmtgny-blue.svg?style=flat" alt="Twitter: @ahmtgny" />
</a>
<a href="https://github.com/Alamofire/Alamofire">
<img src="https://img.shields.io/badge/dependency-Alamofire-blue.svg">
</a>
</p>

Protocol Oriented Generic Network Layer example with Alamofire and Swift4

## Usage

Usage is so simple:

Just create Request Class and implement the Requestable protocol, in example project i created UserRequest to fetch user info from Github API

Requestable protocol will force you to implement some usefull functions as shown below.


```swift

final class UserRequest: Requestable {

    typealias ResponseType = UserResponse

    private var userName : String

    init(userName:String) {
        self.userName = userName
    }
    
    var baseUrl: URL {
        return  URL(string: "https://api.github.com/")!
    }

    var endpoint: String {
        return "users/\(self.userName)"
    }

    var method: Network.Method {
        return .get
    }

    var query: Network.QueryType {
        return .path
    }

    var parameters: [String : Any]? {
        return nil
    }

    var headers: [String : String]? {
        return defaultJSONHeader
    }

    var timeout: TimeInterval {
        return 30.0
    }

    var cachePolicy: NSURLRequest.CachePolicy {
        return .reloadIgnoringLocalAndRemoteCacheData
    }
}

```

Meanwhile you should create also responseModel and implement the Codable protocol your model. Example project shows UserResponse as shown below:

And Thats all! You do not have to decode the response. Network class does it for you.. :)

```swift

public struct UserResponse: Codable {

    public let userName: String?
    public let userId: Int?
    public let avatarUrl: String?

    enum CodingKeys: String, CodingKey {
        case userName = "login", userId = "id", avatarUrl = "avatar_url"
    }
}


```

#### Request from ViewController

```swift
    override func viewDidLoad() {
        super.viewDidLoad()

        // Assign request instance to cancel in future
        // Just call cancel() to assigned instance
        _ = Network.request(req: UserRequest(userName: "ahmetkgunay")) { (result) in

            switch result {
                case .success(let userResponse):
                    print(userResponse)
                case .cancel(let cancelError):
                    print(cancelError!)
                case .failure(let error):
                    print(error!)
            }
        }
    }

```

## Installation

- By cloning the project into your repository


## Author

Ahmet Kazım Günay, ahmetkgunay@gmail.com

## License

NetworkLayer is available under the MIT license. See the LICENSE file for more info.


