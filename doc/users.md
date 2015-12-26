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
Content-Length: 258
Content-Type: application/json; charset=utf-8
ETag: W/"46cdf47f24f18a50758ec6189c8dd25b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 60cf742c-0ff3-411b-9e06-fc058d048313
X-Runtime: 0.001866
X-XSS-Protection: 1; mode=block

[
  {
    "id": 81,
    "name": "ゆうすけ",
    "platform_id": 115,
    "created_at": "2015-12-26T09:11:36.884Z",
    "updated_at": "2015-12-26T09:11:36.884Z"
  },
  {
    "id": 82,
    "name": "たかし",
    "platform_id": 115,
    "created_at": "2015-12-26T09:11:36.886Z",
    "updated_at": "2015-12-26T09:11:36.886Z"
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
Content-Length: 79
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user[name]=%E3%83%86%E3%82%B9%E3%83%88+%E5%A4%AA%E9%83%8E&user[platform_id]=116
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 133
Content-Type: application/json; charset=utf-8
ETag: W/"ce5b70e0b16678e3f19961fbc62bda1b"
Location: http://www.example.com/users/83
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e903b374-b99c-4234-93e7-37d27acdc560
X-Runtime: 0.005170
X-XSS-Protection: 1; mode=block

{
  "id": 83,
  "name": "テスト 太郎",
  "platform_id": 116,
  "created_at": "2015-12-26T09:11:36.900Z",
  "updated_at": "2015-12-26T09:11:36.900Z"
}
```
