;葛城宮編
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_6_1
[stopbgm]
[call target=*6_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
[イベントシーン構築ボタン無し版]
[暗転１]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示　 2000かかる演出なのでwait=trueはなしに
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=2000]
[wait time=10]
[eval exp="f.haikei_credit=''"]
――夢を見た。
[autosave改]
[p]
# 
[イベントシーン構築枠茶色]
;【背景】執務室（裏で画面構成）
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/situmu.jpg" wait=true]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;[表示準備 storage="bg/I9IhvvVdPo/situmu.jpg"]

ドアのノックの音がした。[r]
多分、母宮だろう。　話についても予想はしている。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

[whosay name="葛城宮　晴仁" color=%mp.color]
「どうぞ」[p]

;【SE】ドアが開く
[if exp="sf.SE=='ON'"]
[playse storage=door_open.ogg loop=false ]
[endif]

# 
予想通り、母宮が姿を見せる。[p]

[whosay name="葛城宮妃" color=%mp.color]
「……お話があります。　お手紙を書いたそうですわね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
「ええ。　ですが、母宮に相談する歳でもありません」[p]


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
[if exp="f.katuraginomiya_only == 1 "]
;葛城宮のみの場合　変更してください
「それだけではいけません。[r]
[sp]品行方正で礼儀正しく評判の良い方でないと」[p]
[else]
;それ以外の場合
「それだけではいけません。[r]
[sp]品行方正で礼儀正しく評判の良い方でないと。[r]
[sp]それに貴方以外の方とお手紙を交わし始めたばかりとか」[p]
[endif]

「ああ……不安ですわ」[p]

;[葛城宮眉怒り]
[whosay name="葛城宮　晴仁" color=%mp.color]
「何が言いたいのですか？」[p]

[whosay name="葛城宮妃" color=%mp.color]
[if exp="f.katuraginomiya_only == 1 "]
;葛城宮のみの場合　変更してください
「もし、お稽古も真面目に取り組んでいない方だったら」[p]
[else]
;それ以外の場合
「もしお相手の方に貴方より親密になっている殿方がいたり、[r]
[sp]お稽古も真面目に取り組んでいない方だったら[r]
[sp]黙って貴方から引き下がりなさい」[p]
[endif]

;[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]

[if exp="f.katuraginomiya_only == 1 "]
;葛城宮のみの場合　変更してください　適当に入れてあります
「彼女はそんな女性ではありません」[p]
[else]
;それ以外の場合
「勿論、相手に無理強いをするつもりはありません」[p]
[endif]


[whosay name="葛城宮妃" color=%mp.color]
「貴方が年頃の女性に好意を持つことだけで、進歩だとは思っています。[r]
[sp]ですから、完全に反対はしませんが、[r]
[sp]どんな方か、私も知ってから判断しますわ」[p]

;[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ええ、そうしてください。[r]
[sp]母宮も彼女を見れば納得いただけるでしょう」[p]

[whosay name="葛城宮妃" color=%mp.color]
「そう……お会いするのを楽しみにしています」[p]
#
[暗転１]
;====================================================
[fadeoutse time=2000]
[fadeoutbgm time=3000]
[layopt layer=fix visible=false]
[image name="junbi" layer=29 x=0 y=0 storage="bg/room_niwa.jpg" time=2000]
[wait time=2000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[bg method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=100 wait=true]
[wait time=10]
;【背景】主人公邸 部屋
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=100 wait=true]
[wait time=10]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[freeimage layer=29 time=1000]
[wait time=1100]
[layopt layer=fix visible=true]
[メッセージウィンドウ上ボタン表示]
;====================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下の夢だったわ」[p]
[主人公ポーズ指]
[if exp="f.katuraginomiya_only == 1 "]
;葛城宮のみの場合
（もっと淑女らしくならないといけないのだわ）
[else]
;それ以外の場合
（他のお手紙の方々と親しくなっては、殿下とは縁が遠く[r]
[sp]なってしまうのかしら？[r]
[sp]それにもっと淑女らしくならないといけないのだわ）
[endif]

[p]

[eval exp="sf.event_katuragi_6_1 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
@jump storage="test_katuragi.ks"
[s]
