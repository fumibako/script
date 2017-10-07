;//////散策案3//////////
;期間・・・四条家でのデートのあとならいつでも？;四条祖母と出会い、花材を沢山持っていて主人公が手伝う。テンプレ。
;=======================お芝居の準備中です================================================================
*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
;[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです========================================================
#
町に出た。[r]
薄紅色の[ruby text=コス]秋[ruby text=モス]桜が風に揺れ、秋の訪れを知らせている。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公ほほえみ]
;（秋の風って爽やかな気持ちにさせてくれるわ）[p]

[whosay name="？？？"]
「 よいっしょ……っと 」
[主人公目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[p]
[whosay name="花屋の店主"]
「"四条"様、今日はひとりで来られたのですか？」[p]
#
聞き覚えのある苗字に私は、花屋の前で足を止めた。[p]

[主人公目パチ1回]
[wait time=10]

[whosay name="白髪の女性"]
「他の用事に出させているのでね。[r]
[sp]けど、こればっかりは、私の目でみておきたいですの」
[p]
#
花屋の前にいたのは、華道で使うのであろう花材を両手いっぱいに抱えた[r]
白髪の女性。[p]
その女性は、四条家の園遊会で会った[r]
"華織様のお[ruby text=ば]祖[ruby text=あ]母様"だった。[p]

;◎散策2をやってない人もいるので綾花の名前はなくていいかな

;【主人公】少し驚いて
[主人公ポーズ片手]
[wait time=10]
;ポーズは適当。
[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの方は、たしか華織様のお[ruby text=ば]祖[ruby text=あ]母だわ）[p]
[whosay name="花屋の店主"]
「四条様、さすがにこれ以上持って帰るのは難しいと思いますよ！」[p]
[whosay name="四条祖母" color="#888898"]
「なんとかして、持っていきたいわねぇ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【主人公】
[主人公ポーズ通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
(……)[p]
#
見かねた私は手を貸すことに決めた。[p]
;【主人公】思いつかないときは、ほほえんでいるのかも
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「こんにちは」[p]
[whosay name="四条祖母" color="#888898"]
「あら！　あなたは！」[p]

;【主人公】やや遠慮がちに
[主人公照れ目普通]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あの……四条家前でしたらお手伝いします」[p]
;#
;四条家は、ここから近い場所にある。[r]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様の家でしたらここから近いですし）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
(さすがに四条家の中に入ることは、淑女として許されないけれど、[r]
[chara_mod name="girl_me" storage="girl/S/me_yoko.png" time=0]
[wait time=10]
_　お[ruby text=ば]祖[ruby text=ぁ]母様と御一緒にお家の前までなら、いいですわよね？）[p]
#
[主人公目閉]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
お父様に対する言い訳を考えながらも、私は、少しばかり浮き足が立ってしまった。[p]
;さすがに四条家の中に入ることは、淑女として許されないけれど、[r]
;四条家祖母と一緒ならば、家の前まで訪ねることも許されるでだろう。[p]
;言い回しが硬い と思う

[whosay name="四条祖母" color="#888898"]
[主人公照れ目普通]
「そうね、お願いしてよろしくて？」[p]
;あんまり遠慮がない人かな　フレンドリー姑
;【主人公】ほほえみ
[主人公ほほえみ]
[wait time=20]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
#
[名字]家を通り過ぎ、四条家に繋がる路地を歩く。[p]
 [主人公目閉]
幼い頃は、よく兄に連れられながらも、[r]
この道のりに心躍らせたものだった。[p]
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
「私も華織様と出会えて幸せです」[p]
#
気を良くした四条祖母は、華織の出生秘話から学生時代のことなど、[r]
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
時折、華織様の自慢を挟まれながらも、
兄の学生時代の話も聞けて[r]話は弾む。[p]
[whosay name="四条祖母" color="#888898"]
「えぇ、華織は、何でも卒なくこなす子なんですの」[p]
[whosay name="四条祖母" color="#888898"]
「けどねぇ、あの事があってから、[r]
[sp]特に華道には本気さが無くなったように思えるの」[p]
;【主人公】
[主人公通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あのこと？」[p]
[whosay name="四条祖母" color="#888898"]
「ほほ。　いえいえ、こちらの話ですわ」[p]
[whosay name="四条祖母" color="#888898"]
「どうか、[ruby text=ウ]当[ruby text=チ]家の華織のことをよろしくお願いします」[p]

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
(華織様、また今度お会いしましょう)[p]
[主人公目閉じ]

;華道展セリフ　他に影響wiki参照
#
四条邸に並ぶ窓を少し眺めた後、私は、来た道を引き返した。[p]
;爽やかな感じになると良い
;現状、去り際かっこいい感じな表情
;てにをは～が足りてない
[if exp="f.event_replay != 'sijyou'"]
[eval exp="f.sijyou_sobo=true]
[eval exp="sf.event_sijyou_sansaku_3 = 1"]
[endif]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
[endif]

[if exp="tf.test_sijyou == true"]
@jump storage="test_sijyou.ks"
[s]
[endif]

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
[メッセージウィンドウ上ボタン表示]
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
