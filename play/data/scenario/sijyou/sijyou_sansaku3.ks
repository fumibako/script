;//////散策案3//////////
;このままだと能力が低いだけな気がしてモヤっとする
;散策で、四条綾花さんを登場してみては？
;期間・・・四条家でのデートのあとならいつでも？
;四条祖母と出会い、花材を沢山持っていて主人公が手伝う。テンプレ。
;理由があれば近所のお兄さんの家の前ならok?
;幼馴染なので、わりと近所設定
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
#
今日も町は、切れ目のない雑踏で賑わっている[p]
[主人公目パチ1回]
[wait time=10]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[whosay name="？？？"]
よいっしょ……っと[p]
[whosay name="花屋の店主"]
"四条"さま、今日はひとりで来られたのですか？[p]
#
聞き覚えのある苗字に私は、花屋の前で足を止めた。[p]

[主人公ポーズ指]
[wait time=10]
[主人公目パチ1回]
[wait time=10]

[whosay name="白髪の女性"]
他の用事に出させているのでね[r]
けど、こればっかりは、私の目でみておきたいですの
[p]
#
花屋の前にいたのは、華道で使うのであろう花材を両手いっぱいに抱えた白髪の女性。[p]
その女性は、四条家の園遊会で会った"華織の祖母"であった。[p]

;◎散策2をやってない人もいるので綾花の名前はなくていいかな

;【主人公】少し驚いて
[主人公ポーズ片手]
[wait time=10]
;ポーズは適当。
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの方は、たしか華織さまのお祖母様だわ）[p]
[whosay name="花屋の店主"]
四条さま、さすがにこれ以上持って帰るのは難しいと思いますよ！[p]
[whosay name="四条祖母" color="#888898"]
「なんとかして、持っていきたいわねぇ」[p]

;【主人公】
[主人公ポーズ通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(……)[p]
#
見かねた私は手を貸すことに決めた。[p]
;【主人公】思いつかないときは、ほほえんでいるのかも
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは」[p]
[whosay name="四条祖母" color="#888898"]
「あら！ あなたは！」[p]

;【主人公】やや遠慮がちに
[主人公照れ目普通]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あの……四条家前でしたらお手伝いします」[p]
#
四条家はここから近い。[r]
さすがに四条家の中に入ることは、淑女として許されないけれど、[r]
四条家祖母と一緒ならば、家の前まで訪ねることも許されるであろう[p]
;言い回しが硬い
[whosay name="四条祖母" color="#888898"]
「そうね お願いしてよろしくて？」[p]
;あんまり遠慮がない人かな　フレンドリー姑

;【主人公】ほほえみ
[主人公ほほえみ]
[wait time=20]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

#
[名字]家を通り過ぎ、四条家に繋がる路地を歩く。[p]
 [主人公目閉じ]
幼い頃は、よく兄に連れられながらも、この道のりに心躍らせたものだった。[p]
[主人公目通常]
#
[whosay name="四条祖母" color="#888898"]
「こんな良い方と出会えて華織は幸せですわね」[p]
#
今は、会えずとも、少し違った意味で心弾む道のり。[p]
;【主人公】はじらいほほえみ　うれしそう？
[主人公照れ目普通]
[wait time=10]
[主人公目伏柔]
[wait time=10]
[主人公口笑顔小]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も華織さまと出会えて幸せです」[p]
#
気を良くした四条祖母は、華織の出生秘話から学生時代のことなどについて
道中、数十分ほど語られた。[p]
;【主人公】控えめに笑顔
[主人公目通常]
[wait time=10]
[主人公口笑顔小]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんなことがあったんですか」[p]
#
時折、華織の自慢を挟まれながらも、兄の学生時代の話も聞けて話は弾む。[p]
[whosay name="四条祖母" color="#888898"]
「えぇ、華織は、何でも卒なくこなす子なんですの」[p]
[whosay name="四条祖母" color="#888898"]
「けどねぇ、あの事があってから、特に華道には本気さが無くなったように思えるの」[p]
;【主人公】
[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あのこと？」[p]
[whosay name="四条祖母" color="#888898"]
「ほほ。いえいえ、こちらの話ですわ」[p]
[whosay name="四条祖母" color="#888898"]
「どうか、ウチの華織のことをよろしくお願いします」[p]

;【主人公】素直そう
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
[wait time=10]
「はい、こちらこそ」[p]
;【主人公】爽やかな感じに
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
(華織さま、また今度お会いしましょう)[p]
[主人公目閉じ]
#
四条邸に並ぶ窓を少し眺めた後、来た道を引き返した。[p]
;爽やかな感じになると良い
;現状、去り際かっこいい感じな表情
;てにをは～が足りてない


;機能ボタン表示
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


[機能ボタン表示]


;【背景】[背景_庭]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;[主人公ポーズ通常]


;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_sijyou.ks"
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
