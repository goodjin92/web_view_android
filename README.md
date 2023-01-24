# web_view_android

[webview_flutter](https://pub.dev/packages/webview_flutter) 를 활용한 간단한 앱



# HTTP 프로토콜 허용 방법

Android와 iOS에서 적용하는 방법이 다름



## Android http 허용

- ..\android\app\src\main\AndroidManifest.xml

```dart
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.web_view_android">
    
    <uses-permission android:name="android.permission.INTERNET" /> # 인터넷 권한 설정
    <application
        android:label="web_view_android"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher"
        android:usesCleartextTraffic="true" # http 허용
    >
```





## iOS http 허용

- ..\ios\Runner\Info.plist 에서 최하단에 아래 문구 추가하기

```dart
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsLocalNetworking</key>
        <true/>
        <key>NSAllowsArbitraryLoadsInWebContent</key>
        <true/>
    </dict>
# 아래는 기본 코드의 최하단 (아래 코드 바로 위에 추가할 것)
</dict>
</plist>
```

