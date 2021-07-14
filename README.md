# BASICS_UserDefaults

## 概要

* UserDefaultsとはユーザーのデフォルトデータベースへのインターフェースのことであり, そこにkey-valueのペアをアプリの起動時にわたって永続的にストアすることができる.
> An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app[1].

* デフォルトシステムを使うと、ユーザーの好みに合わせてアプリの動作をカスタマイズすることができます。たとえば、ユーザーが好みの測定単位やメディアの再生速度を指定できるようになります。アプリは、ユーザーのデフォルトデータベースにある一連のパラメーターに値を割り当てることで、これらの好みを保存します。パラメータは、アプリの起動時のデフォルト状態や、デフォルトでの動作を決定するために一般的に使用されるため、デフォルトと呼ばれています。

* 保存するデフォルトObjectの条件について.
   * デフォルト・オブジェクトは、プロパティ・リストでなければなりません。つまり、NSData、NSString、NSNumber、NSDate、NSArray、または NSDictionary のインスタンス (またはコレクションの場合は、これらのインスタンスの組み合わせ) でなければなりません。 他のタイプのオブジェクトを保存したい場合は、通常、NSDataのインスタンスを作成するようにアーカイブする必要があります。[1]
   * UserDefaults storage is limited to the so-called property-list data types [1]: Data, String, Date, Bool, Int, Double, Float, Array, Dictionary and URL (the only non-property-list-type). It is also possible to store arbitrary objects by encoding them into a Data object first.[2]
   
## 細かい話.

* [Where are the standard UserDefaults stored?](https://crystalminds.medium.com/where-are-the-standard-userdefaults-stored-d02bf74854ff)
   * データベースの保存場所に関する記事. これに沿ってAppDateを見るとkey-valueのplistが保存されていることが確認できる.
* [Is there any limit in storing values in NSUserDefaults?](https://stackoverflow.com/questions/7510123/is-there-any-limit-in-storing-values-in-nsuserdefaults)
   * データベースに保存できるデータサイズについての議論.基本的に制限は無さそうだが, 膨大だとアプリのパフォーマンスに影響がでそうである程度の目安はあるようだ. 

## Reference
[1][Apple-UserDefaults](https://developer.apple.com/documentation/foundation/userdefaults) 
[2][The Advanced Guide to UserDefaults in Swift](https://www.vadimbulavin.com/advanced-guide-to-userdefaults-in-swift/)

## 用語
* アーカイブ ＝ シリアライズ
* アンアーカイブ = デシリアライズ
