# DynoJSON

[![CI Status](https://img.shields.io/travis/Andrew Vergunov/DynoJSON.svg?style=flat)](https://travis-ci.org/Andrew Vergunov/DynoJSON)
[![Version](https://img.shields.io/cocoapods/v/DynoJSON.svg?style=flat)](https://cocoapods.org/pods/DynoJSON)
[![License](https://img.shields.io/cocoapods/l/DynoJSON.svg?style=flat)](https://cocoapods.org/pods/DynoJSON)
[![Platform](https://img.shields.io/cocoapods/p/DynoJSON.svg?style=flat)](https://cocoapods.org/pods/DynoJSON)

JSON parsing using dynamicMemberLookup feature
With this utility you can easily get needed value from JSON.
All that you need explicity set value type.

# Example
## JSON
```swift
{
  "comments": {
    "data": [
      {
        "created_time": "2017-12-12T14:12:20+0000",
        "message": ":) :) :)",
        "id": "1809938745705498_1809939942372045"
      },
      {
        "created_time": "2017-12-12T14:14:03+0000",
        "message": "seasons greetings!",
        "id": "1809938745705498_1809941802371859"
      },
      {
        "created_time": "2017-12-12T14:14:11+0000",
        "message": "My bestie <3",
        "id": "1809938745705498_1809941879038518"
      }
    ],
    "paging": {
      "cursors": {
        "before": "WTI5dGJXVnVkRjlqZAFhKemIzSTZANVGd3T1Rrek9UZAzROVGN3TlRNNE5Eb3hOVEV6TURnM09UTTIZD",
        "after": "WTI5dGJXVnVkRjlqZAFhKemIzSTZANVGd4TURBd09UazROVFk1T0RNM05Eb3hOVEV6TURreU5qQXoZD",
        "doubleValue": 12.5
      },
      "next": "https://graph.facebook.com/1809938745705498/comments?access_token=valid_token_goes_here",
      "integerValue": 7
    }
  },
  "id": "1809938745705498"
}
```
## Iterating in JSON
```swift
let response: JSON = jsonResponse()
let doubleValue: Double? = response.comments?.paging?.cursors?.doubleValue
// doubleValue is 12.5

let response: JSON = facebookJsonResponse()
let arrayJson: [JSON]? = response.comments?.data
let message: String? = arrayJson?.first?.message
// message is ":) :) :)"
```

## Requirements

## Installation

DynoJSON is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DynoJSON'
```

## Author

Andrew Vergunov, andrewvergunov@gmail.com

## License

DynoJSON is available under the MIT license. See the LICENSE file for more info.

