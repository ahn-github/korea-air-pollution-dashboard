Application for monitoring korea air pollution

[![Dashboard](http://img.youtube.com/vi/mJcx6-VOzKs/0.jpg)](http://www.youtube.com/watch?v=mJcx6-VOzKs "Korea Air Pollution")

#### Preparations

It use open-api service- ![link](https://www.data.go.kr/dataset/15000581/openapi.do). Therefore, you need "service key" for get response data.
Then, make 'secret.json' file in the project directory path.
Secret.json should be look like below

```
{
  "SECRET_KEY": "your-django-secret-key",
  "OPEN_API_KEY": "open-api-service-key"
}
```

#### requirements

pip install below pachakes
* django
* django-leaflet
* django-geojson