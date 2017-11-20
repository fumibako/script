[setreplay name="opening2"]
*opening2
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/girl/S/base.png"]
[preload storage="data/fgimage/girl/S/base_yubi.png"]
[preload storage="data/fgimage/girl/S/base_katate.png"]
[preload storage="data/fgimage/girl/S/base_ryoute.png"]
[preload storage="data/fgimage/girl/S/mayu_yowa.png"]
[preload storage="data/fgimage/girl/S/me_fusi1.png"]
[preload storage="data/fgimage/girl/S/kuti_futuu.png"]

;=============================================
;表情テスト
;=============================================

[cm]
;背景変更:主人公邸_庭
[chara_mod name="bg" storage="bg/plane_sakura.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築]

[主人公ポーズ通常]
[eval exp="f.gra_girl_pose='[主人公ポーズ通常]'"]
[主人公通常]
[eval exp="f.gra_girl_face='[主人公通常]'"]
[eval exp="f.gra_girl_part='mayu'"]

[cm]
[layopt layer=24 visible=true]
[ptext text="マクロ：ポーズ" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext text="表　情" layer=24 size=18 x=30 y=180 color=black bold=bold]
[ptext text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext text="アニメーション" layer=24 size=18 x=430 y=10 color=black bold=bold]
[ptext text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

*text
[glink target="pose_01" text="[主人公ポーズ通常]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 font_color=black]
[glink target="pose_02" text="[主人公ポーズ片手]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 font_color=black]
[glink target="pose_03" text="[主人公ポーズ両手]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 font_color=black]
[glink target="pose_04" text="[主人公ポーズ指]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 font_color=black]

[glink target="face_13" text="[主人公柔和ほほえみ１]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=210 font_color=black]
[glink target="face_14" text="[主人公困り照れ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 font_color=black]

[glink target="face_01" text="[主人公通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 font_color=black]
[glink target="face_02" text="[主人公伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 font_color=black]
[glink target="face_03" text="[主人公驚]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 font_color=black]
[glink target="face_04" text="[主人公困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 font_color=black]
[glink target="face_05" text="[主人公困りほほえみ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 font_color=black]
[glink target="face_06" text="[主人公照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 font_color=black]
[glink target="face_07" text="[主人公照れ目普通]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 font_color=black]
[glink target="face_08" text="[主人公ほほえみ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 font_color=black]
[glink target="face_09" text="[主人公笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 font_color=black]
[glink target="face_10" text="[主人公ふぅ閉]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 font_color=black]
[glink target="face_11" text="[主人公憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 font_color=black]
[glink target="face_12" text="[主人公真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 font_color=black]

[glink target="face_21" text="[主人公目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=380 y=30 font_color=black]

[glink target="face_22" text="[主人公伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=380 y=60 font_color=black]

[glink target="face_23" text="[主人公目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=380 y=90 font_color=black]

[glink target="face_24" text="[主人公目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=380 y=120 font_color=black]


[glink target="mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 font_color=steelblue]
[glink target="me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 font_color=steelblue]
[glink target="kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 font_color=steelblue]
[glink target="emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 font_color=steelblue]

[if exp="f.gra_girl_part=='mayu'"]
[glink target="mayu_01" text="[主人公眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink target="mayu_02" text="[主人公眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink target="mayu_05" text="[主人公眉下げ下]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink target="mayu_03" text="[主人公眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink target="mayu_04" text="[主人公眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[endif]

[if exp="f.gra_girl_part=='me'"]
[glink target="me_01" text="[主人公目通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink target="me_02" text="[主人公目大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink target="me_03" text="[主人公目にこ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink target="me_04" text="[主人公目伏]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink target="me_08" text="[主人公目伏柔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[glink target="me_05" text="[主人公目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
[glink target="me_06" text="[主人公横目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
[glink target="me_07" text="[主人公横伏目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 font_color=black]
[endif]

[if exp="f.gra_girl_part=='kuti'"]
[glink target="kuti_01" text="[主人公口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink target="kuti_02" text="[主人公口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink target="kuti_03" text="[主人公口ほほえみ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink target="kuti_08" text="[主人公口笑顔小]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink target="kuti_04" text="[主人公口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[glink target="kuti_05" text="[主人公口ふぅ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
[glink target="kuti_06" text="[主人公口大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
[glink target="kuti_07" text="[主人公口えー]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 font_color=black]
[glink target="kuti_09" text="[主人公口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 font_color=black]


[endif]

[if exp="f.gra_girl_part=='emo'"]
[glink target="emo_01" text="[主人公効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink target="emo_02" text="[主人公頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink target="emo_03" text="[主人公汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink target="emo_04" text="[主人公涙]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink target="emo_05" text="[主人公涙_目閉用]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[glink target="emo_06" text="[主人公涙流]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
[glink target="emo_07" text="[主人公涙流_目閉用]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
[endif]

[glink target="back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=15 width="160" x=800 y=290 font_color=black]
[glink target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="160" x=800 y=320 font_color=black]

この表情は以下の指定です。[r]
ポーズマクロ：[emb exp="f.gra_girl_pose"][r]
表情マクロ　：[emb exp="f.gra_girl_face"]
[iscript]
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
[endscript]
[s]


*mayu
[eval exp="f.gra_girl_part='mayu'"]
@jump target=text

*me
[eval exp="f.gra_girl_part='me'"]
@jump target=text

*kuti
[eval exp="f.gra_girl_part='kuti'"]
@jump target=text

*emo
[eval exp="f.gra_girl_part='emo'"]
@jump target=text


*pose_01
[主人公ポーズ通常]
[eval exp="f.gra_girl_pose='[主人公ポーズ通常]'"]
@jump target=text

*pose_02
[主人公ポーズ片手]
[eval exp="f.gra_girl_pose='[主人公ポーズ片手]'"]
@jump target=text

*pose_03
[主人公ポーズ両手]
[eval exp="f.gra_girl_pose='[主人公ポーズ両手]'"]
@jump target=text

*pose_04
[主人公ポーズ指]
[eval exp="f.gra_girl_pose='[主人公ポーズ指]'"]
@jump target=text

*face_01
[主人公通常]
[eval exp="f.gra_girl_face='[主人公通常]'"]
@jump target=text

*face_02
[主人公伏目]
[eval exp="f.gra_girl_face='[主人公伏目]'"]
@jump target=text

*face_03
[主人公驚]
[eval exp="f.gra_girl_face='[主人公驚]'"]
@jump target=text

*face_04
[主人公困り]
[eval exp="f.gra_girl_face='[主人公困り]'"]
@jump target=text

*face_05
[主人公困りほほえみ]
[eval exp="f.gra_girl_face='[主人公困りほほえみ]'"]
@jump target=text

*face_06
[主人公照れ]
[eval exp="f.gra_girl_face='[主人公照れ]'"]
@jump target=text

*face_07
[主人公照れ目普通]
[eval exp="f.gra_girl_face='[主人公照れ目普通]'"]
@jump target=text

*face_08
[主人公ほほえみ]
[eval exp="f.gra_girl_face='[主人公ほほえみ]'"]
@jump target=text

*face_09
[主人公笑顔]
[eval exp="f.gra_girl_face='[主人公笑顔]'"]
@jump target=text

*face_10
[主人公ふぅ閉]
[eval exp="f.gra_girl_face='[主人公ふぅ閉]'"]
@jump target=text

*face_11
[主人公憂い]
[eval exp="f.gra_girl_face='[主人公憂い]'"]
@jump target=text

*face_12
[主人公真剣]
[eval exp="f.gra_girl_face='[主人公真剣]'"]
@jump target=text

*face_13
[主人公柔和ほほえみ１]
[eval exp="f.gra_girl_face='[主人公柔和ほほえみ１]'"]
@jump target=text

*face_14
[主人公困り照れ]
[eval exp="f.gra_girl_face='[主人公困り照れ]'"]
@jump target=text

*face_21
[主人公目パチ1回]
[eval exp="f.gra_girl_face='[主人公目パチ1回](アニメーション)'"]
@jump target=text

*face_22
[主人公伏目パチ1回]
[eval exp="f.gra_girl_face='[主人公伏目パチ1回](アニメーション)'"]
@jump target=text

*face_23
[主人公目閉じ]
[eval exp="f.gra_girl_face='[主人公目閉じ](アニメーション)'"]
@jump target=text

*face_24
[主人公目を開く]
[eval exp="f.gra_girl_face='[主人公目を開く](アニメーション)'"]
@jump target=text



*mayu_01
[主人公眉通常]
[eval exp="f.gra_girl_face='眉：[主人公眉通常]'"]
@jump target=text

*mayu_02
[主人公眉下げ]
[eval exp="f.gra_girl_face='眉：[主人公眉下げ]'"]
@jump target=text

*mayu_03
[主人公眉困り]
[eval exp="f.gra_girl_face='眉：[主人公眉困り]'"]
@jump target=text

*mayu_04
[主人公眉強気]
[eval exp="f.gra_girl_face='眉：[主人公眉強気]'"]
@jump target=text

*mayu_05
[主人公眉下げ下]
[eval exp="f.gra_girl_face='眉：[主人公眉下げ下]'"]
@jump target=text


*me_01
[主人公目通常]
[eval exp="f.gra_girl_face='目：[主人公目通常]'"]
@jump target=text

*me_02
[主人公目大]
[eval exp="f.gra_girl_face='目：[主人公目大]'"]
@jump target=text

*me_03
[主人公目にこ]
[eval exp="f.gra_girl_face='目：[主人公目にこ]'"]
@jump target=text

*me_04
[主人公目伏]
[eval exp="f.gra_girl_face='目：[主人公目伏]'"]
@jump target=text

*me_08
[主人公目伏柔]
[eval exp="f.gra_girl_face='目：[主人公目伏柔]'"]
@jump target=text

*me_05
[主人公目閉じ]
[eval exp="f.gra_girl_face='目：[主人公目閉じ]'"]
@jump target=text

*me_06
[主人公横目]
[eval exp="f.gra_girl_face='目：[主人公横目]'"]
@jump target=text

*me_07
[主人公横伏目]
[eval exp="f.gra_girl_face='目：[主人公横伏目]'"]
@jump target=text


*kuti_01
[主人公口通常]
[eval exp="f.gra_girl_face='口：[主人公口通常]'"]
@jump target=text

*kuti_02
[主人公口開]
[eval exp="f.gra_girl_face='口：[主人公口開]'"]
@jump target=text

*kuti_03
[主人公口ほほえみ]
[eval exp="f.gra_girl_face='口：[主人公口通常]'"]
@jump target=text

*kuti_04
[主人公口笑顔]
[eval exp="f.gra_girl_face='口：[主人公口笑顔]'"]
@jump target=text

*kuti_05
[主人公口ふぅ]
[eval exp="f.gra_girl_face='口：[主人公口ふぅ]'"]
@jump target=text

*kuti_06
[主人公口大]
[eval exp="f.gra_girl_face='口：[主人公口大]'"]
@jump target=text

*kuti_07
[主人公口えー]
[eval exp="f.gra_girl_face='口：[主人公口えー]'"]
@jump target=text

*kuti_08
[主人公口笑顔小]
[eval exp="f.gra_girl_face='口：[主人公口笑顔小]'"]
@jump target=text

*kuti_09
[主人公口ムッ]
[eval exp="f.gra_girl_face='口：[主人公口ムッ]'"]
@jump target=text


*emo_01
[主人公効果消]
[eval exp="f.gra_girl_face='効果：[主人公効果消]'"]
@jump target=text

*emo_02
[主人公頬染め]
[eval exp="f.gra_girl_face='効果：[主人公頬染め]'"]
@jump target=text

*emo_03
[主人公汗]
[eval exp="f.gra_girl_face='効果：[主人公汗]'"]
@jump target=text

*emo_04
[主人公涙]
[eval exp="f.gra_girl_face='効果：[主人公涙]'"]
@jump target=text

*emo_05
[主人公涙_目閉用]
[eval exp="f.gra_girl_face='効果：[主人公涙_目閉用]'"]
@jump target=text

*emo_06
[主人公涙流]
[eval exp="f.gra_girl_face='効果：[主人公涙流]'"]
@jump target=text

*emo_07
[主人公涙流_目閉用]
[eval exp="f.gra_girl_face='効果：[主人公涙流_目閉用]'"]
@jump target=text

*back_test
[freeimage layer = 24]
[イベントシーン終了]
[cm]
[freeimage layer = 26]
@jump storage="test.ks"
[s]

*title
[freeimage layer = 24]
[イベントシーン終了]
[cm]
[freeimage layer = 26]
;------タイトルへ戻る
@jump storage="title.ks"
[s]


[イベントシーン終了]
@jump storage="test.ks"
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
