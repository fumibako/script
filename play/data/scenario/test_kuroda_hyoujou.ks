﻿;マクロ及び立ち絵の自然な退場・登場時に◆B4nFWraU42さん作スクリプトを使用させていただきました。ありがとうございます
[cm]
[if exp="tf.flag_omake == true"]
[iscript]
$('.list').remove();
[endscript]
[clearfix]
[endif]
[表示準備 storage="bg/plane_mizuiro.jpg"]
[layopt layer=29 visible=true]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[setreplay name="opening2"]

*opening2
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/kuroda/o_base_haori.png"]
[preload storage="data/fgimage/kuroda/o_base_kimono.png"]
[preload storage="data/fgimage/kuroda/o_mayu_futuu.png"]
[preload storage="data/fgimage/kuroda/o_me_futuu.png"]
[preload storage="data/fgimage/kuroda/o_kuti_futuu.png"]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_kuroda_2.ks"]

;=============================================
;表情テスト
;=============================================

[cm]
;背景変更
[bg storage="../fgimage/bg/plane_mizuiro.jpg" time=0]
[wait time=10]
[if exp="tf.flag_omake != true"]
;背景変更
[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=0]
[wait time=10]
[イベントシーン構築]
[endif]

[黒田ベース羽織]
[eval exp="f.gra_kuroda_pose='[黒田ベース羽織]'"]
[黒田通常]
[eval exp="f.gra_kuroda_face='[黒田通常]'"]
[eval exp="f.gra_kuroda_part='mayu'"]
[表示開始]
[freeimage layer = 29]

[cm]
[layopt layer=24 visible=true]
[ptext name=list text="サイズ" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext name=list text="衣装" layer=24 size=18 x=30 y=130 color=black bold=bold]
[ptext name=list text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext name=irast text="Illustration　by　◆jsYiJcqRkk" layer=24 size=10 x=410 y=1 color=black bold=bold]
;[ptext name=list text="表　情" layer=24 size=18 x=100 y=300 color=black bold=bold]
[ptext name=list text="アニメーション" layer=24 size=18 x=30 y=220 color=black bold=bold]
[ptext name=list text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

*text
[glink name=list target="size_01" text="[黒田サイズ通常]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 font_color=black]
[glink name=list target="size_02" text="[黒田サイズ遠くに]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 font_color=black]
[glink name=list target="size_03" text="[黒田サイズ近くに]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 font_color=black]

[glink name=list target="pose_01" text="[黒田ベース羽織]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=150 font_color=black]
[glink name=list target="pose_02" text="[黒田ベース着物]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 font_color=black]
;[glink name=list target="pose_03" text="[黒田]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 font_color=black]
;[glink name=list target="pose_04" text="[黒田]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 font_color=black]

[glink name=list target="face_01" text="[黒田通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 font_color=black]
[glink name=list target="face_02" text="[黒田伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 font_color=black]
[glink name=list target="face_03" text="[黒田憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 font_color=black]
[glink name=list target="face_04" text="[黒田困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 font_color=black]
[glink name=list target="face_05" text="[黒田困り微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 font_color=black]
[glink name=list target="face_06" text="[黒田微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 font_color=black]
[glink name=list target="face_07" text="[黒田笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 font_color=black]
[glink name=list target="face_08" text="[黒田驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 font_color=black]
[glink name=list target="face_09" text="[黒田真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 font_color=black]
[glink name=list target="face_10" text="[黒田照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 font_color=black]

[glink name=list target="face_21" text="[黒田目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 font_color=black]
[glink name=list target="face_22" text="[黒田伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 font_color=black]
[glink name=list target="face_23" text="[黒田目を閉じる]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=300 font_color=black]
[glink name=list target="face_24" text="[黒田目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=330 font_color=black]

[glink name=list target="mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 font_color=steelblue]
[glink name=list target="me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 font_color=steelblue]
[glink name=list target="kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 font_color=steelblue]
[glink name=list target="emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 font_color=steelblue]

[if exp="f.gra_kuroda_part=='mayu'"]
[glink name=list target="mayu_01" text="[黒田眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=60 font_color=black]
[glink name=list target="mayu_02" text="[黒田眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=90 font_color=black]
[glink name=list target="mayu_03" text="[黒田眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=120 font_color=black]
[glink name=list target="mayu_04" text="[黒田眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=150 font_color=black]
[glink name=list target="mayu_05" text="[黒田眉苦悩]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=180 font_color=black]
[glink name=list target="mayu_06" text="[黒田眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=210 font_color=black]
[endif]

[if exp="f.gra_kuroda_part=='me'"]
[glink name=list target="me_01" text="[黒田目通常]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=60 font_color=black]
[glink name=list target="me_02" text="[黒田目大]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=90 font_color=black]
[glink name=list target="me_03" text="[黒田目にこ]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=120 font_color=black]
[glink name=list target="me_04" text="[黒田目伏]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=150 font_color=black]
[glink name=list target="me_05" text="[黒田目伏2]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=180 font_color=black]
[glink name=list target="me_06" text="[黒田目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=210 font_color=black]
[glink name=list target="me_07" text="[黒田横目]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=240 font_color=black]
[glink name=list target="me_08" text="[黒田横伏目]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=270 font_color=black]
[glink name=list target="me_09" text="[黒田目回想中]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=300 font_color=black]
[glink name=list target="me_10" text="[黒田目思考中]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=330 font_color=black]
[endif]

[if exp="f.gra_kuroda_part=='kuti'"]
[glink name=list target="kuti_01" text="[黒田口通常]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=60 font_color=black]
[glink name=list target="kuti_02" text="[黒田口開]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=90 font_color=black]
[glink name=list target="kuti_03" text="[黒田口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=120 font_color=black]
[glink name=list target="kuti_04" text="[黒田口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=150 font_color=black]
[glink name=list target="kuti_05" text="[黒田口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=180 font_color=black]
[glink name=list target="kuti_06" text="[黒田口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=210 font_color=black]
[glink name=list target="kuti_07" text="[黒田閉口]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=240 font_color=black]
;[glink name=list target="kuti_07" text="[黒田口]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=270 font_color=black]
;[glink name=list target="kuti_08" text="[黒田口]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=300 font_color=black]
[endif]

[if exp="f.gra_kuroda_part=='emo'"]
[glink name=list target="emo_01" text="[黒田効果消]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=60 font_color=black]
[glink name=list target="emo_02" text="[黒田頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=90 font_color=black]
[glink name=list target="emo_03" text="[黒田青ざめ]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=120 font_color=black]
[glink name=list target="emo_04" text="[黒田汗]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=150 font_color=black]
;[glink name=list target="emo_05" text="[黒田]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=180 font_color=black]
;[glink name=list target="emo_06" text="[黒田]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=210 font_color=black]
;[glink name=list target="emo_07" text="[黒田]" graphic="select_waku_x500.png" size=15 width="160" x=630 y=240 font_color=black]
[endif]

[if exp="tf.flag_omake == false"]
[glink name=opasity target="back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=290 font_color=black]
[elsif exp="tf.flag_omake == true"]
[glink name=opasity target="back_test_2" text="おまけへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=290 font_color=black]
[endif]
[glink target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=320 font_color=black]
[if exp="tf.btn_opasity != 'off'"]
[glink name=opasity target="opasity_0" text="ボタンを一時消す" graphic="select_waku_x500.png" size=15 width="130" x=800 y=350 font_color=black]
[else]
[glink name=opasity target="opasity_100" text="ボタンを表示" graphic="select_waku_x500.png" size=15 width="130" x=800 y=350 font_color=black]
[endif]
[if exp="tf.flag_omake != true"]
この表情は以下の指定です。[r]
ポーズマクロ：[emb exp="f.gra_kuroda_pose"][r]
表情マクロ　：[emb exp="f.gra_kuroda_face"][r]
[iscript]
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
this.kag.variable.tf.system.backlog.pop();
[endscript]
[endif]
[s]
;============================================================================
*opasity_0
[eval exp="tf.btn_opasity='off'"]
[iscript]
$(".list").css("opacity",0);
//$(".layer_free").css("opacity",0);
[endscript]
ボタンを表示[p]
*opasity_100
[eval exp="tf.btn_opasity='on'"]
[iscript]
$(".list").css("opacity",1);
$(".layer_free").css("opacity",1);
[endscript]
@jump target=text
;============================================================================

*mayu
[eval exp="f.gra_kuroda_part='mayu'"]
@jump target=text

*me
[eval exp="f.gra_kuroda_part='me'"]
@jump target=text

*kuti
[eval exp="f.gra_kuroda_part='kuti'"]
@jump target=text

*emo
[eval exp="f.gra_kuroda_part='emo'"]
@jump target=text


*size_01
[黒田サイズ通常 storage=bg/plane_mizuiro.jpg]
[eval exp="f.gra_kuroda_pose='[黒田サイズ通常]'"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=bg/plane_mizuiro.jpg left=1 top=1 layer=13 zindex=1 visible=true time=30]
[wait time=50]
[黒田ベース羽織]
[黒田通常]
[wait time=10]
;ゲーム中のサイズ表示：調整用
;[image layer=12 visible=true left=1 top=1 storage="kuroda/base_haori.png" time=0]
;[wait time=30]

[freeimage layer=13 time=50]
[wait time=50]
@jump target=text

*size_02
[黒田サイズ遠くに storage=bg/plane_mizuiro.jpg]
[eval exp="f.gra_kuroda_pose='[黒田サイズ遠くに]'"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=bg/plane_mizuiro.jpg left=1 top=1 layer=13 zindex=1 visible=true time=30]
[wait time=50]
[黒田ベース羽織]
[黒田通常]
[wait time=10]
;ゲーム中のサイズ表示：調整用
;[image layer=12 visible=true left=1 top=1 storage="kuroda/base_haori_y580_kangae.png" time=0]
;[wait time=30]

[freeimage layer=13 time=50]
[wait time=50]
@jump target=text

*size_03
[黒田サイズ近くに storage=bg/plane_mizuiro.jpg]
[eval exp="f.gra_kuroda_pose='[黒田サイズ近くに]'"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=bg/plane_mizuiro.jpg left=1 top=1 layer=13 zindex=1 visible=true time=30]
[wait time=50]
[黒田ベース羽織]
[黒田通常]
[wait time=10]
;[image layer=12 visible=true left=-20 top=1 storage="kuroda/base_haori_y1100.png" time=0]
;[wait time=30]

[freeimage layer=13 time=50]
[wait time=50]
@jump target=text

*pose_01
[黒田ベース羽織]
[eval exp="f.gra_kuroda_pose='[黒田ベース羽織]'"]
@jump target=text

*pose_02
[黒田ベース着物]
[eval exp="f.gra_kuroda_pose='[黒田ベース着物]'"]
@jump target=text

*pose_03
;[黒田]
[eval exp="f.gra_kuroda_pose='[黒田]'"]
@jump target=text

*pose_04
;[黒田]
[eval exp="f.gra_kuroda_pose='[黒田]'"]
@jump target=text

*face_01
[黒田通常]
[eval exp="f.gra_kuroda_face='[黒田通常]'"]
@jump target=text

*face_02
[黒田伏目]
[eval exp="f.gra_kuroda_face='[黒田伏目]'"]
@jump target=text

*face_03
[黒田憂い]
[eval exp="f.gra_kuroda_face='[黒田憂い]'"]
@jump target=text

*face_04
[黒田困り]
[eval exp="f.gra_kuroda_face='[黒田困り]'"]
@jump target=text

*face_05
[黒田困り微笑み]
[eval exp="f.gra_kuroda_face='[黒田困り微笑み]'"]
@jump target=text

*face_06
[黒田微笑み]
[eval exp="f.gra_kuroda_face='[黒田微笑み]'"]
@jump target=text

*face_07
[黒田笑顔]
[eval exp="f.gra_kuroda_face='[黒田笑顔]'"]
@jump target=text

*face_08
[黒田驚き]
[eval exp="f.gra_kuroda_face='[黒田驚き]'"]
@jump target=text

*face_09
[黒田真剣]
[eval exp="f.gra_kuroda_face='[黒田真剣]'"]
@jump target=text

*face_10
[黒田照れ]
[eval exp="f.gra_kuroda_face='[黒田照れ]'"]
@jump target=text

*face_11
[]
[eval exp="f.gra_kuroda_face='[]'"]
@jump target=text

*face_21
[黒田目パチ1回]
[eval exp="f.gra_kuroda_face='[黒田目パチ1回](アニメーション)'"]
@jump target=text

*face_22
[黒田伏目パチ1回]
[eval exp="f.gra_kuroda_face='[黒田伏目パチ1回](アニメーション)'"]
@jump target=text

*face_23
[黒田目を閉じる]
[eval exp="f.gra_kuroda_face='[黒田目を閉じる](アニメーション)'"]
@jump target=text

*face_24
[黒田目を開く]
[eval exp="f.gra_kuroda_face='[黒田目を開く](アニメーション)'"]
@jump target=text



*mayu_01
[黒田眉通常]
[eval exp="f.gra_kuroda_face='眉：[黒田眉通常]'"]
@jump target=text

*mayu_02
[黒田眉下げ]
[eval exp="f.gra_kuroda_face='眉：[黒田眉下げ]'"]
@jump target=text

*mayu_03
[黒田眉困り]
[eval exp="f.gra_kuroda_face='眉：[黒田眉困り]'"]
@jump target=text

*mayu_04
[黒田眉強気]
[eval exp="f.gra_kuroda_face='眉：[黒田眉強気]'"]
@jump target=text

*mayu_05
[黒田眉苦悩]
[eval exp="f.gra_kuroda_face='眉：[黒田眉苦悩]'"]
@jump target=text

*mayu_06
[黒田眉驚き]
[eval exp="f.gra_kuroda_face='眉：[黒田眉驚き]'"]
@jump target=text


*me_01
[黒田目通常]
[eval exp="f.gra_kuroda_face='目：[黒田目通常]'"]
@jump target=text

*me_02
[黒田目大]
[eval exp="f.gra_kuroda_face='目：[黒田目大]'"]
@jump target=text

*me_03
[黒田目にこ]
[eval exp="f.gra_kuroda_face='目：[黒田目にこ]'"]
@jump target=text

*me_04
[黒田目伏]
[eval exp="f.gra_kuroda_face='目：[黒田目伏]'"]
@jump target=text

*me_05
[黒田目伏2]
[eval exp="f.gra_kuroda_face='目：[黒田目伏2]'"]
@jump target=text

*me_06
[黒田目閉じ]
[eval exp="f.gra_kuroda_face='目：[黒田目閉じ]'"]
@jump target=text

*me_07
[黒田横目]
[eval exp="f.gra_kuroda_face='目：[黒田横目]'"]
@jump target=text

*me_08
[黒田横伏目]
[eval exp="f.gra_kuroda_face='目：[黒田横伏目]'"]
@jump target=text

*me_09
[黒田横伏目2]
[eval exp="f.gra_kuroda_face='目：[黒田横伏目2]'"]
@jump target=text

*me_10
[黒田横伏目3]
[eval exp="f.gra_kuroda_face='目：[黒田横伏目3]'"]
@jump target=text


*kuti_01
[黒田口通常]
[eval exp="f.gra_kuroda_face='口：[黒田口通常]'"]
@jump target=text

*kuti_02
[黒田口開]
[eval exp="f.gra_kuroda_face='口：[黒田口開]'"]
@jump target=text

*kuti_03
[黒田口微笑み]
[eval exp="f.gra_kuroda_face='口：[黒田口微笑み]'"]
@jump target=text

*kuti_04
[黒田口笑顔]
[eval exp="f.gra_kuroda_face='口：[黒田口笑顔]'"]
@jump target=text

*kuti_05
[黒田口驚き]
[eval exp="f.gra_kuroda_face='口：[黒田口驚き]'"]
@jump target=text

*kuti_06
[黒田口ムッ]
[eval exp="f.gra_kuroda_face='口：[[黒田口ムッ]'"]
@jump target=text

*kuti_07
[黒田口ムッ2]
[eval exp="f.gra_kuroda_face='口：[黒田口ムッ2]'"]
@jump target=text


*emo_01
[黒田効果消]
[eval exp="f.gra_kuroda_face='効果：[黒田効果消]'"]
@jump target=text

*emo_02
[黒田頬染め]
[eval exp="f.gra_kuroda_face='効果：[黒田頬染め]'"]
@jump target=text

*emo_03
[黒田青ざめ]
[eval exp="f.gra_kuroda_face='効果：[黒田青ざめ]'"]
@jump target=text

*emo_04
[黒田汗]
[eval exp="f.gra_kuroda_face='効果：[黒田汗]'"]
@jump target=text

*emo_05
[黒田]
[eval exp="f.gra_kuroda_face='効果：[黒田]'"]
@jump target=text

*emo_06
[黒田]
[eval exp="f.gra_kuroda_face='効果：[黒田]'"]
@jump target=text

*emo_07
[黒田]
[eval exp="f.gra_kuroda_face='効果：[黒田]'"]
@jump target=text

*back_test
[if exp="tf.flag_omake == true"]
@jump target=*omake
[endif]
[freeimage layer = 24]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]

[イベントシーン終了]
[cm]
[freeimage layer = 26]
[iscript]
$(".list").css("opacity",1);
[endscript]
@jump storage="test.ks"
[s]

*omake
*back_test_2
[freeimage layer = 24]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 1]

[イベントシーン終了]
[cm]
[freeimage layer = 26]
[iscript]
$(".list").css("opacity",1);
[endscript]
[eval exp="f.kaogura = 'on'"]
@jump storage="omake.ks"
[s]


*title
[freeimage layer = 24]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 1]
[iscript]
$(".list").css("opacity",1);
[endscript]
[イベントシーン終了]
[cm]
[freeimage layer = 26]
;------タイトルへ戻る
@jump storage="title.ks"
[s]

[if exp="tf.flag_omake == true"]
@jump target=*omake
[endif]

[iscript]
$(".list").css("opacity",1);
[endscript]
[イベントシーン終了]
@jump storage="test.ks"
[s]

*window_close
[cm]
[chara_mod name="kuroda_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_te" storage="toumei.gif" time=0]
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=630 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="kuroda_base" storage="kuroda/o_base.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
