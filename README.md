# Best Search(ベストサーチ)

- Best Searchではユーザが入力したキーワードでGitHubのリポジトリを検索することができます。</br>
- 検索して取得したリポジトリのデータは、詳細画面で確認することができます。</br>
- ディスプレイモード(ライト・ダーク)にも対応しており、設定を保存することができるため、</br>アプリを終了しても次回起動時に設定を引き継ぐことができます。


### デモ動画

https://user-images.githubusercontent.com/89247188/188501634-5a620a97-12d5-47fa-b064-0b36c3d6d8b1.mov

### 環境
- Flutter 3.3.0 • channel stable • https://github.com/flutter/flutter.git</br>
- Framework • revision ffccd96b62 • 2022-08-29 17:28:57 -0700</br>
- Engine • revision 5e9e0e0aa8</br>
- Tools • Dart 2.18.0 • DevTools 2.15.0</br>

### 対象 OSバージョン
||OS Version|
|:---|:---|
|iOS|11.0 ~ 15.2|
|Android|4.1 ~ 12|

Flutter SDK 3.3.0(stable)の更新に伴い、iOSの最小対象OSバージョンのテンプレートが11.0に引き上げられました。</br>
私の実行環境では、OS Version 9.0の環境を用意することができなかったため、テンプレート通り11.0に設定しました。m(_ _)m

### 実行方法
0. 本プロジェクトではfvmを使用しているため、fvmをインストールされている方はinstallコマンドがご利用できます。<br>
```
fvm install
```
それ以外の方は、Flutter SDKを3.3.0(stable)に設定していただけますよう、よろしくお願いします。

1. git clone で取り込む<br>
```
git clone git@github.com:trm11tkr/github-repo-search.git
```
2. 本プロジェクト下でflutter clean<br>
```
flutter clean
```
3. 本プロジェクト下でflutter pub get<br>
```
flutter pub get
```
#### Android
4. ビルドを指定してfutter runを実行(引数なしの場合debugでビルドされます)
- release
```
flutter run --release
```

- debug
```
flutter run --debug
```


#### iOS
- App Silicon Macをお使いの方(Intel Macの方は6に進んでください)
4. iosディレクトリに移動
```
cd ios
```
5. Rosetta2経由でpodをinstall
```
arch -x86_64 pod install
```
6. Runner.xcworkspaceを開いて<br>
- TargetsのRunner -> Signing & CapabilitiesのTeamを設定
- 署名をご自身のApple IDに設定

7. ビルドを指定してfutter runを実行(引数なしの場合debugでビルドされます)
- release（シミュレータの方は実行できません）
```
flutter run --release
```

- debug
```
flutter run --debug
```
## アプリの詳細
### アプリ名
|ローカル設定|アプリ名|
|:---|:---|
|ja|ベストサーチ|
|en|Best Search|

### アプリアイコン
<img src = 'https://user-images.githubusercontent.com/89247188/188437439-f8518233-d95a-46e9-8de9-439132975ce4.png' width = '200'>

### 各画面
#### GitHubリポジトリ

|リポジトリ一覧|リポジトリ詳細|
| :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/188506306-a063a09d-84cd-4319-a6fa-3656034507e1.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/188506167-69afdacb-4f5d-41ef-82aa-7c4e3d04a7cd.PNG' width = '300'>|

#### 初回検索結果

|0件|エラー|
|:---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/188506170-1468472d-ce73-4229-b750-1b00c25ef15a.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/188506173-7cc07199-1111-4f60-a1ad-d02339aa410c.PNG' width = '300'>|

#### 設定

|端末の設定|ライトモード|ダークモード|
| :---: | :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/188506271-cfe30f79-bc4a-45df-966e-4e061814483a.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/188506274-cb3e8b60-3640-4fe2-8c02-1efb5713645e.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/188506179-355fe07a-390b-4eff-9763-470f96d1a9c4.PNG' width = '300'>|

#### 横画面対応

|検索画面|リポジトリ詳細画面|
| :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/188509319-8ec9b3ee-f622-41a6-8cc3-171b884cab1b.PNG' width = '450'>|<img src ='https://user-images.githubusercontent.com/89247188/188509320-399fa815-d1b0-4f20-9e66-cee1f50db232.PNG' width = '450'>|
|設定画面|検索結果0件画面|
|<img src ='https://user-images.githubusercontent.com/89247188/188509321-a5c3982c-303a-48c7-a42e-fe9828d042c4.PNG' width = '450'>|<img src ='https://user-images.githubusercontent.com/89247188/188509322-f4a2623b-808c-4bdb-a10a-835e252f81e4.PNG' width = '450'>|


#### 多言語対応(en, ja)
一部のみ抜粋
|レポジトリ詳細(en)|検索結果0件(en)|設定(en)|
| :---: | :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/188507160-6209c30e-671a-4a95-9091-e3a35e3c9016.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/188507158-dd5df6eb-049a-45b6-9e95-5dd0bddf18df.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/188507154-6585e949-2797-477a-929d-9fe97c5d9785.PNG' width = '300'>|

#### アニメーション
- タイルをタップすると、ディスプレイモードの変更と共にアイコンが1回転します。

https://user-images.githubusercontent.com/89247188/188507599-0c048ff7-dc56-4064-b191-9f011dcbfb7b.mov

### アピールポイント
#### コーディングにおいて
- Issueやプルリクエスト、コメントなど、レビューしていただくことやチーム開発などを意識しました。
- ローカルDB(SharedPreferences)を活用しました。
- extensionをたくさん活用しました。
- apiエラーのハンドリングを丁寧に行いました。
- いくつか、今回のプロジェクトで初めて挑戦してみました。
  - GitHub Actionsによる静的解析
  - 多言語対応
  - API通信によるページング処理
#### デザイン面
- 言語の色をGitHubで設定されているものを利用することでUIがすごく向上したと思います。
- アニメーション。
- ページング処理においてローディングやエラー時にユーザに煩わしさを感じさせない挙動を意識しました。
- 検索画面における横画面はどうしても圧迫感があるので、AppBarを非表示にしました。
