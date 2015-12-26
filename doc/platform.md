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
ETag: W/"62a1f72a65d26f669dd7a9db98bb1f37"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3019696b-35ce-4387-a738-e0ea389af2e0
X-Runtime: 0.002066
X-XSS-Protection: 1; mode=block

[
  {
    "id": 20,
    "title": "ブレイクマスターゆうすけの休息",
    "description": "脳を壊すアプリ",
    "url": "http://bre-mas.com/",
    "created_at": "2015-12-26T08:31:15.210Z",
    "updated_at": "2015-12-26T08:31:15.210Z"
  },
  {
    "id": 21,
    "title": "ソードマスターゆうすけの謎",
    "description": "シューティングゲー",
    "url": "https://itunes.apple.com/jp/app/sodomasutayuusukeno-mi/id1029281903?mt=8",
    "created_at": "2015-12-26T08:31:15.212Z",
    "updated_at": "2015-12-26T08:31:15.212Z"
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
ETag: W/"400114d92d7b70fc0c6f30ec99ea2419"
Location: http://www.example.com/platforms/22
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2316fa64-3a69-4a65-863e-48adaa29e6d7
X-Runtime: 0.005162
X-XSS-Protection: 1; mode=block

{
  "id": 22,
  "title": "ブレインブレイカーたかしの集中",
  "description": "概要が入ります",
  "url": "http://example.com/",
  "created_at": "2015-12-26T08:31:15.233Z",
  "updated_at": "2015-12-26T08:31:15.233Z"
}
```
