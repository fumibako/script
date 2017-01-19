;葛城宮編
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_6_1
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*9_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築ボタン無し版]
[暗転]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
[eval exp="f.haikei_credit=''"]
―― 夢を見た。[p]
# 
;【背景】執務室（裏で画面構成）
[chara_mod name="bg" storage="bg/I9IhvvVdPo/situmu.jpg"]
[eval exp="f.haikei_credit='photo　by　明治村画像庫'"]
[表示準備 storage="bg/I9IhvvVdPo/situmu.jpg"]
ドアのノックの音がした。[r]
多分、母宮だろう。　話についても予想はしている。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

[stopbgm]

[whosay name="葛城宮　晴仁" color=%mp.color]
「どうぞ。」[p]

;【SE】ドアが開く
[playse storage=door_open.ogg loop=false ]

# 
予想通り、母宮が姿を見せる[p]

[whosay name="葛城宮妃" color=%mp.color]
「……お話があります。[r]
[sp]お手紙を書いたそうですわね」[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
「ええ、[r]
[sp]ですが、母宮に相談する歳でもありません」[p]


[whosay name="葛城宮妃" color=%mp.color]
「まあ！　貴方は どうして勝手に話を進めるんですの？」[p]

;[葛城宮汗]
[whosay name="葛城宮　晴仁" color=%mp.color]
「だから母宮に相談する歳でもないと……」[p]

[whosay name="葛城宮妃" color=%mp.color]
「貴方は強引でお相手の方も、ご迷惑をかけてしまうかも知れませんわ」[p]

;[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……今は手紙を交わしているだけですので、[r]
[sp]迷惑かどうかは、彼女の返信しだいで判断するつもりです」[p]

[whosay name="葛城宮妃" color=%mp.color]
「それだけではいけません。[r]
[sp]品行方正で礼儀正しく評判の良い方でないと。[r]
[sp]それに貴方以外の方とお手紙を交わし始めたばかりとか」[p]

「ああ……不安ですわ」[p]

;[葛城宮眉怒り]
[whosay name="葛城宮　晴仁" color=%mp.color]
「何が言いたいのですか？」[p]

[whosay name="葛城宮妃" color=%mp.color]
「もしお相手の方に貴方より親密になっている殿方がいたり、[r]
[sp]お稽古も真面目に取り組んでいない方だったら[r]
[sp]黙って貴方から引き下がりなさい」[p]

;[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]
「勿論、相手に無理強いをするつもりはありません」[p]

[whosay name="葛城宮妃" color=%mp.color]
「貴方が年頃の女性に好意を持つことだけで進歩だとは、[r]
[sp]思っていますので、完全に反対はしませんが、[r]
[sp]どんな方私も知ってから判断しますわ」[p]

;[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ええ、そうしてください。[r]
[sp]母宮も彼女を見れば納得いただけるでしょう。」[p]

[whosay name="葛城宮妃" color=%mp.color]
「そう……お会いするのを楽しみにしています」[p]

[暗転]
[fadeoutse time=2000]
[fadeoutbgm time=3000]
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
;【背景】主人公邸 部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下の夢だったわ。」[p]

[主人公ポーズ指]
（他のお手紙の方々と親しくなっては、殿下とは縁が遠くなってしまうのかしら？[r]
[sp]それにもっと淑女らしくならないといけないのだわ）[p]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_katuragi.ks"
[s]

*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
