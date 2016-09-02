﻿[setreplay name="opening2"]
*opening2
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/hujieda/base_yuubin.png"]
[preload storage="data/fgimage/hujieda/base_sifuku.png"]
[preload storage="data/fgimage/hujieda/mayu_futuu.png"]
[preload storage="data/fgimage/hujieda/me_futuu.png"]
[preload storage="data/fgimage/hujieda/kuti_futuu.png"]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]

;=============================================
;表情テスト
;=============================================

[cm]
;背景変更
[chara_mod name="bg" storage="bg/plane_mizuiro.jpg"]
[イベントシーン構築]

[藤枝ベース着物]
[eval exp="f.gra_hujieda_pose='[藤枝ベース着物]'"]
[藤枝通常]
[eval exp="f.gra_hujieda_face='[藤枝通常]'"]
[eval exp="f.gra_hujieda_part='mayu'"]

*text
[cm]
[layopt layer=24 visible=true]
[ptext text="マクロ：ポーズ" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext text="アニメーション" layer=24 size=18 x=30 y=150 color=black bold=bold]
[ptext text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

[glink target="pose_01" text="[藤枝ベース郵便屋]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 color=white]
[glink target="pose_02" text="[藤枝ベース私服]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 color=white]
;[glink target="pose_03" text="[藤枝]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=white]
;[glink target="pose_04" text="[藤枝]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 color=white]

[glink target="face_01" text="[藤枝通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 color=white]
[glink target="face_09" text="[藤枝笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 color=white]
[glink target="face_10" text="[藤枝笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 color=white]
[glink target="face_08" text="[藤枝微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 color=white]
[glink target="face_05" text="[藤枝困り微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 color=white]
[glink target="face_03" text="[藤枝驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 color=white]
[glink target="face_11" text="[藤枝憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 color=white]
[glink target="face_04" text="[藤枝困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 color=white]
[glink target="face_02" text="[藤枝伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 color=white]
[glink target="face_12" text="[藤枝真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 color=white]
[glink target="face_06" text="[藤枝目伏せ照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 color=white]
[glink target="face_07" text="[藤枝微笑み照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 color=white]

[glink target="face_21" text="[藤枝目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 color=white]

[glink target="face_22" text="[藤枝伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=210 color=white]

[glink target="face_23" text="[藤枝目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 color=white]

[glink target="face_24" text="[藤枝目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 color=white]


[glink target="mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 color=blue]
[glink target="me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 color=blue]
[glink target="kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 color=blue]
[glink target="emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 color=blue]

[if exp="f.gra_hujieda_part=='mayu'"]
[glink target="mayu_01" text="[藤枝眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="mayu_05" text="[藤枝眉通常下]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="mayu_02" text="[藤枝眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="mayu_03" text="[藤枝眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink target="mayu_04" text="[藤枝眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink target="mayu_06" text="[藤枝眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[endif]

[if exp="f.gra_hujieda_part=='me'"]
[glink target="me_01" text="[藤枝目通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="me_02" text="[藤枝目大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="me_03" text="[藤枝目にこ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="me_04" text="[藤枝目伏]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink target="me_05" text="[藤枝目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink target="me_06" text="[藤枝横目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[glink target="me_07" text="[藤枝横伏目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
;[glink target="me_08" text="[藤枝目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 color=white]
[endif]

[if exp="f.gra_hujieda_part=='kuti'"]
[glink target="kuti_01" text="[藤枝口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="kuti_02" text="[藤枝口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="kuti_03" text="[藤枝口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="kuti_04" text="[藤枝口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink target="kuti_05" text="[藤枝口笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink target="kuti_06" text="[藤枝口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[glink target="kuti_09" text="[藤枝口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
;[glink target="kuti_07" text="[藤枝口]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 color=white]
;[glink target="kuti_06" text="[藤枝口]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 color=white]


[endif]

[if exp="f.gra_hujieda_part=='emo'"]
[glink target="emo_01" text="[藤枝効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink target="emo_02" text="[藤枝頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink target="emo_03" text="[藤枝汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink target="emo_04" text="[藤枝ビンタ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
;[glink target="emo_05" text="[藤枝]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
;[glink target="emo_06" text="[藤枝]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
;[glink target="emo_07" text="[藤枝]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[endif]

[glink target="back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=15 width="160" x=800 y=290 color=white]
[glink target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="160" x=800 y=320 color=white]
この表情は以下の指定です。[r]
ポーズマクロ：[emb exp="f.gra_hujieda_pose"][r]
表情マクロ　：[emb exp="f.gra_hujieda_face"][r]
各表情は実際の立ち絵とは異なります。
[s]


*mayu
[eval exp="f.gra_hujieda_part='mayu'"]
@jump target=text

*me
[eval exp="f.gra_hujieda_part='me'"]
@jump target=text

*kuti
[eval exp="f.gra_hujieda_part='kuti'"]
@jump target=text

*emo
[eval exp="f.gra_hujieda_part='emo'"]
@jump target=text


*pose_01
[藤枝ベース郵便屋]
[eval exp="f.gra_hujieda_pose='[藤枝ベース郵便屋]'"]
@jump target=text

*pose_02
[藤枝ベース私服]
[eval exp="f.gra_hujieda_pose='[藤枝ベース私服]'"]
@jump target=text

*pose_03
;[藤枝]
[eval exp="f.gra_hujieda_pose='[藤枝]'"]
@jump target=text

*pose_04
;[藤枝]
[eval exp="f.gra_hujieda_pose='[藤枝]'"]
@jump target=text

*face_01
[藤枝通常]
[eval exp="f.gra_hujieda_face='[藤枝通常]'"]
@jump target=text

*face_02
[藤枝伏目]
[eval exp="f.gra_hujieda_face='[藤枝伏目]'"]
@jump target=text

*face_03
[藤枝驚き]
[eval exp="f.gra_hujieda_face='[藤枝驚き]'"]
@jump target=text

*face_04
[藤枝困り]
[eval exp="f.gra_hujieda_face='[藤枝困り]'"]
@jump target=text

*face_05
[藤枝困り微笑み]
[eval exp="f.gra_hujieda_face='[藤枝困り微笑み]'"]
@jump target=text

*face_06
[藤枝目伏せ照れ]
[eval exp="f.gra_hujieda_face='[藤枝目伏せ照れ]'"]
@jump target=text

*face_07
[藤枝微笑み照れ]
[eval exp="f.gra_hujieda_face='[藤枝微笑み照れ]'"]
@jump target=text

*face_08
[藤枝微笑み]
[eval exp="f.gra_hujieda_face='[藤枝微笑み]'"]
@jump target=text

*face_09
[藤枝笑顔]
[eval exp="f.gra_hujieda_face='[藤枝笑顔]'"]
@jump target=text

*face_10
[藤枝笑顔大]
[eval exp="f.gra_hujieda_face='[藤枝笑顔大]'"]
@jump target=text

*face_11
[藤枝憂い]
[eval exp="f.gra_hujieda_face='[藤枝憂い]'"]
@jump target=text

*face_12
[藤枝真剣]
[eval exp="f.gra_hujieda_face='[藤枝真剣]'"]
@jump target=text

*face_21
[藤枝目パチ1回]
[eval exp="f.gra_hujieda_face='[藤枝目パチ1回](アニメーション)'"]
@jump target=text

*face_22
[藤枝伏目パチ1回]
[eval exp="f.gra_hujieda_face='[藤枝伏目パチ1回](アニメーション)'"]
@jump target=text

*face_23
[藤枝目閉じ]
[eval exp="f.gra_hujieda_face='[藤枝目閉じ](アニメーション)'"]
@jump target=text

*face_24
[藤枝目を開く]
[eval exp="f.gra_hujieda_face='[藤枝目を開く](アニメーション)'"]
@jump target=text



*mayu_01
[藤枝眉通常]
[eval exp="f.gra_hujieda_face='眉：[藤枝眉通常]'"]
@jump target=text

*mayu_02
[藤枝眉下げ]
[eval exp="f.gra_hujieda_face='眉：[藤枝眉下げ]'"]
@jump target=text

*mayu_03
[藤枝眉困り]
[eval exp="f.gra_hujieda_face='眉：[藤枝眉困り]'"]
@jump target=text

*mayu_04
[藤枝眉強気]
[eval exp="f.gra_hujieda_face='眉：[藤枝眉強気]'"]
@jump target=text

*mayu_05
[藤枝眉通常下]
[eval exp="f.gra_hujieda_face='眉：[藤枝眉通常下]'"]
@jump target=text

*mayu_06
[藤枝眉驚き]
[eval exp="f.gra_hujieda_face='眉：[藤枝眉驚き]'"]
@jump target=text


*me_01
[藤枝目通常]
[eval exp="f.gra_hujieda_face='目：[藤枝目通常]'"]
@jump target=text

*me_02
[藤枝目大]
[eval exp="f.gra_hujieda_face='目：[藤枝目大]'"]
@jump target=text

*me_03
[藤枝目にこ]
[eval exp="f.gra_hujieda_face='目：[藤枝目にこ]'"]
@jump target=text

*me_04
[藤枝目伏]
[eval exp="f.gra_hujieda_face='目：[藤枝目伏]'"]
@jump target=text

*me_08
[藤枝目伏柔]
[eval exp="f.gra_hujieda_face='目：[藤枝目伏柔]'"]
@jump target=text

*me_05
[藤枝目閉じ]
[eval exp="f.gra_hujieda_face='目：[藤枝目閉じ]'"]
@jump target=text

*me_06
[藤枝横目]
[eval exp="f.gra_hujieda_face='目：[藤枝横目]'"]
@jump target=text

*me_07
[藤枝横伏目]
[eval exp="f.gra_hujieda_face='目：[藤枝横伏目]'"]
@jump target=text


*kuti_01
[藤枝口通常]
[eval exp="f.gra_hujieda_face='口：[藤枝口通常]'"]
@jump target=text

*kuti_02
[藤枝口開]
[eval exp="f.gra_hujieda_face='口：[藤枝口開]'"]
@jump target=text

*kuti_03
[藤枝口微笑み]
[eval exp="f.gra_hujieda_face='口：[藤枝口通常]'"]
@jump target=text

*kuti_04
[藤枝口笑顔]
[eval exp="f.gra_hujieda_face='口：[藤枝口笑顔]'"]
@jump target=text

*kuti_05
[藤枝口笑顔大]
[eval exp="f.gra_hujieda_face='口：[藤枝口笑顔大]'"]
@jump target=text

*kuti_06
[藤枝口驚き]
[eval exp="f.gra_hujieda_face='口：[藤枝口驚き]'"]
@jump target=text

*kuti_07
[藤枝口]
[eval exp="f.gra_hujieda_face='口：[藤枝口]'"]
@jump target=text

*kuti_08
[藤枝口笑顔小]
[eval exp="f.gra_hujieda_face='口：[藤枝口笑顔小]'"]
@jump target=text

*kuti_09
[藤枝口ムッ]
[eval exp="f.gra_hujieda_face='口：[藤枝口ムッ]'"]
@jump target=text


*emo_01
[藤枝効果消]
[eval exp="f.gra_hujieda_face='効果：[藤枝効果消]'"]
@jump target=text

*emo_02
[藤枝頬染め]
[eval exp="f.gra_hujieda_face='効果：[藤枝頬染め]'"]
@jump target=text

*emo_03
[藤枝汗]
[eval exp="f.gra_hujieda_face='効果：[藤枝汗]'"]
@jump target=text

*emo_04
[藤枝ビンタ]
[eval exp="f.gra_hujieda_face='効果：[ビンタ]'"]
@jump target=text

*emo_05
[藤枝]
[eval exp="f.gra_hujieda_face='効果：[藤枝]'"]
@jump target=text

*emo_06
[藤枝]
[eval exp="f.gra_hujieda_face='効果：[藤枝]'"]
@jump target=text

*emo_07
[藤枝]
[eval exp="f.gra_hujieda_face='効果：[藤枝]'"]
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
[chara_mod name="hujieda_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="hujieda_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="hujieda_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="hujieda_te" storage="toumei.gif" time=0]
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
[chara_mod name="hujieda_base" storage="hujieda/base.png" time=0]
[wait time=10]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]