;=============================================
;イベント１２回目【時子さん訪問】12月3週、選択肢以降（読込不良対策のため分割します
;=============================================
*yes
[cm]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
;時子さんに藤枝の事を話すことにした。
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#
時子さんに藤枝様の事を話すことにした。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公憂い]
「藤枝様がここから居なくなってしまうの。[r]
[sp]私はそれがたまらなく悲しかったのです」[p]

[whosay name="三宮　時子" color="#c25232"]
「[名前]さん、恋をされたのですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公目閉じ]
「ええ、いつの間にか好きになってしまいました」[p]

「でも私の想いは、藤枝様にとっても[r]
[sp]お父様や磯野達にとっても良くないものです」[p]

[whosay name="三宮　時子" color="#c25232"]
「そうかしら？[r]
[sp]良くないものかなんてわからないものよ」　[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公目大]
[主人公口通常]
「それはどういう意味ですか？」[p]

[whosay name="三宮　時子" color="#c25232"]
「貴方の想いは悪い方へ働くなんて限らないわ。[r]
[sp]それに藤枝様は将来有望な殿方です」[p]

「いつまでも[名前]さんのお父様や家令が、お手紙を許されない[r]
[sp]地位にいるとは思いません」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「それは！」[p]

[whosay name="三宮　時子" color="#c25232"]
「何か解決策があるかもしれません。[r]
[sp]私も藤枝様に関して調べておきますわ。[r]
[sp]まずは情報からです」[p]

#
時子さんは私を元気づけるように微笑み、
;うなずく表情へ
[主人公口ほほえみ]
[主人公目閉]
私は[ruby text=うな]頷いた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：ほほえみ
[主人公困りほほえみ]
「そうですね。　悲しんでいても仕方ありません。[r]
[sp]私も少し、もがいてみます」[p]

[whosay name="三宮　時子" color="#c25232"]
「少し元気になったようで良かったわ」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公目閉じ]
[主人公口ほほえみ]
「それは、時子さんのおかげです。[r]
[sp]後は、私も何かできないか頑張ります！」[p]
;次のイベントで表示されていまう名前残りを消去
#

[eval exp="sf.event_hujieda_12_3 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_hujieda.ks"
[s]
;=========================================================================
*no
;badに飛びます　スクリプト担当者以外は消さないでください
;メッセージレイヤサイズを会話窓用に戻す
[cm]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】ヒロインの部屋　背景をもどしてください
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[jump storage="hujieda/hujieda_12_3_badED.ks" target=no_seen]
;=========================================================================
[s]
