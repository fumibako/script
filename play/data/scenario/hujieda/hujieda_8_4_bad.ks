;=======================お芝居の準備中です==================================
*start
[stopbgm]
;[call target=*8_4 storage="hujieda/preload_hujieda.ks"]
[freeimage layer = 1]
@jump target=*seen_hujieda_8_4_bad
;【背景】主人公邸 お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg" time=30]
[wait time=10]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
;[主人公ポーズ通常]
;[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
テスト用です。[p]

*seen_hujieda_8_4_bad
;==========================スクリプト・全画面表示の間に設定===============================
[whosay name=""]
;#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=10]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*replay_hujieda_8_4_bad
その後、藤枝様からのお手紙も来なかった。 [r]
――お箏と藤枝様の事だけ考えすぎていて、 [r]
私の気持ちが重くてすれ違ってしまった。 [r][r]
他の方とも誠意をもってお手紙を交わしたうえで[r] 
藤枝様を想えばよかったのかもしれない。[p]
;===============================================================
[暗転２ storage="bg/bg_prologue_dark.jpg"]
[bg wait=true storage="../fgimage/bg/anten.jpg" time=0]
;↑他のEDで「完」の後にお稽古部屋背景に数秒切り替わる現象を確認しましたので、念のためこのEDについても暗転に切り替えます
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
[fadeoutbgm time=3000]
;会話ウィンドウ消去
[暗転１]
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;===============================================================
;bad判定用 ツイート抑止 
[eval exp="tf.ED_bad = 1"]
[wait time=10]
[freeimage layer=29 time=1300]
[if exp="f.okeiko_gamen == true || tf.test_hujieda == true"]
[藤枝ルート終了 end="bad3"]
;十一月三週のバッドがバッド１にあたるためコメント化です
[endif]
[イベントシーン終了]
@jump storage="test_hujieda.ks"
[s]
