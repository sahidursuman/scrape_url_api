# README

A demo Rails API for storing h1,h2,h3 elements contents from an URL.

Example Usage for Posting an URL:
```
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"scrape_url":{"url":"http://mathiuraup.com"}}'  http://localhost:3000/api/v1/scrape_urls
```

Example Usage for list of URL details:
```
curl -H "Accept: application/json" -H "Content-type: application/json" -X GET http://localhost:3000/api/v1/scrape_urls

```
