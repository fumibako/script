;--------ロードが押された時の処理
*load
;黒田ルート以外はまだオートセーブに対応できていないため、一旦オートセーブ関連機能をスキップします(3/18 ◆jsYiJcqRkk
;(全シナリオ導入するまでgithubのみ)オートセーブ導入につき復活させます7/25◆jsYiJcqRkk
;@jump target=*noload
;メッセージレイヤの定義(画面全体）
[position layer=message0 width=960 height=500 top=80 left=340 page=fore opacity=0]
[stopbgm]
;autosaveされたデータが存在する場合、sf.system.autosave に trueが入ります
[if exp="sf.system.autosave == true"]
[cm]
;標準のメッセージレイヤを表示
@layopt layer="message0" visible = true
[position width=960 height=550 top=120 left=100 page=fore opacity=0]
自動的に保存されたデータが存在します。ロードしますか？[r]
[font size=41]
[r]
[r]
[r]
[link target=*select1]　　　　　　はい[endlink][r]
[r]
[r]
[r]
[link target=*select2]　　　　　　いいえ[endlink][r]
[r]
[resetfont]
;↓バックログへシステムメッセージが入るのを防止
[iscript]
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
[endscript]
[else]
;autosaveデータが無い際にロードへ飛ぶ必要あり(ゲーム停止してしまう)
@jump target=*noload
[endif]
[s]

*select1
[cm]
;ロードを実行します
[autoload]
[s]

*select2
[cm]

*noload
[position layer=message0 width=960 height=500 top=640 left=960 page=fore opacity=0]
[showload]
;[return]
;↑callで呼び出すと[return]でエラーが出てしまったためjumpに切り替えました
;loadをキャンセル×したときのジャンプ先があるといいと思います
;ありがとうございます！ システム面まで見てくださって心強いです
@jump storage=&f.load_mae_storage target=&f.load_mae_target
[s]
