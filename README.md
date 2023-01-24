# web_view_android

[webview_flutter](https://pub.dev/packages/webview_flutter) 를 활용한 간단한 앱

- 온라인 강의는 webview_flutter 3.0.0을 기준으로 진행했으나, 강의 챕터 종료 후 최신 버전인 4.0.2에 맞춰서 코드 수정함

  

# 추가적으로 해결해야할 사항 (2023-01-24 기준)

- 앱 오른쪽 상단에 있는 홈 버튼을 누르면 클릭 자체는 이루어지지만 페이지 이동이 이루어지지 않음

  - 새롭게 바뀐 4.0.2 버전에 맞게 코드를 해석 및 수정할 실력이 없거나,
  - 아직 배우지 않은 페이지 이동 방식을 사용해야 할 것 같음

- 해결방안 : 아직 학습하지는 않았지만 PageController, Navigator, Route 등의 키워드를 좀 더 공부해서 해결해야 할 것 같음

  

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

