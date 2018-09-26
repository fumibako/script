*start
;◆イベント4月「情報の助言」
*common_4
[if exp="sf.KSKIP=='ON' && sf.trail_event_replay_common_4_b==undefined"]
	[skipstop]
[endif]
*common_4_b
;共通イベント：プリロード処理
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
[clearfix]
[freeimage layer = 21]
[freeimage layer = 22]
;【背景】お稽古部屋
[bg wait=true storage="../fgimage/bg/bg_okeiko.jpg"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[イベントシーン構築ボタン無し版]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[whosay name="磯野" color="dimgray"]
「お嬢様。『情報』をご覧になりましたか？」
[autosave]
[p]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「『情報』ですか？」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[layopt layer=27 visible=true] 
;↓ここでは（押すと表示不具合が出てしまうので）画像だけのボタンを表示
[image layer=27 x=450 y=17 storage="../image/button_info.png"]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]

[whosay name="磯野" color="dimgray"]
「はい。お稽古画面左上の『情報』ボタンを押していただきますと[r]
[sp]お相手の情報や、お手紙、ヒントを見ることができます」[p]

「よろしければ、お試しくださいませ」[p]

[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#
[eval exp="f.event_advice=1"]
@jump storage=event.ks target=*event_owari