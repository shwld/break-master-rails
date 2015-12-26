## GET 
Scoreの一覧を取得する.

### Example

#### Request
```
GET /users/34/scores HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 239
Content-Type: application/json; charset=utf-8
ETag: W/"23fbccc5cdf1a299cadf9e2f19bc0af7"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 586e45ff-47ec-4c02-8fa6-c46525cbafaa
X-Runtime: 0.003745
X-XSS-Protection: 1; mode=block

[
  {
    "id": 8,
    "score": "1000.0",
    "created_at": "2015-12-26T10:04:58.658Z",
    "updated_at": "2015-12-26T10:04:58.658Z",
    "user_id": 34
  },
  {
    "id": 9,
    "score": "2000.0",
    "created_at": "2015-12-26T10:04:58.659Z",
    "updated_at": "2015-12-26T10:04:58.659Z",
    "user_id": 34
  }
]
```

## POST /users/:id/scores
Scoreを新規作成する.

### Example

#### Request
```
POST /users/35/scores HTTP/1.1
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
Content-Length: 119
Content-Type: application/json; charset=utf-8
ETag: W/"5ea84aadd9ce3c24e1b2f107f40647b7"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e5980a38-cfa4-4542-a718-d6f165baaa13
X-Runtime: 0.004881
X-XSS-Protection: 1; mode=block

{
  "id": 10,
  "score": "1000.0",
  "created_at": "2015-12-26T10:04:58.674Z",
  "updated_at": "2015-12-26T10:04:58.674Z",
  "user_id": 35
}
```
