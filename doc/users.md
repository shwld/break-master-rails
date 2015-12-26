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
ETag: W/"0f330c78239f1169080bc6d9ae280adb"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3e1457f9-1189-4082-910e-33239bee324a
X-Runtime: 0.001840
X-XSS-Protection: 1; mode=block

[
  {
    "id": 34,
    "name": "ゆうすけ",
    "platform_id": 24,
    "created_at": "2015-12-26T08:31:15.318Z",
    "updated_at": "2015-12-26T08:31:15.318Z"
  },
  {
    "id": 35,
    "name": "たかし",
    "platform_id": 24,
    "created_at": "2015-12-26T08:31:15.321Z",
    "updated_at": "2015-12-26T08:31:15.321Z"
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

user[name]=%E3%83%86%E3%82%B9%E3%83%88+%E5%A4%AA%E9%83%8E&user[platform_id]=25
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 132
Content-Type: application/json; charset=utf-8
ETag: W/"3c8af2599803a9538298148d67d26354"
Location: http://www.example.com/users/36
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 879f8747-0eb6-4b04-baaa-e76a125364df
X-Runtime: 0.007104
X-XSS-Protection: 1; mode=block

{
  "id": 36,
  "name": "テスト 太郎",
  "platform_id": 25,
  "created_at": "2015-12-26T08:31:15.332Z",
  "updated_at": "2015-12-26T08:31:15.332Z"
}
```
