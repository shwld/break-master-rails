## GET 
Platformの一覧を取得する.

### Example

#### Request
```
GET /platforms HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 478
Content-Type: application/json; charset=utf-8
ETag: W/"5db9fbeb3ec6bb38d8f1e2de7f3274a4"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cf026afe-86d5-48d8-90b9-63ecb437fe25
X-Runtime: 0.001841
X-XSS-Protection: 1; mode=block

[
  {
    "id": 47,
    "title": "ブレイクマスターゆうすけの休息",
    "description": "脳を壊すアプリ",
    "url": "http://bre-mas.com/",
    "created_at": "2015-12-26T10:04:58.538Z",
    "updated_at": "2015-12-26T10:04:58.538Z"
  },
  {
    "id": 48,
    "title": "ソードマスターゆうすけの謎",
    "description": "シューティングゲー",
    "url": "https://itunes.apple.com/jp/app/sodomasutayuusukeno-mi/id1029281903?mt=8",
    "created_at": "2015-12-26T10:04:58.540Z",
    "updated_at": "2015-12-26T10:04:58.540Z"
  }
]
```

## POST /platforms
Platformを新規登録する.

### Example

#### Request
```
POST /platforms HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 279
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

platform[title]=%E3%83%96%E3%83%AC%E3%82%A4%E3%83%B3%E3%83%96%E3%83%AC%E3%82%A4%E3%82%AB%E3%83%BC%E3%81%9F%E3%81%8B%E3%81%97%E3%81%AE%E9%9B%86%E4%B8%AD&platform[description]=%E6%A6%82%E8%A6%81%E3%81%8C%E5%85%A5%E3%82%8A%E3%81%BE%E3%81%99&platform[url]=http%3A%2F%2Fexample.com%2F
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 211
Content-Type: application/json; charset=utf-8
ETag: W/"50efe5cfeb8e6f460611f981ee7a9fec"
Location: http://www.example.com/platforms/49
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 732f9e04-21a7-4d31-b642-6399aad7e36b
X-Runtime: 0.003820
X-XSS-Protection: 1; mode=block

{
  "id": 49,
  "title": "ブレインブレイカーたかしの集中",
  "description": "概要が入ります",
  "url": "http://example.com/",
  "created_at": "2015-12-26T10:04:58.548Z",
  "updated_at": "2015-12-26T10:04:58.548Z"
}
```
