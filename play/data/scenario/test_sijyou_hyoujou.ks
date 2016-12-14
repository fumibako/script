;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/sijyou/base_kimono.png"]
[preload storage="data/fgimage/sijyou/base_haori.png"]
[preload storage="data/fgimage/sijyou/mayu_futuu.png"]
[preload storage="data/fgimage/sijyou/me_futuu.png"]
[preload storage="data/fgimage/sijyou/kuti_futuu.png"]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]

;=============================================
;表情テスト
;=============================================

[cm]
;背景変更
[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=0]
[イベントシーン構築]

[四条ベース着物]
[eval exp="f.gra_sijyou_pose='[四条ベース着物]'"]
[四条通常]
[eval exp="f.gra_sijyou_face='[四条通常]'"]
[eval exp="f.gra_sijyou_part='mayu'"]

*text
[cm]
[layopt layer=24 visible=true]
[ptext text="マクロ：ポーズ" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext text="アニメーション" layer=24 size=18 x=30 y=150 color=black bold=bold]
[ptext text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

[glink target="pose_01" text="[四条ベース着物]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 color=white]
[glink target="pose_02" text="[四条ベース羽織]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 color=white]
;[glink target="pose_03" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=white]
;[glink target="pose_04" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 color=white]

[glink target="face_01" text="[四条通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 color=white]
[glink target="face_09" text="[四条笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 color=white]
[glink target="face_10" text="[四条笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 color=white]
[glink target="face_08" text="[四条微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 color=white]
[glink target="face_05" text="[四条困り微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 color=white]
[glink target="face_03" text="[四条驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 color=white]
[glink target="face_11" text="[四条憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 color=white]
[glink target="face_04" text="[四条困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 color=white]
[glink target="face_02" text="[四条伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 color=white]
[glink target="face_12" text="[四条真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 color=white]
;[glink target="face_06" text="[四条照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 color=white]
;[glink target="face_07" text="[四条照れ目普通]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 color=white]

[glink target="face_21" text="[四条目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 color=white]

[glink target="face_22" text="[四条伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=210 color=white]

[glink target="face_23" text="[四条目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 color=white]

[glink target="face_24" text="[四条目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 color=white]


[glink target="mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 color=blue]
[glink target="me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 color=blue]
[glink target="kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 color=blue]
[glink target="emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 color=blue]

[if exp="f.gra_sijyou_part=='mayu'"]
[glink target="mayu_01" text="[四条眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="mayu_02" text="[四条眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="mayu_03" text="[四条眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="mayu_04" text="[四条眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink target="mayu_06" text="[四条眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink target="mayu_05" text="[四条眉眉間に皺]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[endif]

[if exp="f.gra_sijyou_part=='me'"]
[glink target="me_01" text="[四条目通常]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=60 color=white]
[glink target="me_02" text="[四条目大]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=85 color=white]
[glink target="me_03" text="[四条目にこ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=110 color=white]
[glink target="me_04" text="[四条目伏]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=135 color=white]
[glink target="me_08" text="[四条目伏2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=160 color=white]
[glink target="me_05" text="[四条目閉じ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=185 color=white]
[glink target="me_06" text="[四条横目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=210 color=white]
[glink target="me_07" text="[四条横伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=235 color=white]
[glink target="me_09" text="[四条横伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=260 color=white]
[glink target="me_10" text="[四条右流し目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=285 color=white]
[glink target="me_11" text="[四条右伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=310 color=white]
[glink target="me_12" text="[四条右伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=335 color=white]
[endif]

[if exp="f.gra_sijyou_part=='kuti'"]
[glink target="kuti_01" text="[四条口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="kuti_02" text="[四条口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="kuti_03" text="[四条口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="kuti_04" text="[四条口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink target="kuti_05" text="[四条口笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink target="kuti_06" text="[四条口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[glink target="kuti_09" text="[四条口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[glink target="kuti_07" text="[四条口叫び]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 color=white]
;[glink target="kuti_06" text="[四条口]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 color=white]


[endif]

[if exp="f.gra_sijyou_part=='emo'"]
[glink target="emo_01" text="[四条効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="emo_02" text="[四条頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="emo_03" text="[四条汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="emo_04" text="[四条ビンタ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
;[glink target="emo_05" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
;[glink target="emo_06" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
;[glink target="emo_07" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[endif]

[glink target="back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=15 width="160" x=800 y=290 color=white]
[glink target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="160" x=800 y=320 color=white]
この表情は以下の指定です。[r]
ポーズマクロ：[emb exp="f.gra_sijyou_pose"][r]
表情マクロ　：[emb exp="f.gra_sijyou_face"][r]
各表情は実際の立ち絵とは異なります。
[s]


*mayu
[eval exp="f.gra_sijyou_part='mayu'"]
@jump target=text

*me
[eval exp="f.gra_sijyou_part='me'"]
@jump target=text

*kuti
[eval exp="f.gra_sijyou_part='kuti'"]
@jump target=text

*emo
[eval exp="f.gra_sijyou_part='emo'"]
@jump target=text


*pose_01
[四条ベース着物]
[eval exp="f.gra_sijyou_pose='[四条ベース着物]'"]
@jump target=text

*pose_02
[四条ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条ベース羽織]'"]
@jump target=text

*pose_03
;[四条]
[eval exp="f.gra_sijyou_pose='[四条]'"]
@jump target=text

*pose_04
;[四条]
[eval exp="f.gra_sijyou_pose='[四条]'"]
@jump target=text

*face_01
[四条通常]
[eval exp="f.gra_sijyou_face='[四条通常]'"]
@jump target=text

*face_02
[四条伏目]
[eval exp="f.gra_sijyou_face='[四条伏目]'"]
@jump target=text

*face_03
[四条驚き]
[eval exp="f.gra_sijyou_face='[四条驚き]'"]
@jump target=text

*face_04
[四条困り]
[eval exp="f.gra_sijyou_face='[四条困り]'"]
@jump target=text

*face_05
[四条困り微笑み]
[eval exp="f.gra_sijyou_face='[四条困り微笑み]'"]
@jump target=text

*face_06
[四条照れ]
[eval exp="f.gra_sijyou_face='[四条照れ]'"]
@jump target=text

*face_07
[四条照れ目普通]
[eval exp="f.gra_sijyou_face='[四条照れ目普通]'"]
@jump target=text

*face_08
[四条微笑み]
[eval exp="f.gra_sijyou_face='[四条微笑み]'"]
@jump target=text

*face_09
[四条笑顔]
[eval exp="f.gra_sijyou_face='[四条笑顔]'"]
@jump target=text

*face_10
[四条笑顔大]
[eval exp="f.gra_sijyou_face='[四条笑顔大]'"]
@jump target=text

*face_11
[四条憂い]
[eval exp="f.gra_sijyou_face='[四条憂い]'"]
@jump target=text

*face_12
[四条真剣]
[eval exp="f.gra_sijyou_face='[四条真剣]'"]
@jump target=text

*face_21
[四条目パチ1回]
[eval exp="f.gra_sijyou_face='[四条目パチ1回](アニメーション)'"]
@jump target=text

*face_22
[四条伏目パチ1回]
[eval exp="f.gra_sijyou_face='[四条伏目パチ1回](アニメーション)'"]
@jump target=text

*face_23
[四条目閉じ]
[eval exp="f.gra_sijyou_face='[四条目閉じ](アニメーション)'"]
@jump target=text

*face_24
[四条目を開く]
[eval exp="f.gra_sijyou_face='[四条目を開く](アニメーション)'"]
@jump target=text



*mayu_01
[四条眉通常]
[eval exp="f.gra_sijyou_face='眉：[四条眉通常]'"]
@jump target=text

*mayu_02
[四条眉下げ]
[eval exp="f.gra_sijyou_face='眉：[四条眉下げ]'"]
@jump target=text

*mayu_03
[四条眉困り]
[eval exp="f.gra_sijyou_face='眉：[四条眉困り]'"]
@jump target=text

*mayu_04
[四条眉強気]
[eval exp="f.gra_sijyou_face='眉：[四条眉強気]'"]
@jump target=text

*mayu_05
[四条眉眉間に皺]
[eval exp="f.gra_sijyou_face='眉：[四条眉眉間に皺]'"]
@jump target=text

*mayu_06
[四条眉驚き]
[eval exp="f.gra_sijyou_face='眉：[四条眉驚き]'"]
@jump target=text


*me_01
[四条目通常]
[eval exp="f.gra_sijyou_face='目：[四条目通常]'"]
@jump target=text

*me_02
[四条目大]
[eval exp="f.gra_sijyou_face='目：[四条目大]'"]
@jump target=text

*me_03
[四条目にこ]
[eval exp="f.gra_sijyou_face='目：[四条目にこ]'"]
@jump target=text

*me_04
[四条目伏]
[eval exp="f.gra_sijyou_face='目：[四条目伏]'"]
@jump target=text

*me_05
[四条目閉じ]
[eval exp="f.gra_sijyou_face='目：[四条目閉じ]'"]
@jump target=text

*me_06
[四条横目]
[eval exp="f.gra_sijyou_face='目：[四条横目]'"]
@jump target=text

*me_07
[四条横伏目]
[eval exp="f.gra_sijyou_face='目：[四条横伏目]'"]
@jump target=text

*me_08
[四条目伏2]
[eval exp="f.gra_sijyou_face='目：[四条目伏2]'"]
@jump target=text

*me_09
[四条横伏目2]
[eval exp="f.gra_sijyou_face='目：[四条横伏目2]'"]
@jump target=text

*me_10
[四条右流し目]
[eval exp="f.gra_sijyou_face='目：[四条右流し目]'"]
@jump target=text

*me_11
[四条右伏目]
[eval exp="f.gra_sijyou_face='目：[四条右伏目]'"]
@jump target=text

*me_12
[四条右伏目2]
[eval exp="f.gra_sijyou_face='目：[四条右伏目2]'"]
@jump target=text



*kuti_01
[四条口通常]
[eval exp="f.gra_sijyou_face='口：[四条口通常]'"]
@jump target=text

*kuti_02
[四条口開]
[eval exp="f.gra_sijyou_face='口：[四条口開]'"]
@jump target=text

*kuti_03
[四条口微笑み]
[eval exp="f.gra_sijyou_face='口：[四条口通常]'"]
@jump target=text

*kuti_04
[四条口笑顔]
[eval exp="f.gra_sijyou_face='口：[四条口笑顔]'"]
@jump target=text

*kuti_05
[四条口笑顔大]
[eval exp="f.gra_sijyou_face='口：[四条口笑顔大]'"]
@jump target=text

*kuti_06
[四条口驚き]
[eval exp="f.gra_sijyou_face='口：[四条口驚き]'"]
@jump target=text

*kuti_07
[四条口叫び]
[eval exp="f.gra_sijyou_face='口：[四条口叫び]'"]
@jump target=text

*kuti_08
[四条口笑顔小]
[eval exp="f.gra_sijyou_face='口：[四条口笑顔小]'"]
@jump target=text

*kuti_09
[四条口ムッ]
[eval exp="f.gra_sijyou_face='口：[四条口ムッ]'"]
@jump target=text


*emo_01
[四条効果消]
[eval exp="f.gra_sijyou_face='効果：[四条効果消]'"]
@jump target=text

*emo_02
[四条頬染め]
[eval exp="f.gra_sijyou_face='効果：[四条頬染め]'"]
@jump target=text

*emo_03
[四条汗]
[eval exp="f.gra_sijyou_face='効果：[四条汗]'"]
@jump target=text

*emo_04
[四条ビンタ]
[eval exp="f.gra_sijyou_face='効果：[ビンタ]'"]
@jump target=text

*emo_05
[四条]
[eval exp="f.gra_sijyou_face='効果：[四条]'"]
@jump target=text

*emo_06
[四条]
[eval exp="f.gra_sijyou_face='効果：[四条]'"]
@jump target=text

*emo_07
[四条]
[eval exp="f.gra_sijyou_face='効果：[四条]'"]
@jump target=text

*back_test
[freeimage layer = 24]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]

[イベントシーン終了]
[cm]
[freeimage layer = 26]
@jump storage="test.ks"
[s]

*title
[freeimage layer = 24]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]

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
[chara_mod name="sijyou_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="sijyou_te" storage="toumei.gif" time=0]
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
[chara_mod name="sijyou_base" storage="sijyou/base.png" time=0]
[wait time=10]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
