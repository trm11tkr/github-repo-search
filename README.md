# Best Search(ベストサーチ)

- Best Searchではユーザが入力したキーワードでGitHubのリポジトリを検索することができます。</br>
- 検索して取得したリポジトリのデータは、詳細画面で確認することができます。</br>
- ディスプレイモード(ライト・ダーク)にも対応しており、設定を保存することができるため、</br>アプリを終了しても次回起動時に設定を引き継ぐことができます。


### デモ動画

https://user-images.githubusercontent.com/89247188/189135959-19d9eb91-8142-47c2-b5e3-8d3c8f8253ac.MOV


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
0. 本プロジェクトではfvmを使用しているため、[fvm](https://fvm.app/)をインストールされている方はinstallコマンドがご利用できます。<br>
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

## 各画面
### GitHubリポジトリ

|リポジトリ一覧|リポジトリ詳細|
|:---:|:---:|
|<img src ='https://user-images.githubusercontent.com/89247188/189128357-8f9c6057-5d53-41bb-b763-996a635f1ae0.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/189128372-ae8c3cc5-b392-448a-ad73-aee189a0d37e.PNG' width = '300'>|

### GitHubリポジトリ(ダークモード)

|リポジトリ一覧（ダークモード）|リポジトリ詳細（ダークモード）|
|:---:|:---:|
<img src ='https://user-images.githubusercontent.com/89247188/189128694-86ec54e0-c683-44bf-9205-f474636abb78.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/189128836-72058c3e-9cbc-442a-b39c-bc97c27572bc.PNG' width = '300'>|


### その他

|検索結果が0件|初回エラー画面|設定画面|
|:---: | :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/189130117-89c520be-fb64-4b4d-bd08-feab58436fc6.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/189130120-1e172dd0-10bf-4713-9369-b4a5d6774eda.PNG' width = '300'>|<img src = 'https://user-images.githubusercontent.com/89247188/189130602-5bc654a2-bd78-4f9d-aad5-e8c766d00ace.PNG' width = '300'>|


### 横画面対応

|検索画面|リポジトリ詳細画面|
| :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/189132071-e962a626-c2cd-47b6-8e14-f77c7af68f8d.PNG' width = '450'>|<img src ='https://user-images.githubusercontent.com/89247188/189131954-5859715e-6ea5-4b35-85f6-2e7b37a394c1.gif' width = '450'>|
|設定画面|検索結果0件画面|
|<img src ='https://user-images.githubusercontent.com/89247188/189132194-63a2fe2f-c0ec-4e82-9809-337ae29173f8.PNG' width = '450'>|<img src ='https://user-images.githubusercontent.com/89247188/189132185-a4ac1b73-2a55-49aa-8ed5-cdc4bb4ca917.PNG' width = '450'>|


### 多言語対応(en, ja)
一部のみ抜粋
|レポジトリ一覧(en)|リポジトリ詳細(en)|設定(en)|
| :---: | :---: | :---: |
|<img src ='https://user-images.githubusercontent.com/89247188/189133921-21f2f311-b495-470a-8646-76e1c8119e02.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/189133913-8c93c999-ebda-4ac4-8355-84a343e4b75e.PNG' width = '300'>|<img src ='https://user-images.githubusercontent.com/89247188/189133902-7241ea69-8d7f-45af-a384-b9dabfc75cec.PNG' width = '300'>|

#### アニメーション
- タイルをタップすると、ディスプレイモードの変更と共にアイコンが1回転します。

https://user-images.githubusercontent.com/89247188/189133547-e56e513f-0af4-414d-9007-2bb8bc5bd125.MP4

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
- 詳細画面のデザインにこだわりました。（是非横画面にしてみてください！）
