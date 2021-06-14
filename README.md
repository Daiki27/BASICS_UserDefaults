# BASICS_UserDefaults

## UserDefaultsの使い方.

* Storing Default Objects  [ref](Storing Default Objects)
UserDefaults クラスには、浮動小数点数、倍数、整数、ブール値、URL などの一般的な型にアクセスするための便利なメソッドが用意されています。 これらのメソッドについては、「デフォルト値の設定」で説明します。 デフォルト・オブジェクトは、プロパティ・リストでなければなりません。つまり、NSData、NSString、NSNumber、NSDate、NSArray、または NSDictionary のインスタンス (またはコレクションの場合は、これらのインスタンスの組み合わせ) でなければなりません。 他のタイプのオブジェクトを保存したい場合は、通常、NSDataのインスタンスを作成するようにアーカイブする必要があります。 UserDefaultsから返された値は、値としてmutableオブジェクトを設定した場合でも、不変です。 たとえば、"MyStringDefault "の値として mutable な文字列を設定した場合、後で string(forKey:) メソッドを使って取得した文字列は不変です。 ミュータブルな文字列をデフォルト値として設定し、後にその文字列を変異させた場合、set(_:forKey:)を再度呼び出さない限り、デフォルト値には変異した文字列の値が反映されません。 詳しくは、「環境設定プログラミングガイド」をご覧ください。

* 疑問 - 対象ではない型を保存するときに, なぜ[NSData](https://developer.apple.com/documentation/foundation/nsdate)のインスタンスを作成するようにアーカイブする必要があるのだろうか？
   * アーカイブ ＝ シリアライズ
   * アンアーカイブ = デシリアライズ
