;=============================================
;イベント１０月１週、８．５回目
;=======================お芝居の準備中です==================================
*replay_hujieda_badED_scene3
*start
[call target=*bonyou storage="hujieda/preload_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】プロローグ
[bg wait=true storage="../fgimage/bg/bg_prologue_dark.jpg" time=30]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg" time=30]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
;[主人公ポーズ通常]
;[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
;テスト用です。[p]

*seen_hujieda_11_3_bad
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字 
[テキスト全画面白文字暗] 

――藤枝様とは、それきり。[p] 

わずかな時間の内に、[r]
心を寄せ合うことは、難しい。[p] 

けれど、藤枝様にもっと心を込めて、[r]
沢山、手紙を送ればよかった。[p] 
;===============================================================
[暗転２ storage="bg/bg_prologue_dark.jpg"]
[bg wait=true storage="../fgimage/bg/anten.jpg" time=0]
;↑「完」の後にお稽古部屋背景に数秒切り替わる現象を確認しましたので、暗転に切り替えます
[wait time=10]
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
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[freeimage layer=29 time=2000]
[fadeoutbgm time=3000]
[wait time=500]
;スマホで音楽がぶちときれるのはどうしようもない 
;===============================================================
[イベントシーン終了]

[if exp="f.flag_replay == true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;◆回想記録
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

;↓クリアリストへのテストメニューからの反映確認用にコメントアウトします
;[if exp="f.okeiko_gamen == true"]
[藤枝ルート終了 end="bad2"]
;[endif]

@jump storage="test_hujieda.ks"
[s]
