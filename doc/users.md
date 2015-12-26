## GET 
Userの一覧を取得する.

### Example

#### Request
```
GET /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 256
Content-Type: application/json; charset=utf-8
ETag: W/"5197de6401df7e6a67225d6b10fc03b1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 129b6ad7-e4ef-4323-ba01-b5b33cafa7bd
X-Runtime: 0.002116
X-XSS-Protection: 1; mode=block

[
  {
    "id": 38,
    "name": "ゆうすけ",
    "platform_id": 54,
    "created_at": "2015-12-26T10:04:58.701Z",
    "updated_at": "2015-12-26T10:04:58.701Z"
  },
  {
    "id": 39,
    "name": "たかし",
    "platform_id": 54,
    "created_at": "2015-12-26T10:04:58.705Z",
    "updated_at": "2015-12-26T10:04:58.705Z"
  }
]
```

## POST /users
Userを新規作成する.

### Example

#### Request
```
POST /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 78
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user[name]=%E3%83%86%E3%82%B9%E3%83%88+%E5%A4%AA%E9%83%8E&user[platform_id]=55
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 132
Content-Type: application/json; charset=utf-8
ETag: W/"e2ecb9dcaa036d78788202680462a7e2"
Location: http://www.example.com/users/40
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 70ef3130-b146-432b-848b-b25d80089f7a
X-Runtime: 0.022390
X-XSS-Protection: 1; mode=block

{
  "id": 40,
  "name": "テスト 太郎",
  "platform_id": 55,
  "created_at": "2015-12-26T10:04:58.728Z",
  "updated_at": "2015-12-26T10:04:58.728Z"
}
```
