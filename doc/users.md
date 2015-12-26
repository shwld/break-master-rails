## GET 
200 ok が返ってくる.

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
Content-Length: 253
Content-Type: application/json; charset=utf-8
ETag: W/"ca125753244f64182cc702982e711ed1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f2458cc-d759-457a-a37e-7eb71e17aad7
X-Runtime: 0.013728
X-XSS-Protection: 1; mode=block

[
  {
    "id": 9,
    "name": "ゆうすけ",
    "platform_id": 1,
    "created_at": "2015-12-26T08:09:23.591Z",
    "updated_at": "2015-12-26T08:09:23.591Z"
  },
  {
    "id": 10,
    "name": "たかし",
    "platform_id": 1,
    "created_at": "2015-12-26T08:09:23.598Z",
    "updated_at": "2015-12-26T08:09:23.598Z"
  }
]
```

## POST /users
201 ok が返ってくる.

### Example

#### Request
```
POST /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 77
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user[name]=%E3%83%86%E3%82%B9%E3%83%88+%E5%A4%AA%E9%83%8E&user[platform_id]=1
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 131
Content-Type: application/json; charset=utf-8
ETag: W/"8a78a3210403ec38d5acfa7fc433ddb8"
Location: http://www.example.com/users/11
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1ecea05a-a3ad-446e-8bf5-5a77d223f3c3
X-Runtime: 0.004790
X-XSS-Protection: 1; mode=block

{
  "id": 11,
  "name": "テスト 太郎",
  "platform_id": 1,
  "created_at": "2015-12-26T08:09:23.628Z",
  "updated_at": "2015-12-26T08:09:23.628Z"
}
```
