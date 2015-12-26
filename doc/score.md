## GET 
Scoreの一覧を取得する.

### Example

#### Request
```
GET /users/77/scores HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 215
Content-Type: application/json; charset=utf-8
ETag: W/"f72d7c777e2d3856304bb507736d4f5c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a28e2d56-24d7-426c-9ff5-1b96e7770450
X-Runtime: 0.003703
X-XSS-Protection: 1; mode=block

[
  {
    "id": 43,
    "score": "1000.0",
    "created_at": "2015-12-26T09:11:36.811Z",
    "updated_at": "2015-12-26T09:11:36.811Z"
  },
  {
    "id": 44,
    "score": "2000.0",
    "created_at": "2015-12-26T09:11:36.815Z",
    "updated_at": "2015-12-26T09:11:36.815Z"
  }
]
```

## POST /users/:id/scores
Scoreを新規作成する.

### Example

#### Request
```
POST /users/78/scores HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 17
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

score[score]=1000
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 106
Content-Type: application/json; charset=utf-8
ETag: W/"e76a6f824f62d57fcc00e9cd8a77393a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 191cacd0-7268-4862-85b6-d0e3a739fcd2
X-Runtime: 0.004565
X-XSS-Protection: 1; mode=block

{
  "id": 45,
  "score": "1000.0",
  "created_at": "2015-12-26T09:11:36.831Z",
  "updated_at": "2015-12-26T09:11:36.831Z"
}
```
