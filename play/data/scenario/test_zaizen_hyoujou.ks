﻿;マクロ及び立ち絵の自然な退場・登場時に◆B4nFWraU42さん作スクリプトを使用させていただきました。ありがとうございます
[cm]
[if exp="tf.flag_omake == true"]
[clearfix]
[endif]
[表示準備 storage="bg/plane_mizuiro.jpg"]
[layopt layer=29 visible=true]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
﻿;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
$('.list').remove();
f.preload_images_tati = ["data/fgimage/zaizen/kuti_okori.png","data/fgimage/zaizen/me_okori.png","data/fgimage/zaizen/me_hiyayaka.png","data/fgimage/zaizen/kuti_hiyayaka.png","data/fgimage/zaizen/me_yokofusi1.png","data/fgimage/zaizen/me_yoko.png","data/fgimage/zaizen/me_toji.png","data/fgimage/zaizen/me_niko.png","data/fgimage/zaizen/me_fusi2.png","data/fgimage/zaizen/me_fusi1.png","data/fgimage/zaizen/me_ake.png","data/fgimage/zaizen/mayu_tuyoki.png","data/fgimage/zaizen/mayu_sage.png","data/fgimage/zaizen/mayu_odoroki.png","data/fgimage/zaizen/mayu_komari_soft.png","data/fgimage/zaizen/mayu_hisome.png","data/fgimage/zaizen/kuti_warau.png","data/fgimage/zaizen/kuti_odoroki.png","data/fgimage/zaizen/kuti_mu.png","data/fgimage/zaizen/kuti_hohoemi_soft.png","data/fgimage/zaizen/kuti_hohoemi.png","data/fgimage/zaizen/kuti_ake.png","data/fgimage/zaizen/emo_hohosome.png","data/fgimage/zaizen/emo_ase.png","data/fgimage/zaizen/kuti_futuu.png","data/fgimage/zaizen/me_futuu.png","data/fgimage/zaizen/mayu_futuu.png","data/fgimage/zaizen/base_suit.png","data/fgimage/zaizen/base_enbifuku.png"];
[endscript]
[preload storage=&f.preload_images_tati wait=true]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]

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

;[財前サイズ通常]
[財前ベーススーツ]
[eval exp="f.gra_zaizen_pose='[財前ベーススーツ]'"]
[財前通常]
[eval exp="f.gra_zaizen_face='[財前通常]'"]
[eval exp="f.gra_zaizen_part='mayu'"]
[表示開始]
[freeimage layer = 29]

[cm]
[layopt layer=24 visible=true]
[ptext name=list text="サイズ" layer=24 size=12 x=30 y=10 color=black bold=bold]
[ptext name=list text="衣装" layer=24 size=18 x=30 y=130 color=black bold=bold]
[ptext name=list text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext name=irast text="Illustration　by :◆jsYiJcqRkk" layer=24 size=10 x=390 y=1 color=black bold=bold]
[ptext name=list text="アニメーション" layer=24 size=18 x=30 y=220 color=black bold=bold]
[ptext name=list text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

*text
[glink name=list target="size_01" text="[財前サイズ通常]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 font_color=black]
[glink name=list target="size_02" text="[財前サイズ隣に並ぶ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 font_color=black]
[glink name=list target="size_03" text="[財前サイズ顔アップ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 font_color=black]

[glink name=list target="pose_01" text="[財前ベーススーツ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=150 font_color=black]
[glink name=list target="pose_02" text="[財前ベース燕尾服]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 font_color=black]
;[glink name=list target="pose_03" text="[財前]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 font_color=black]
;[glink name=list target="pose_04" text="[財前]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 font_color=black]

[glink name=list target="face_01" text="[財前通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 font_color=black]
[glink name=list target="face_09" text="[財前冷ややか]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 font_color=black]
[glink name=list target="face_05" text="[財前冷ややかな微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 font_color=black]
[glink name=list target="face_06" text="[財前ため息]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 font_color=black]
[glink name=list target="face_07" text="[財前不快]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 font_color=black]
[glink name=list target="face_03" text="[財前驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 font_color=black]
[glink name=list target="face_12" text="[財前真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 font_color=black]
[glink name=list target="face_04" text="[財前困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 font_color=black]
[glink name=list target="face_10" text="[財前笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 font_color=black]
[glink name=list target="face_11" text="[財前笑み柔和]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 font_color=black]
[glink name=list target="face_08" text="[財前怒り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 font_color=black]
;[glink name=list target="face_02" text="[財前伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 font_color=black]

[glink name=list target="face_21" text="[財前目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 font_color=black]

[glink name=list target="face_22" text="[財前伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 font_color=black]

[glink name=list target="face_23" text="[財前目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=300 font_color=black]

[glink name=list target="face_24" text="[財前目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=330 font_color=black]


[glink name=list target="mayu" text="眉：詳細" graphic="select_waku_x300.png" size=15 width="80" x=570 y=30 font_color=steelblue]
[glink name=list target="me" text="目：詳細" graphic="select_waku_x300.png" size=15 width="80" x=660 y=30 font_color=steelblue]
[glink name=list target="kuti" text="口：詳細" graphic="select_waku_x300.png" size=15 width="80" x=750 y=30 font_color=steelblue]
[glink name=list target="emo" text="効果：詳細" graphic="select_waku_x300.png" size=15 width="80" x=840 y=30 font_color=steelblue]

[if exp="f.gra_zaizen_part=='mayu'"]
[glink name=list target="mayu_01" text="[財前眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink name=list target="mayu_07" text="[財前眉ひそめ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink name=list target="mayu_06" text="[財前眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink name=list target="mayu_04" text="[財前眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink name=list target="mayu_03" text="[財前眉困り柔和]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[glink name=list target="mayu_02" text="[財前眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
[glink name=list target="mayu_08" text="[財前眉冷ややか]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
;[glink name=list target="mayu_08" text="[財前眉下げ下]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[endif]

[if exp="f.gra_zaizen_part=='me'"]
[glink name=list target="me_01" text="[財前目通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink name=list target="me_02" text="[財前目大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink name=list target="me_03" text="[財前目にこ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink name=list target="me_04" text="[財前目伏]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink name=list target="me_05" text="[財前目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[glink name=list target="me_06" text="[財前横目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
[glink name=list target="me_07" text="[財前横伏目]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
[glink name=list target="me_08" text="[財前目冷ややか]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 font_color=black]
[glink name=list target="me_09" text="[財前目怒り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 font_color=black]
[endif]

[if exp="f.gra_zaizen_part=='kuti'"]
[glink name=list target="kuti_01" text="[財前口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink name=list target="kuti_02" text="[財前口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink name=list target="kuti_03" text="[財前口冷ややか]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
[glink name=list target="kuti_04" text="[財前口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
[glink name=list target="kuti_07" text="[財前口微笑み柔和]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
[glink name=list target="kuti_05" text="[財前口笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
[glink name=list target="kuti_10" text="[財前口笑み柔和]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
[glink name=list target="kuti_06" text="[財前口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 font_color=black]
[glink name=list target="kuti_09" text="[財前口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 font_color=black]
[glink name=list target="kuti_08" text="[財前口大開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=330 font_color=black]


[endif]

[if exp="f.gra_zaizen_part=='emo'"]
[glink name=list target="emo_01" text="[財前効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 font_color=black]
[glink name=list target="emo_02" text="[財前頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 font_color=black]
[glink name=list target="emo_03" text="[財前汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 font_color=black]
;[glink name=list target="emo_04" text="[財前ビンタ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 font_color=black]
;[glink name=list target="emo_05" text="[財前]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 font_color=black]
;[glink name=list target="emo_06" text="[財前]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 font_color=black]
;[glink name=list target="emo_07" text="[財前]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 font_color=black]
[endif]

[if exp="tf.flag_omake == false"]
[glink name=opasity target="back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=290 font_color=black]
[elsif exp="tf.flag_omake == true"]
[glink name=opasity target="back_test_2" text="おまけへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=290 font_color=black]
[endif]
[glink name=opasity target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=320 font_color=black]
[if exp="tf.btn_opasity != 'off'"]
[glink name=opasity target="opasity_0" text="ボタンを一時消す" graphic="select_waku_x500.png" size=15 width="130" x=800 y=350 font_color=black]
[else]
[glink name=opasity target="opasity_100" text="ボタンを表示" graphic="select_waku_x500.png" size=15 width="130" x=800 y=350 font_color=black]
[endif]
[if exp="tf.flag_omake != true"]
この表情は以下の指定です。[r]
ポーズマクロ：[emb exp="f.gra_zaizen_pose"][r]
表情マクロ　：[emb exp="f.gra_zaizen_face"][r]
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
[iscript]
this.kag.variable.tf.system.backlog.pop();
[endscript]
*opasity_100
[eval exp="tf.btn_opasity='on'"]
[iscript]
$(".list").css("opacity",1);
$(".layer_free").css("opacity",1);
[endscript]
@jump target=text
;============================================================================

*mayu
[eval exp="f.gra_zaizen_part='mayu'"]
@jump target=text

*me
[eval exp="f.gra_zaizen_part='me'"]
@jump target=text

*kuti
[eval exp="f.gra_zaizen_part='kuti'"]
@jump target=text

*emo
[eval exp="f.gra_zaizen_part='emo'"]
@jump target=text

*size_01
[財前サイズ通常 storage=bg/plane_mizuiro.jpg]
[eval exp="f.gra_zaizen_pose='[財前サイズ通常]'"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=bg/plane_mizuiro.jpg left=1 top=1 layer=13 zindex=1 visible=true time=30]
[wait time=50]
[財前ベーススーツ]
[財前通常]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]
@jump target=text

*size_02
[財前サイズ隣に並ぶ storage=bg/plane_mizuiro.jpg]
[eval exp="f.gra_zaizen_pose='[財前サイズ隣に並ぶ]'"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=bg/plane_mizuiro.jpg left=1 top=1 layer=13 zindex=1 visible=true time=30]
[wait time=50]
[財前ベーススーツ]
[財前通常]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]
@jump target=text

*size_03
[財前サイズ顔アップ storage=bg/plane_mizuiro.jpg]
[eval exp="f.gra_zaizen_pose='[財前サイズ顔アップ]'"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=bg/plane_mizuiro.jpg left=1 top=1 layer=13 zindex=1 visible=true time=30]
[wait time=50]
[財前ベーススーツ]
[財前通常]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]
@jump target=text

*pose_01
[財前ベーススーツ]
[eval exp="f.gra_zaizen_pose='[財前ベーススーツ]'"]
@jump target=text

*pose_02
[財前ベース燕尾服]
[eval exp="f.gra_zaizen_pose='[財前ベース燕尾服]'"]
@jump target=text

*pose_03
;[財前]
[eval exp="f.gra_zaizen_pose='[財前]'"]
@jump target=text

*pose_04
;[財前]
[eval exp="f.gra_zaizen_pose='[財前]'"]
@jump target=text

*face_01
[財前通常]
[eval exp="f.gra_zaizen_face='[財前通常]'"]
@jump target=text

*face_02
[財前伏目]
[eval exp="f.gra_zaizen_face='[財前伏目]'"]
@jump target=text

*face_03
[財前驚き]
[eval exp="f.gra_zaizen_face='[財前驚き]'"]
@jump target=text

*face_04
[財前困り]
[eval exp="f.gra_zaizen_face='[財前困り]'"]
@jump target=text

*face_05
[財前冷ややかな微笑み]
[eval exp="f.gra_zaizen_face='[財前冷ややかな微笑み]'"]
@jump target=text

*face_06
[財前ため息]
[eval exp="f.gra_zaizen_face='[財前ため息]'"]
@jump target=text

*face_07
[財前不快]
[eval exp="f.gra_zaizen_face='[財前不快]'"]
@jump target=text

*face_08
[財前怒り]
[eval exp="f.gra_zaizen_face='[財前怒り]'"]
@jump target=text

*face_09
[財前冷ややか]
[eval exp="f.gra_zaizen_face='[財前冷ややか]'"]
@jump target=text

*face_10
[財前笑み]
[eval exp="f.gra_zaizen_face='[財前笑み]'"]
@jump target=text

*face_11
[財前笑み柔和]
[eval exp="f.gra_zaizen_face='[財前笑み柔和]'"]
@jump target=text

*face_12
[財前真剣]
[eval exp="f.gra_zaizen_face='[財前真剣]'"]
@jump target=text

*face_21
[財前目パチ1回]
[eval exp="f.gra_zaizen_face='[財前目パチ1回](アニメーション)'"]
@jump target=text

*face_22
[財前伏目パチ1回]
[eval exp="f.gra_zaizen_face='[財前伏目パチ1回](アニメーション)'"]
@jump target=text

*face_23
[財前目閉じ]
[eval exp="f.gra_zaizen_face='[財前目閉じ](アニメーション)'"]
@jump target=text

*face_24
[財前目を開く]
[eval exp="f.gra_zaizen_face='[財前目を開く](アニメーション)'"]
@jump target=text



*mayu_01
[財前眉通常]
[eval exp="f.gra_zaizen_face='眉：[財前眉通常]'"]
@jump target=text

*mayu_02
[財前眉下げ]
[eval exp="f.gra_zaizen_face='眉：[財前眉下げ]'"]
@jump target=text

*mayu_03
[財前眉困り柔和]
[eval exp="f.gra_zaizen_face='眉：[財前眉困り柔和]'"]
@jump target=text

*mayu_04
[財前眉強気]
[eval exp="f.gra_zaizen_face='眉：[財前眉強気]'"]
@jump target=text

*mayu_05
[財前眉通常下]
[eval exp="f.gra_zaizen_face='眉：[財前眉通常下]'"]
@jump target=text

*mayu_06
[財前眉驚き]
[eval exp="f.gra_zaizen_face='眉：[財前眉驚き]'"]
@jump target=text

*mayu_07
[財前眉ひそめ]
[eval exp="f.gra_zaizen_face='眉：[財前眉ひそめ]'"]
@jump target=text

*mayu_08
[財前眉冷ややか]
[eval exp="f.gra_zaizen_face='眉：[財前眉冷ややか]'"]
@jump target=text


*me_01
[財前目通常]
[eval exp="f.gra_zaizen_face='目：[財前目通常]'"]
@jump target=text

*me_02
[財前目大]
[eval exp="f.gra_zaizen_face='目：[財前目大]'"]
@jump target=text

*me_03
[財前目にこ]
[eval exp="f.gra_zaizen_face='目：[財前目にこ]'"]
@jump target=text

*me_04
[財前目伏]
[eval exp="f.gra_zaizen_face='目：[財前目伏]'"]
@jump target=text

*me_05
[財前目閉じ]
[eval exp="f.gra_zaizen_face='目：[財前目閉じ]'"]
@jump target=text

*me_06
[財前横目]
[eval exp="f.gra_zaizen_face='目：[財前横目]'"]
@jump target=text

*me_07
[財前横伏目]
[eval exp="f.gra_zaizen_face='目：[財前横伏目]'"]
@jump target=text

*me_08
[財前目冷ややか]
[eval exp="f.gra_zaizen_face='目：[財前目冷ややか]'"]
@jump target=text

*me_09
[財前目怒り]
[eval exp="f.gra_zaizen_face='目：[財前目怒り]'"]
@jump target=text

*kuti_01
[財前口通常]
[eval exp="f.gra_zaizen_face='口：[財前口通常]'"]
@jump target=text

*kuti_02
[財前口開]
[eval exp="f.gra_zaizen_face='口：[財前口開]'"]
@jump target=text

*kuti_03
[財前口冷ややか]
[eval exp="f.gra_zaizen_face='口：[財前口冷ややか]'"]
@jump target=text

*kuti_04
[財前口微笑み]
[eval exp="f.gra_zaizen_face='口：[財前口微笑み]'"]
@jump target=text

*kuti_05
[財前口笑み]
[eval exp="f.gra_zaizen_face='口：[財前口笑み]'"]
@jump target=text

*kuti_06
[財前口驚き]
[eval exp="f.gra_zaizen_face='口：[財前口驚き]'"]
@jump target=text

*kuti_07
[財前口微笑み柔和]
[eval exp="f.gra_zaizen_face='口：[財前口微笑み柔和]'"]
@jump target=text

*kuti_08
[財前口大開]
[eval exp="f.gra_zaizen_face='口：[財前口大開]'"]
@jump target=text

*kuti_09
[財前口ムッ]
[eval exp="f.gra_zaizen_face='口：[財前口ムッ]'"]
@jump target=text

*kuti_10
[財前口笑み柔和]
[eval exp="f.gra_zaizen_face='口：[財前口笑み柔和]'"]
@jump target=text


*emo_01
[財前効果消]
[eval exp="f.gra_zaizen_face='効果：[財前効果消]'"]
@jump target=text

*emo_02
[財前頬染め]
[eval exp="f.gra_zaizen_face='効果：[財前頬染め]'"]
@jump target=text

*emo_03
[財前汗]
[eval exp="f.gra_zaizen_face='効果：[財前汗]'"]
@jump target=text

*emo_04
[財前ビンタ]
[eval exp="f.gra_zaizen_face='効果：[ビンタ]'"]
@jump target=text

*emo_05
[財前]
[eval exp="f.gra_zaizen_face='効果：[財前]'"]
@jump target=text

*emo_06
[財前]
[eval exp="f.gra_zaizen_face='効果：[財前]'"]
@jump target=text

*emo_07
[財前]
[eval exp="f.gra_zaizen_face='効果：[財前]'"]
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

[イベントシーン終了]
[cm]
[freeimage layer = 26]
[iscript]
$(".list").css("opacity",1);
[endscript]
;------タイトルへ戻る
@jump storage="title.ks"
[s]

[if exp="tf.flag_omake == true"]
@jump target=*omake
[endif]
[イベントシーン終了]
@jump storage="test.ks"
[s]

*window_close
[cm]
[chara_mod name="zaizen_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="zaizen_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="zaizen_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="zaizen_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="zaizen_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="zaizen_te" storage="toumei.gif" time=0]
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
[locate x=650 y=357]
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
[chara_mod name="zaizen_base" storage="zaizen/base.png" time=0]
[wait time=10]
[chara_mod name="zaizen_mayu" storage="zaizen/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="zaizen_me" storage="zaizen/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="zaizen_kuti" storage="zaizen/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
