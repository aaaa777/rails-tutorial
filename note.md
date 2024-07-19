# chapter 5
- assetsのバインドの実装
- scssのimportなどの解決先はどこ？

# chapter 6
- migration note
  - ActiveRecord::Migration
- model note
  - #new: (record_hash) -> ApplicationRecord メモリ上にモデルを作成する
  - #save: (record_hash) -> bool モデルをDBに保存し成功かどうかが真偽値で返る
  - #create: (record_hash) -> ApplicationRecord モデルを作成して保存する

  - #valid? -> bool
  - #destory　削除
  - #update: (record_hash) -> bool レコードの更新と保存をし、結果を返す

- model validation
  - ActiveRecord::Migration
  - #validate
    - presence 何かしらが存在するべき
    - length { maximum: 最大値 }
- 正規表現


