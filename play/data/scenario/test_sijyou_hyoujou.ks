﻿;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[cm]
[if exp="tf.flag_omake == true"]
[iscript]
$('.list').remove();
[endscript]
[clearfix]
[endif]

;おまけモード：著者名以外にname=listを追加　画面右ボタンを追加（ボタンopasity_0） タイトルに戻る+おまけにもどるでlistの表示を初期化
[表示準備 storage="bg/plane_mizuiro.jpg"]
[layopt layer=29 visible=true]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
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
;背景テスト組み合わせ中
[call target=*start storage="sijyou/macro_bg_test.ks"]
[eval exp="tf.page=1"]
[eval exp="tf.chara_test=true"]
[eval exp="f.kaogura = 'off'"]
;=============================================
;表情テスト
;=============================================

[cm]
;背景変更
[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=0]
[if exp="tf.flag_omake != true"]
[イベントシーン構築]
[endif]
[freeimage layer = 29]

*page_01
;↓◆B4nFWraU42さん作のマクロを使用させていただきました。使いやすく、表示が自然になってありがたいです！ 準備中gifもありがとうございました(スクリプト担
[表示準備 storage="bg/plane_mizuiro.jpg"]
[四条退場]
[四条_隣_退場]
[四条_顔up_退場]
[四条ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条ベース羽織]'"]
[四条通常]
[eval exp="f.gra_sijyou_face='[四条通常]'"]
[eval exp="f.gra_sijyou_part='sijyou_mayu'"]
[表示開始]
*sijyou_text
[cm]
[layopt layer=24 visible=true]
[ptext name=list text="サイズ選択" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext name=list text="マクロ：ポーズ" layer=24 size=18 x=30 y=130 color=black bold=bold]
[ptext name=list text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext name=irast text="Illustration　by :かいこ" layer=24 size=16 x=400 y=10 color=black bold=bold]
[ptext name=list text="アニメーション" layer=24 size=18 x=30 y=220 color=black bold=bold]
[ptext name=list text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]
*sijyou_text1
[glink name=list target="page_01" exp="tf.size='defo'" text="通常サイズ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 color=blue]
[glink name=list target="page_02" exp="tf.size='tonari'" text="サイズ：隣に並ぶ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 color=blue]
[glink name=list target="page_03" exp="tf.size='up'" text="サイズ：顔アップ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=blue]

[glink name=list target="sijyou_pose_01" text="[四条ベース着物]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=150 color=white]
[glink name=list target="sijyou_pose_02" text="[四条ベース羽織]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 color=white]
;[glink target="sijyou_pose_03" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=white]
;[glink target="sijyou_pose_04" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 color=white]

[glink name=list target="sijyou_face_01" text="[四条通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 color=white]
[glink name=list target="sijyou_face_09" text="[四条笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 color=white]
[glink name=list target="sijyou_face_10" text="[四条笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 color=white]
[glink name=list target="sijyou_face_08" text="[四条微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 color=white]
[glink name=list target="sijyou_face_05" text="[四条困り微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 color=white]
[glink name=list target="sijyou_face_03" text="[四条驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 color=white]
[glink name=list target="sijyou_face_11" text="[四条憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 color=white]
[glink name=list target="sijyou_face_04" text="[四条困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 color=white]
[glink name=list target="sijyou_face_02" text="[四条伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 color=white]
[glink name=list target="sijyou_face_12" text="[四条真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 color=white]
;[glink name=list target="sijyou_face_06" text="[四条照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 color=white]
;[glink name=list target="sijyou_face_07" text="[四条照れ目普通]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 color=white]

[glink name=list target="sijyou_face_21" text="[四条目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 color=white]

[glink name=list target="sijyou_face_22" text="[四条伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 color=white]

[glink name=list target="sijyou_face_23" text="[四条目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=300 color=white]

[glink name=list target="sijyou_face_24" text="[四条目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=330 color=white]


[glink name=list target="sijyou_mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 color=blue]
[glink name=list target="sijyou_me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 color=blue]
[glink name=list target="sijyou_kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 color=blue]
[glink name=list target="sijyou_emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 color=blue]

[if exp="f.gra_sijyou_part=='sijyou_mayu'"]
[glink name=list target="sijyou_mayu_01" text="[四条眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_mayu_02" text="[四条眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_mayu_03" text="[四条眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_mayu_04" text="[四条眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink name=list target="sijyou_mayu_06" text="[四条眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink name=list target="sijyou_mayu_05" text="[四条眉眉間に皺]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_me'"]
[glink name=list target="sijyou_me_01" text="[四条目通常]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_me_02" text="[四条目大]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=85 color=white]
[glink name=list target="sijyou_me_03" text="[四条目にこ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=110 color=white]
[glink name=list target="sijyou_me_04" text="[四条目伏]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=135 color=white]
[glink name=list target="sijyou_me_08" text="[四条目伏2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=160 color=white]
[glink name=list target="sijyou_me_05" text="[四条目閉じ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=185 color=white]
[glink name=list target="sijyou_me_06" text="[四条横目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=210 color=white]
[glink name=list target="sijyou_me_07" text="[四条横伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=235 color=white]
[glink name=list target="sijyou_me_09" text="[四条横伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=260 color=white]
[glink name=list target="sijyou_me_10" text="[四条右流し目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=285 color=white]
[glink name=list target="sijyou_me_11" text="[四条右伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=310 color=white]
[glink name=list target="sijyou_me_12" text="[四条右伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=335 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_kuti'"]
[glink name=list target="sijyou_kuti_01" text="[四条口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_kuti_02" text="[四条口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_kuti_03" text="[四条口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_kuti_04" text="[四条口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink name=list target="sijyou_kuti_05" text="[四条口笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink name=list target="sijyou_kuti_06" text="[四条口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[glink name=list target="sijyou_kuti_09" text="[四条口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[glink name=list target="sijyou_kuti_07" text="[四条口叫び]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 color=white]
;[glink name=list target="sijyou_kuti_06" text="[四条口]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_emo'"]
[glink name=list target="sijyou_emo_01" text="[四条効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_emo_02" text="[四条頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_emo_03" text="[四条汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_emo_04" text="[四条ビンタ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
;[glink name=list target="sijyou_emo_05" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
;[glink name=list target="sijyou_emo_06" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
;[glink name=list target="sijyou_emo_07" text="[四条]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[endif]
@jump target=page_end

*page_02
[表示準備 storage="bg/plane_mizuiro.jpg"]
[四条退場]
[四条_隣_退場]
[四条_顔up_退場]
[四条_隣_ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条_隣_ベース羽織]'"]
[四条_隣_通常]
[eval exp="f.gra_sijyou_face='[四条_隣_通常]'"]
[eval exp="f.gra_sijyou_part='sijyou_tonari_mayu'"]
[表示開始]
*sijyou_tonari_text
[cm]
[layopt layer=24 visible=true]
[ptext name=list text="サイズ選択" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext name=list text="マクロ：ポーズ" layer=24 size=18 x=30 y=130 color=black bold=bold]
[ptext name=list text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext name=irast text="Illustration　by:かいこ" layer=24 size=16 x=400 y=10 color=black bold=bold]
[ptext name=list text="アニメーション" layer=24 size=18 x=30 y=220 color=black bold=bold]
[ptext name=list text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

[glink name=list target="page_01" exp="tf.size='defo'" text="通常サイズ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 color=blue]
[glink name=list target="page_02" exp="tf.size='tonari'" text="サイズ：隣に並ぶ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 color=blue]
[glink name=list target="page_03" exp="tf.size='up'" text="サイズ：顔アップ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=blue]

[glink name=list target="sijyou_tonari_pose_01" text="[四条_隣_ベース着物]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=150 color=white]
[glink name=list target="sijyou_tonari_pose_02" text="[四条_隣_ベース羽織]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 color=white]
;[glink name=list target="sijyou_tonari_pose_03" text="[四条_隣_]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=white]
;[glink name=list target="sijyou_tonari_pose_04" text="[四条_隣_]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 color=white]

[glink name=list target="sijyou_tonari_face_01" text="[四条_隣_通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 color=white]
[glink name=list target="sijyou_tonari_face_09" text="[四条_隣_笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 color=white]
[glink name=list target="sijyou_tonari_face_10" text="[四条_隣_笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 color=white]
[glink name=list target="sijyou_tonari_face_08" text="[四条_隣_微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 color=white]
[glink name=list target="sijyou_tonari_face_05" text="[四条_隣_困り微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 color=white]
[glink name=list target="sijyou_tonari_face_03" text="[四条_隣_驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 color=white]
[glink name=list target="sijyou_tonari_face_11" text="[四条_隣_憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 color=white]
[glink name=list target="sijyou_tonari_face_04" text="[四条_隣_困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 color=white]
[glink name=list target="sijyou_tonari_face_02" text="[四条_隣_伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 color=white]
[glink name=list target="sijyou_tonari_face_12" text="[四条_隣_真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 color=white]
;[glink name=list target="sijyou_tonari_face_06" text="[四条_隣_照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 color=white]
;[glink name=list target="sijyou_tonari_face_07" text="[四条_隣_照れ目普通]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 color=white]

[glink name=list target="sijyou_tonari_face_21" text="[四条_隣_目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 color=white]

[glink name=list target="sijyou_tonari_face_22" text="[四条_隣_伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 color=white]

[glink name=list target="sijyou_tonari_face_23" text="[四条_隣_目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=300 color=white]

[glink name=list target="sijyou_tonari_face_24" text="[四条_隣_目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=330 color=white]


[glink name=list target="sijyou_tonari_mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 color=blue]
[glink name=list target="sijyou_tonari_me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 color=blue]
[glink name=list target="sijyou_tonari_kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 color=blue]
[glink name=list target="sijyou_tonari_emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 color=blue]

[if exp="f.gra_sijyou_part=='sijyou_tonari_mayu'"]
[glink name=list target="sijyou_tonari_mayu_01" text="[四条_隣_眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_tonari_mayu_02" text="[四条_隣_眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_tonari_mayu_03" text="[四条_隣_眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_tonari_mayu_04" text="[四条_隣_眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink name=list target="sijyou_tonari_mayu_06" text="[四条_隣_眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink name=list target="sijyou_tonari_mayu_05" text="[四条_隣_眉眉間に皺]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_tonari_me'"]
[glink name=list target="sijyou_tonari_me_01" text="[四条_隣_目通常]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_tonari_me_02" text="[四条_隣_目大]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=85 color=white]
[glink name=list target="sijyou_tonari_me_03" text="[四条_隣_目にこ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=110 color=white]
[glink name=list target="sijyou_tonari_me_04" text="[四条_隣_目伏]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=135 color=white]
[glink name=list target="sijyou_tonari_me_08" text="[四条_隣_目伏2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=160 color=white]
[glink name=list target="sijyou_tonari_me_05" text="[四条_隣_目閉じ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=185 color=white]
[glink name=list target="sijyou_tonari_me_06" text="[四条_隣_横目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=210 color=white]
[glink name=list target="sijyou_tonari_me_07" text="[四条_隣_横伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=235 color=white]
[glink name=list target="sijyou_tonari_me_09" text="[四条_隣_横伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=260 color=white]
[glink name=list target="sijyou_tonari_me_10" text="[四条_隣_右流し目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=285 color=white]
[glink name=list target="sijyou_tonari_me_11" text="[四条_隣_右伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=310 color=white]
[glink name=list target="sijyou_tonari_me_12" text="[四条_隣_右伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=335 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_tonari_kuti'"]
[glink name=list target="sijyou_tonari_kuti_01" text="[四条_隣_口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_tonari_kuti_02" text="[四条_隣_口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_tonari_kuti_03" text="[四条_隣_口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_tonari_kuti_04" text="[四条_隣_口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink name=list target="sijyou_tonari_kuti_05" text="[四条_隣_口笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink name=list target="sijyou_tonari_kuti_06" text="[四条_隣_口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[glink name=list target="sijyou_tonari_kuti_09" text="[四条_隣_口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[glink name=list target="sijyou_tonari_kuti_07" text="[四条_隣_口叫び]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 color=white]
;[glink name=list target="sijyou_tonari_kuti_06" text="[四条_隣_口]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_tonari_emo'"]
[glink name=list target="sijyou_tonari_emo_01" text="[四条_隣_効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_tonari_emo_02" text="[四条_隣_頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_tonari_emo_03" text="[四条_隣_汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_tonari_emo_04" text="[四条_隣_ビンタ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
;[glink name=list target="sijyou_tonari_emo_05" text="[四条_隣_]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
;[glink name=list target="sijyou_tonari_emo_06" text="[四条_隣_]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
;[glink name=list target="sijyou_tonari_emo_07" text="[四条_隣_]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[endif]
@jump target=page_end

*page_03
[表示準備 storage="bg/plane_mizuiro.jpg"]
[四条退場]
[四条_隣_退場]
[四条_顔up_退場]
[四条_顔up_ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条_顔up_ベース羽織]'"]
[四条_顔up_通常]
[eval exp="f.gra_sijyou_face='[四条_顔up_通常]'"]
[eval exp="f.gra_sijyou_part='sijyou_up_mayu'"]
[表示開始]
*sijyou_up_text
[cm]
[layopt layer=24 visible=true]
[ptext name=list text="サイズ選択" layer=24 size=18 x=30 y=10 color=black bold=bold]
[ptext name=list text="マクロ：ポーズ" layer=24 size=18 x=30 y=130 color=black bold=bold]
[ptext name=list text="表　情" layer=24 size=18 x=260 y=10 color=black bold=bold]
[ptext name=irast text="Illustration　by:かいこ" layer=24 size=16 x=400 y=10 color=black bold=bold]
[ptext name=list text="アニメーション" layer=24 size=18 x=30 y=220 color=black bold=bold]
[ptext name=list text="個別 顔パーツ" layer=24 size=18 x=700 y=10 color=black bold=bold]

[glink name=list target="page_01" exp="tf.size='defo'" text="通常サイズ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=30 color=blue]
[glink name=list target="page_02" exp="tf.size='tonari'" text="サイズ：隣に並ぶ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=60 color=blue]
[glink name=list target="page_03" exp="tf.size='up'" text="サイズ：顔アップ" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=blue]

[glink name=list target="sijyou_up_pose_01" text="[四条_顔up_ベース着物]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=150 color=white]
[glink name=list target="sijyou_up_pose_02" text="[四条_顔up_ベース羽織]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=180 color=white]
;[glink name=list target="sijyou_up_pose_03" text="[四条_顔up_]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=90 color=white]
;[glink name=list target="sijyou_up_pose_04" text="[四条_顔up_]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=120 color=white]

[glink name=list target="sijyou_up_face_01" text="[四条_顔up_通常]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=30 color=white]
[glink name=list target="sijyou_up_face_09" text="[四条_顔up_笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=60 color=white]
[glink name=list target="sijyou_up_face_10" text="[四条_顔up_笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=90 color=white]
[glink name=list target="sijyou_up_face_08" text="[四条_顔up_微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=120 color=white]
[glink name=list target="sijyou_up_face_05" text="[四条_顔up_困り微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=150 color=white]
[glink name=list target="sijyou_up_face_03" text="[四条_顔up_驚き]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=180 color=white]
[glink name=list target="sijyou_up_face_11" text="[四条_顔up_憂い]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=210 color=white]
[glink name=list target="sijyou_up_face_04" text="[四条_顔up_困り]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=240 color=white]
[glink name=list target="sijyou_up_face_02" text="[四条_顔up_伏目]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=270 color=white]
[glink name=list target="sijyou_up_face_12" text="[四条_顔up_真剣]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=300 color=white]
;[glink name=list target="sijyou_up_face_06" text="[四条_顔up_照れ]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=330 color=white]
;[glink name=list target="sijyou_up_face_07" text="[四条_顔up_照れ目普通]" graphic="select_waku_x500.png" size=15 width="160" x=190 y=360 color=white]

[glink name=list target="sijyou_up_face_21" text="[四条_顔up_目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=240 color=white]

[glink name=list target="sijyou_up_face_22" text="[四条_顔up_伏目パチ1回]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=270 color=white]

[glink name=list target="sijyou_up_face_23" text="[四条_顔up_目閉じ]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=300 color=white]

[glink name=list target="sijyou_up_face_24" text="[四条_顔up_目を開く]" graphic="select_waku_x500.png" size=15 width="160" x=0 y=330 color=white]


[glink name=list target="sijyou_up_mayu" text="眉：詳細" graphic="select_waku_x500.png" size=15 width="80" x=570 y=30 color=blue]
[glink name=list target="sijyou_up_me" text="目：詳細" graphic="select_waku_x500.png" size=15 width="80" x=660 y=30 color=blue]
[glink name=list target="sijyou_up_kuti" text="口：詳細" graphic="select_waku_x500.png" size=15 width="80" x=750 y=30 color=blue]
[glink name=list target="sijyou_up_emo" text="効果：詳細" graphic="select_waku_x500.png" size=15 width="80" x=840 y=30 color=blue]

[if exp="f.gra_sijyou_part=='sijyou_up_mayu'"]
[glink name=list target="sijyou_up_mayu_01" text="[四条_顔up_眉通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_up_mayu_02" text="[四条_顔up_眉下げ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_up_mayu_03" text="[四条_顔up_眉困り]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_up_mayu_04" text="[四条_顔up_眉強気]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink name=list target="sijyou_up_mayu_06" text="[四条_顔up_眉驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink name=list target="sijyou_up_mayu_05" text="[四条_顔up_眉眉間に皺]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_up_me'"]
[glink name=list target="sijyou_up_me_01" text="[四条_顔up_目通常]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_up_me_02" text="[四条_顔up_目大]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=85 color=white]
[glink name=list target="sijyou_up_me_03" text="[四条_顔up_目にこ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=110 color=white]
[glink name=list target="sijyou_up_me_04" text="[四条_顔up_目伏]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=135 color=white]
[glink name=list target="sijyou_up_me_08" text="[四条_顔up_目伏2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=160 color=white]
[glink name=list target="sijyou_up_me_05" text="[四条_顔up_目閉じ]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=185 color=white]
[glink name=list target="sijyou_up_me_06" text="[四条_顔up_横目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=210 color=white]
[glink name=list target="sijyou_up_me_07" text="[四条_顔up_横伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=235 color=white]
[glink name=list target="sijyou_up_me_09" text="[四条_顔up_横伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=260 color=white]
[glink name=list target="sijyou_up_me_10" text="[四条_顔up_右流し目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=285 color=white]
[glink name=list target="sijyou_up_me_11" text="[四条_顔up_右伏目]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=310 color=white]
[glink name=list target="sijyou_up_me_12" text="[四条_顔up_右伏目2]" graphic="select_waku_x500.png" size=14 width="160" x=600 y=335 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_up_kuti'"]
[glink name=list target="sijyou_up_kuti_01" text="[四条_顔up_口通常]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_up_kuti_02" text="[四条_顔up_口開]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_up_kuti_03" text="[四条_顔up_口微笑み]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_up_kuti_04" text="[四条_顔up_口笑顔]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
[glink name=list target="sijyou_up_kuti_05" text="[四条_顔up_口笑顔大]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
[glink name=list target="sijyou_up_kuti_06" text="[四条_顔up_口驚き]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
[glink name=list target="sijyou_up_kuti_09" text="[四条_顔up_口ムッ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[glink name=list target="sijyou_up_kuti_07" text="[四条_顔up_口叫び]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=270 color=white]
;[glink name=list target="sijyou_up_kuti_06" text="[四条_顔up_口]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=300 color=white]
[endif]

[if exp="f.gra_sijyou_part=='sijyou_up_emo'"]
[glink name=list target="sijyou_up_emo_01" text="[四条_顔up_効果消]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=60 color=white]
[glink name=list target="sijyou_up_emo_02" text="[四条_顔up_頬染め]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=90 color=white]
[glink name=list target="sijyou_up_emo_03" text="[四条_顔up_汗]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=120 color=white]
[glink name=list target="sijyou_up_emo_04" text="[四条_顔up_ビンタ]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=150 color=white]
;[glink name=list target="sijyou_up_emo_05" text="[四条_顔up_]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=180 color=white]
;[glink name=list target="sijyou_up_emo_06" text="[四条_顔up_]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=210 color=white]
;[glink name=list target="sijyou_up_emo_07" text="[四条_顔up_]" graphic="select_waku_x500.png" size=15 width="160" x=600 y=240 color=white]
[endif]
@jump target=page_end

*page_end
[if exp="tf.flag_omake == false"]
[iscript]
tf.raberu = "*page"+tf.page;
[endscript]
[glink target="&tf.raberu" exp="tf.page++" text="&tf.page" size=15 width="100" x=800 y=190 color=white]
[if exp="tf.page > 0"]
[glink target="&tf.raberu" exp="tf.page--" text="前へ" size=15 width="100" x=800 y=240 color=white]
[endif]
[endif]
;============================================================================
[if exp="tf.flag_omake == false"]
[glink name=opasity target="back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=290 color=white]
[elsif exp="tf.flag_omake == true"]
[glink name=opasity target="back_test_2" text="おまけへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=290 color=white]
[endif]
[glink name=opasity target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=320 color=white]
[if exp="tf.btn_opasity != 'off'"]
[glink name=opasity target="opasity_0" text="ボタンを一時消す" graphic="select_waku_x500.png" size=15 width="130" x=800 y=350 color=white]
[else]
[glink name=opasity target="opasity_100" text="ボタンを表示" graphic="select_waku_x500.png" size=15 width="130" x=800 y=350 color=white]
[endif]
[if exp="tf.flag_omake != true"]
この表情は以下の指定です。[r]
ポーズマクロ：[emb exp="f.gra_sijyou_pose"][r]
表情マクロ　：[emb exp="f.gra_sijyou_face"][r]
各表情は実際の立ち絵とは異なります。
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
;戻る場所
[if exp="tf.size == 'defo'"] 
@jump target=sijyou_text
[elsif exp="tf.size == 'tonari'"]
@jump target=*sijyou_tonari_text
[elsif exp="tf.siz e== 'up'"]
@jump target=sijyou_up_text
[else]
エラー。　お手数ですがゲームの再起動をお願いします。[p]
@jump target=sijyou_text
[endif]
;============================================================================

*sijyou_mayu
[eval exp="f.gra_sijyou_part='sijyou_mayu'"]
@jump target=sijyou_text

*sijyou_me
[eval exp="f.gra_sijyou_part='sijyou_me'"]
@jump target=sijyou_text

*sijyou_kuti
[eval exp="f.gra_sijyou_part='sijyou_kuti'"]
@jump target=sijyou_text

*sijyou_emo
[eval exp="f.gra_sijyou_part='sijyou_emo'"]
@jump target=sijyou_text


*sijyou_pose_01
[四条ベース着物]
[eval exp="f.gra_sijyou_pose='[四条ベース着物]'"]
@jump target=sijyou_text

*sijyou_pose_02
[四条ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条ベース羽織]'"]
@jump target=sijyou_text

*sijyou_pose_03
;[四条]
[eval exp="f.gra_sijyou_pose='[四条]'"]
@jump target=sijyou_text

*sijyou_pose_04
;[四条]
[eval exp="f.gra_sijyou_pose='[四条]'"]
@jump target=sijyou_text

*sijyou_face_01
[四条通常]
[eval exp="f.gra_sijyou_face='[四条通常]'"]
@jump target=sijyou_text

*sijyou_face_02
[四条伏目]
[eval exp="f.gra_sijyou_face='[四条伏目]'"]
@jump target=sijyou_text

*sijyou_face_03
[四条驚き]
[eval exp="f.gra_sijyou_face='[四条驚き]'"]
@jump target=sijyou_text

*sijyou_face_04
[四条困り]
[eval exp="f.gra_sijyou_face='[四条困り]'"]
@jump target=sijyou_text

*sijyou_face_05
[四条困り微笑み]
[eval exp="f.gra_sijyou_face='[四条困り微笑み]'"]
@jump target=sijyou_text

*sijyou_face_06
[四条照れ]
[eval exp="f.gra_sijyou_face='[四条照れ]'"]
@jump target=sijyou_text

*sijyou_face_07
[四条照れ目普通]
[eval exp="f.gra_sijyou_face='[四条照れ目普通]'"]
@jump target=sijyou_text

*sijyou_face_08
[四条微笑み]
[eval exp="f.gra_sijyou_face='[四条微笑み]'"]
@jump target=sijyou_text

*sijyou_face_09
[四条笑顔]
[eval exp="f.gra_sijyou_face='[四条笑顔]'"]
@jump target=sijyou_text

*sijyou_face_10
[四条笑顔大]
[eval exp="f.gra_sijyou_face='[四条笑顔大]'"]
@jump target=sijyou_text

*sijyou_face_11
[四条憂い]
[eval exp="f.gra_sijyou_face='[四条憂い]'"]
@jump target=sijyou_text

*sijyou_face_12
[四条真剣]
[eval exp="f.gra_sijyou_face='[四条真剣]'"]
@jump target=sijyou_text

*sijyou_face_21
[四条目パチ1回]
[eval exp="f.gra_sijyou_face='[四条目パチ1回](アニメーション)'"]
@jump target=sijyou_text

*sijyou_face_22
[四条伏目パチ1回]
[eval exp="f.gra_sijyou_face='[四条伏目パチ1回](アニメーション)'"]
@jump target=sijyou_text

*sijyou_face_23
[四条目閉じ]
[eval exp="f.gra_sijyou_face='[四条目閉じ](アニメーション)'"]
@jump target=sijyou_text

*sijyou_face_24
[四条目を開く]
[eval exp="f.gra_sijyou_face='[四条目を開く](アニメーション)'"]
@jump target=sijyou_text


*sijyou_mayu_01
[四条眉通常]
[eval exp="f.gra_sijyou_face='眉：[四条眉通常]'"]
@jump target=sijyou_text

*sijyou_mayu_02
[四条眉下げ]
[eval exp="f.gra_sijyou_face='眉：[四条眉下げ]'"]
@jump target=sijyou_text

*sijyou_mayu_03
[四条眉困り]
[eval exp="f.gra_sijyou_face='眉：[四条眉困り]'"]
@jump target=sijyou_text

*sijyou_mayu_04
[四条眉強気]
[eval exp="f.gra_sijyou_face='眉：[四条眉強気]'"]
@jump target=sijyou_text

*sijyou_mayu_05
[四条眉眉間に皺]
[eval exp="f.gra_sijyou_face='眉：[四条眉眉間に皺]'"]
@jump target=sijyou_text

*sijyou_mayu_06
[四条眉驚き]
[eval exp="f.gra_sijyou_face='眉：[四条眉驚き]'"]
@jump target=sijyou_text


*sijyou_me_01
[四条目通常]
[eval exp="f.gra_sijyou_face='目：[四条目通常]'"]
@jump target=sijyou_text

*sijyou_me_02
[四条目大]
[eval exp="f.gra_sijyou_face='目：[四条目大]'"]
@jump target=sijyou_text

*sijyou_me_03
[四条目にこ]
[eval exp="f.gra_sijyou_face='目：[四条目にこ]'"]
@jump target=sijyou_text

*sijyou_me_04
[四条目伏]
[eval exp="f.gra_sijyou_face='目：[四条目伏]'"]
@jump target=sijyou_text

*sijyou_me_05
[四条目閉じ]
[eval exp="f.gra_sijyou_face='目：[四条目閉じ]'"]
@jump target=sijyou_text

*sijyou_me_06
[四条横目]
[eval exp="f.gra_sijyou_face='目：[四条横目]'"]
@jump target=sijyou_text

*sijyou_me_07
[四条横伏目]
[eval exp="f.gra_sijyou_face='目：[四条横伏目]'"]
@jump target=sijyou_text

*sijyou_me_08
[四条目伏2]
[eval exp="f.gra_sijyou_face='目：[四条目伏2]'"]
@jump target=sijyou_text

*sijyou_me_09
[四条横伏目2]
[eval exp="f.gra_sijyou_face='目：[四条横伏目2]'"]
@jump target=sijyou_text

*sijyou_me_10
[四条右流し目]
[eval exp="f.gra_sijyou_face='目：[四条右流し目]'"]
@jump target=sijyou_text

*sijyou_me_11
[四条右伏目]
[eval exp="f.gra_sijyou_face='目：[四条右伏目]'"]
@jump target=sijyou_text

*sijyou_me_12
[四条右伏目2]
[eval exp="f.gra_sijyou_face='目：[四条右伏目2]'"]
@jump target=sijyou_text



*sijyou_kuti_01
[四条口通常]
[eval exp="f.gra_sijyou_face='口：[四条口通常]'"]
@jump target=sijyou_text

*sijyou_kuti_02
[四条口開]
[eval exp="f.gra_sijyou_face='口：[四条口開]'"]
@jump target=sijyou_text

*sijyou_kuti_03
[四条口微笑み]
[eval exp="f.gra_sijyou_face='口：[四条口通常]'"]
@jump target=sijyou_text

*sijyou_kuti_04
[四条口笑顔]
[eval exp="f.gra_sijyou_face='口：[四条口笑顔]'"]
@jump target=sijyou_text

*sijyou_kuti_05
[四条口笑顔大]
[eval exp="f.gra_sijyou_face='口：[四条口笑顔大]'"]
@jump target=sijyou_text

*sijyou_kuti_06
[四条口驚き]
[eval exp="f.gra_sijyou_face='口：[四条口驚き]'"]
@jump target=sijyou_text

*sijyou_kuti_07
[四条口叫び]
[eval exp="f.gra_sijyou_face='口：[四条口叫び]'"]
@jump target=sijyou_text

*sijyou_kuti_08
[四条口笑顔小]
[eval exp="f.gra_sijyou_face='口：[四条口笑顔小]'"]
@jump target=sijyou_text

*sijyou_kuti_09
[四条口ムッ]
[eval exp="f.gra_sijyou_face='口：[四条口ムッ]'"]
@jump target=sijyou_text


*sijyou_emo_01
[四条効果消]
[eval exp="f.gra_sijyou_face='効果：[四条効果消]'"]
@jump target=sijyou_text

*sijyou_emo_02
[四条頬染め]
[eval exp="f.gra_sijyou_face='効果：[四条頬染め]'"]
@jump target=sijyou_text

*sijyou_emo_03
[四条汗]
[eval exp="f.gra_sijyou_face='効果：[四条汗]'"]
@jump target=sijyou_text

*sijyou_emo_04
[四条ビンタ]
[eval exp="f.gra_sijyou_face='効果：[ビンタ]'"]
@jump target=sijyou_text

*sijyou_emo_05
[四条]
[eval exp="f.gra_sijyou_face='効果：[四条]'"]
@jump target=sijyou_text

*sijyou_emo_06
[四条]
[eval exp="f.gra_sijyou_face='効果：[四条]'"]
@jump target=sijyou_text

*sijyou_emo_07
[四条]
[eval exp="f.gra_sijyou_face='効果：[四条]'"]
@jump target=sijyou_text

;◆◆【サイズ：隣に並ぶ】
*sijyou_tonari_mayu
[eval exp="f.gra_sijyou_part='sijyou_tonari_mayu'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me
[eval exp="f.gra_sijyou_part='sijyou_tonari_me'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti
[eval exp="f.gra_sijyou_part='sijyou_tonari_kuti'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo
[eval exp="f.gra_sijyou_part='sijyou_tonari_emo'"]
@jump target=sijyou_tonari_text


*sijyou_tonari_pose_01
[四条_隣_ベース着物]
[eval exp="f.gra_sijyou_pose='[四条_隣_ベース着物]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_pose_02
[四条_隣_ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条_隣_ベース羽織]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_pose_03
;[四条_隣_]
[eval exp="f.gra_sijyou_pose='[四条_隣_]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_pose_04
;[四条_隣_]
[eval exp="f.gra_sijyou_pose='[四条_隣_]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_01
[四条_隣_通常]
[eval exp="f.gra_sijyou_face='[四条_隣_通常]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_02
[四条_隣_伏目]
[eval exp="f.gra_sijyou_face='[四条_隣_伏目]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_03
[四条_隣_驚き]
[eval exp="f.gra_sijyou_face='[四条_隣_驚き]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_04
[四条_隣_困り]
[eval exp="f.gra_sijyou_face='[四条_隣_困り]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_05
[四条_隣_困り微笑み]
[eval exp="f.gra_sijyou_face='[四条_隣_困り微笑み]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_06
[四条_隣_照れ]
[eval exp="f.gra_sijyou_face='[四条_隣_照れ]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_07
[四条_隣_照れ目普通]
[eval exp="f.gra_sijyou_face='[四条_隣_照れ目普通]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_08
[四条_隣_微笑み]
[eval exp="f.gra_sijyou_face='[四条_隣_微笑み]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_09
[四条_隣_笑顔]
[eval exp="f.gra_sijyou_face='[四条_隣_笑顔]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_10
[四条_隣_笑顔大]
[eval exp="f.gra_sijyou_face='[四条_隣_笑顔大]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_11
[四条_隣_憂い]
[eval exp="f.gra_sijyou_face='[四条_隣_憂い]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_12
[四条_隣_真剣]
[eval exp="f.gra_sijyou_face='[四条_隣_真剣]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_21
[四条_隣_目パチ1回]
[eval exp="f.gra_sijyou_face='[四条_隣_目パチ1回](アニメーション)'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_22
[四条_隣_伏目パチ1回]
[eval exp="f.gra_sijyou_face='[四条_隣_伏目パチ1回](アニメーション)'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_23
[四条_隣_目閉じ]
[eval exp="f.gra_sijyou_face='[四条_隣_目閉じ](アニメーション)'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_face_24
[四条_隣_目を開く]
[eval exp="f.gra_sijyou_face='[四条_隣_目を開く](アニメーション)'"]
@jump target=sijyou_tonari_text


*sijyou_tonari_mayu_01
[四条_隣_眉通常]
[eval exp="f.gra_sijyou_face='眉：[四条_隣_眉通常]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_mayu_02
[四条_隣_眉下げ]
[eval exp="f.gra_sijyou_face='眉：[四条_隣_眉下げ]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_mayu_03
[四条_隣_眉困り]
[eval exp="f.gra_sijyou_face='眉：[四条_隣_眉困り]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_mayu_04
[四条_隣_眉強気]
[eval exp="f.gra_sijyou_face='眉：[四条_隣_眉強気]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_mayu_05
[四条_隣_眉眉間に皺]
[eval exp="f.gra_sijyou_face='眉：[四条_隣_眉眉間に皺]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_mayu_06
[四条_隣_眉驚き]
[eval exp="f.gra_sijyou_face='眉：[四条_隣_眉驚き]'"]
@jump target=sijyou_tonari_text


*sijyou_tonari_me_01
[四条_隣_目通常]
[eval exp="f.gra_sijyou_face='目：[四条_隣_目通常]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_02
[四条_隣_目大]
[eval exp="f.gra_sijyou_face='目：[四条_隣_目大]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_03
[四条_隣_目にこ]
[eval exp="f.gra_sijyou_face='目：[四条_隣_目にこ]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_04
[四条_隣_目伏]
[eval exp="f.gra_sijyou_face='目：[四条_隣_目伏]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_05
[四条_隣_目閉じ]
[eval exp="f.gra_sijyou_face='目：[四条_隣_目閉じ]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_06
[四条_隣_横目]
[eval exp="f.gra_sijyou_face='目：[四条_隣_横目]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_07
[四条_隣_横伏目]
[eval exp="f.gra_sijyou_face='目：[四条_隣_横伏目]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_08
[四条_隣_目伏2]
[eval exp="f.gra_sijyou_face='目：[四条_隣_目伏2]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_09
[四条_隣_横伏目2]
[eval exp="f.gra_sijyou_face='目：[四条_隣_横伏目2]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_10
[四条_隣_右流し目]
[eval exp="f.gra_sijyou_face='目：[四条_隣_右流し目]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_11
[四条_隣_右伏目]
[eval exp="f.gra_sijyou_face='目：[四条_隣_右伏目]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_me_12
[四条_隣_右伏目2]
[eval exp="f.gra_sijyou_face='目：[四条_隣_右伏目2]'"]
@jump target=sijyou_tonari_text



*sijyou_tonari_kuti_01
[四条_隣_口通常]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口通常]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_02
[四条_隣_口開]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口開]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_03
[四条_隣_口微笑み]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口通常]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_04
[四条_隣_口笑顔]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口笑顔]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_05
[四条_隣_口笑顔大]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口笑顔大]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_06
[四条_隣_口驚き]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口驚き]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_07
[四条_隣_口叫び]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口叫び]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_08
[四条_隣_口笑顔小]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口笑顔小]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_kuti_09
[四条_隣_口ムッ]
[eval exp="f.gra_sijyou_face='口：[四条_隣_口ムッ]'"]
@jump target=sijyou_tonari_text


*sijyou_tonari_emo_01
[四条_隣_効果消]
[eval exp="f.gra_sijyou_face='効果：[四条_隣_効果消]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo_02
[四条_隣_頬染め]
[eval exp="f.gra_sijyou_face='効果：[四条_隣_頬染め]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo_03
[四条_隣_汗]
[eval exp="f.gra_sijyou_face='効果：[四条_隣_汗]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo_04
[四条_隣_ビンタ]
[eval exp="f.gra_sijyou_face='効果：[ビンタ]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo_05
[四条_隣_]
[eval exp="f.gra_sijyou_face='効果：[四条_隣_]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo_06
[四条_隣_]
[eval exp="f.gra_sijyou_face='効果：[四条_隣_]'"]
@jump target=sijyou_tonari_text

*sijyou_tonari_emo_07
[四条_隣_]
[eval exp="f.gra_sijyou_face='効果：[四条_隣_]'"]
@jump target=sijyou_tonari_text

;◆◆【サイズ：顔アップ】
*sijyou_up_mayu
[eval exp="f.gra_sijyou_part='sijyou_up_mayu'"]
@jump target=sijyou_up_text

*sijyou_up_me
[eval exp="f.gra_sijyou_part='sijyou_up_me'"]
@jump target=sijyou_up_text

*sijyou_up_kuti
[eval exp="f.gra_sijyou_part='sijyou_up_kuti'"]
@jump target=sijyou_up_text

*sijyou_up_emo
[eval exp="f.gra_sijyou_part='sijyou_up_emo'"]
@jump target=sijyou_up_text


*sijyou_up_pose_01
[四条_顔up_ベース着物]
[eval exp="f.gra_sijyou_pose='[四条_顔up_ベース着物]'"]
@jump target=sijyou_up_text

*sijyou_up_pose_02
[四条_顔up_ベース羽織]
[eval exp="f.gra_sijyou_pose='[四条_顔up_ベース羽織]'"]
@jump target=sijyou_up_text

*sijyou_up_pose_03
;[四条_顔up_]
[eval exp="f.gra_sijyou_pose='[四条_顔up_]'"]
@jump target=sijyou_up_text

*sijyou_up_pose_04
;[四条_顔up_]
[eval exp="f.gra_sijyou_pose='[四条_顔up_]'"]
@jump target=sijyou_up_text

*sijyou_up_face_01
[四条_顔up_通常]
[eval exp="f.gra_sijyou_face='[四条_顔up_通常]'"]
@jump target=sijyou_up_text

*sijyou_up_face_02
[四条_顔up_伏目]
[eval exp="f.gra_sijyou_face='[四条_顔up_伏目]'"]
@jump target=sijyou_up_text

*sijyou_up_face_03
[四条_顔up_驚き]
[eval exp="f.gra_sijyou_face='[四条_顔up_驚き]'"]
@jump target=sijyou_up_text

*sijyou_up_face_04
[四条_顔up_困り]
[eval exp="f.gra_sijyou_face='[四条_顔up_困り]'"]
@jump target=sijyou_up_text

*sijyou_up_face_05
[四条_顔up_困り微笑み]
[eval exp="f.gra_sijyou_face='[四条_顔up_困り微笑み]'"]
@jump target=sijyou_up_text

*sijyou_up_face_06
[四条_顔up_照れ]
[eval exp="f.gra_sijyou_face='[四条_顔up_照れ]'"]
@jump target=sijyou_up_text

*sijyou_up_face_07
[四条_顔up_照れ目普通]
[eval exp="f.gra_sijyou_face='[四条_顔up_照れ目普通]'"]
@jump target=sijyou_up_text

*sijyou_up_face_08
[四条_顔up_微笑み]
[eval exp="f.gra_sijyou_face='[四条_顔up_微笑み]'"]
@jump target=sijyou_up_text

*sijyou_up_face_09
[四条_顔up_笑顔]
[eval exp="f.gra_sijyou_face='[四条_顔up_笑顔]'"]
@jump target=sijyou_up_text

*sijyou_up_face_10
[四条_顔up_笑顔大]
[eval exp="f.gra_sijyou_face='[四条_顔up_笑顔大]'"]
@jump target=sijyou_up_text

*sijyou_up_face_11
[四条_顔up_憂い]
[eval exp="f.gra_sijyou_face='[四条_顔up_憂い]'"]
@jump target=sijyou_up_text

*sijyou_up_face_12
[四条_顔up_真剣]
[eval exp="f.gra_sijyou_face='[四条_顔up_真剣]'"]
@jump target=sijyou_up_text

*sijyou_up_face_21
[四条_顔up_目パチ1回]
[eval exp="f.gra_sijyou_face='[四条_顔up_目パチ1回](アニメーション)'"]
@jump target=sijyou_up_text

*sijyou_up_face_22
[四条_顔up_伏目パチ1回]
[eval exp="f.gra_sijyou_face='[四条_顔up_伏目パチ1回](アニメーション)'"]
@jump target=sijyou_up_text

*sijyou_up_face_23
[四条_顔up_目閉じ]
[eval exp="f.gra_sijyou_face='[四条_顔up_目閉じ](アニメーション)'"]
@jump target=sijyou_up_text

*sijyou_up_face_24
[四条_顔up_目を開く]
[eval exp="f.gra_sijyou_face='[四条_顔up_目を開く](アニメーション)'"]
@jump target=sijyou_up_text


*sijyou_up_mayu_01
[四条_顔up_眉通常]
[eval exp="f.gra_sijyou_face='眉：[四条_顔up_眉通常]'"]
@jump target=sijyou_up_text

*sijyou_up_mayu_02
[四条_顔up_眉下げ]
[eval exp="f.gra_sijyou_face='眉：[四条_顔up_眉下げ]'"]
@jump target=sijyou_up_text

*sijyou_up_mayu_03
[四条_顔up_眉困り]
[eval exp="f.gra_sijyou_face='眉：[四条_顔up_眉困り]'"]
@jump target=sijyou_up_text

*sijyou_up_mayu_04
[四条_顔up_眉強気]
[eval exp="f.gra_sijyou_face='眉：[四条_顔up_眉強気]'"]
@jump target=sijyou_up_text

*sijyou_up_mayu_05
[四条_顔up_眉眉間に皺]
[eval exp="f.gra_sijyou_face='眉：[四条_顔up_眉眉間に皺]'"]
@jump target=sijyou_up_text

*sijyou_up_mayu_06
[四条_顔up_眉驚き]
[eval exp="f.gra_sijyou_face='眉：[四条_顔up_眉驚き]'"]
@jump target=sijyou_up_text


*sijyou_up_me_01
[四条_顔up_目通常]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_目通常]'"]
@jump target=sijyou_up_text

*sijyou_up_me_02
[四条_顔up_目大]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_目大]'"]
@jump target=sijyou_up_text

*sijyou_up_me_03
[四条_顔up_目にこ]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_目にこ]'"]
@jump target=sijyou_up_text

*sijyou_up_me_04
[四条_顔up_目伏]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_目伏]'"]
@jump target=sijyou_up_text

*sijyou_up_me_05
[四条_顔up_目閉じ]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_目閉じ]'"]
@jump target=sijyou_up_text

*sijyou_up_me_06
[四条_顔up_横目]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_横目]'"]
@jump target=sijyou_up_text

*sijyou_up_me_07
[四条_顔up_横伏目]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_横伏目]'"]
@jump target=sijyou_up_text

*sijyou_up_me_08
[四条_顔up_目伏2]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_目伏2]'"]
@jump target=sijyou_up_text

*sijyou_up_me_09
[四条_顔up_横伏目2]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_横伏目2]'"]
@jump target=sijyou_up_text

*sijyou_up_me_10
[四条_顔up_右流し目]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_右流し目]'"]
@jump target=sijyou_up_text

*sijyou_up_me_11
[四条_顔up_右伏目]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_右伏目]'"]
@jump target=sijyou_up_text

*sijyou_up_me_12
[四条_顔up_右伏目2]
[eval exp="f.gra_sijyou_face='目：[四条_顔up_右伏目2]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_01
[四条_顔up_口通常]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口通常]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_02
[四条_顔up_口開]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口開]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_03
[四条_顔up_口微笑み]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口通常]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_04
[四条_顔up_口笑顔]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口笑顔]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_05
[四条_顔up_口笑顔大]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口笑顔大]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_06
[四条_顔up_口驚き]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口驚き]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_07
[四条_顔up_口叫び]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口叫び]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_08
[四条_顔up_口笑顔小]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口笑顔小]'"]
@jump target=sijyou_up_text

*sijyou_up_kuti_09
[四条_顔up_口ムッ]
[eval exp="f.gra_sijyou_face='口：[四条_顔up_口ムッ]'"]
@jump target=sijyou_up_text


*sijyou_up_emo_01
[四条_顔up_効果消]
[eval exp="f.gra_sijyou_face='効果：[四条_顔up_効果消]'"]
@jump target=sijyou_up_text

*sijyou_up_emo_02
[四条_顔up_頬染め]
[eval exp="f.gra_sijyou_face='効果：[四条_顔up_頬染め]'"]
@jump target=sijyou_up_text

*sijyou_up_emo_03
[四条_顔up_汗]
[eval exp="f.gra_sijyou_face='効果：[四条_顔up_汗]'"]
@jump target=sijyou_up_text

*sijyou_up_emo_04
[四条_顔up_ビンタ]
[eval exp="f.gra_sijyou_face='効果：[ビンタ]'"]
@jump target=sijyou_up_text

*sijyou_up_emo_05
[四条_顔up_]
[eval exp="f.gra_sijyou_face='効果：[四条_顔up_]'"]
@jump target=sijyou_up_text

*sijyou_up_emo_06
[四条_顔up_]
[eval exp="f.gra_sijyou_face='効果：[四条_顔up_]'"]
@jump target=sijyou_up_text

*sijyou_up_emo_07
[四条_顔up_]
[eval exp="f.gra_sijyou_face='効果：[四条_顔up_]'"]
@jump target=sijyou_up_text


*page1
["バラ"]
@jump target=page_end
*page2
["チャリティー会場１"]
@jump target=page_end
*page3
["チャリティー会場２"]
@jump target=page_end
*page4
["チャリティー会場３"]
@jump target=page_end
*page5
["チャリティー会場４"]
@jump target=page_end
*page6
["チャリティー会場５"]
@jump target=page_end
*page7
["チャリティー会場６"]
@jump target=page_end
*page8
["チャリティー会場６＿１"]
@jump target=page_end
*page9
["チャリティー会場７"]
*page10
["チャリティー会場８"]
@jump target=page_end
*page11
["藤枝演奏１"]
@jump target=page_end
*page12
["藤枝演奏２"]
@jump target=page_end
*page13
["藤枝演奏３"]
@jump target=page_end
*page14
["藤枝演奏３＿１"]
@jump target=page_end
*page15
["img効果キラキラ"]
@jump target=page_end
*page16
["葛城森林公園"]
@jump target=page_end
*page17
["藤枝ムーンレイク"]
@jump target=page_end
*page18
["四条宴会"]
@jump target=page_end
*page19
["四条エピローグ和室"]
@jump target=page_end
*page20
["四条玄関"]
@jump target=page_end
*page21
["四条玄関ホール"]
@jump target=page_end
*page22
["四条華衣部屋"]
@jump target=page_end
*page23
["四条金屏風"]
@jump target=page_end
*page24
["四条金屏風２"]
@jump target=page_end
*page25
["四条香水"]
@jump target=page_end
*page26
["四条＿香水２"]
@jump target=page_end
*page27
["四条ネリネ庭"]
@jump target=page_end
*page28
[四条廊下"]
@jump target=page_end
*page29
[四条展覧会"]
@jump target=page_end
*page30
["四条家"]
@jump target=page_end
*page31
["ししおどし"]
@jump target=page_end
*page32
["四条＿波ヶ浦"]
@jump target=page_end
*page33
["四条＿波ヶ裏２"]
*page34
["四条＿病院"]
@jump target=page_end
*page35
["四条＿銀座"]
@jump target=page_end
*page36
["葛城宮＿御所"]
@jump target=page_end
*page37
["葛城宮＿御所＿中"]
@jump target=page_end
*page38
["葛城宮＿野天"]
@jump target=page_end
*page39
["藤枝＿ミルクホール＿１"]
@jump target=page_end
*page40
[藤枝＿ミルクホール店内"]
@jump target=page_end
*page41
["藤枝＿ミルクホール"]
@jump target=page_end
*page42
["藤枝＿ミルクホール２"]
@jump target=page_end
*page43
["藤枝＿ミルクホール３"]
@jump target=page_end
*page44
["藤枝＿ミルクホール４"]
@jump target=page_end
*page45
["藤枝＿ミルクホール玄関２"]
@jump target=page_end
*page46
["藤枝＿ミルクホール玄関１"]
@jump target=page_end
*page47
["財前＿会議室"]
@jump target=page_end
*page48
["四条＿ネリネイメージ"]
@jump target=page_end
*page49
["四条＿池"]
@jump target=page_end
*page50
["四条＿池＿ロング"]
@jump target=page_end
*page51
["四条＿バラ噴水"]
@jump target=page_end
*page52
["四条＿温室"]
@jump target=page_end
*page53
["四条＿バラ茂み"]
@jump target=page_end
*page54
["四条＿土蔵"]
@jump target=page_end
*page55
["四条＿土蔵２"]
@jump target=page_end
*page56
["四条＿教室１"]
@jump target=page_end
*page57
["四条＿教室夕"]
@jump target=page_end
*page58
["四条＿教室夕２"]
@jump target=page_end
*pagee59
["四条_教室全体"]
@jump target=page_end
*page60
["四条＿教室廊下"]
@jump target=page_end
*page61
["四条＿洋館バラ"]
@jump target=page_end
*page62
["財前＿バラ"]
@jump target=page_end
*page63
["四条＿婚約者実家２"]
@jump target=page_end
*page64
["四条＿花園"]
@jump target=page_end
*page65
["財前＿居間"]
@jump target=page_end
*page66
["財前＿パーティ会場"]
@jump target=page_end
*page67
["財前＿パーティ会場２"]
@jump target=page_end
*page68
["財前＿パーティ会場控室"]
@jump target=page_end
*page69
["財前＿パーティ会場庭"]
@jump target=page_end
*page70
["財前＿パーティ会場＿応接室"]
@jump target=page_end
*page71
["財前＿洋館"]
@jump target=page_end
*page72
["財前＿洋館モノローグ"]
@jump target=page_end
*page73
["財前＿雪柳"]
@jump target=page_end
*page74
["バラ園"]
@jump target=page_end
*page75
["葛城宮＿謁見室"]
@jump target=page_end
*page76
["藤枝＿演奏会場"]
*page77
["葛城宮＿演説"]
*page78
["葛城宮＿放送局"]
*page79
["公園"]
@jump target=page_end
*page80
["葛城宮＿仲人庭"]
@jump target=page_end
*page81
["葛城宮＿仲人道"]
@jump target=page_end
*page82
["葛城宮＿仲人道２"]
@jump target=page_end
*page83
["葛城宮＿仲人庭＿夕"]
@jump target=page_end
*page84
["藤枝＿音楽練習室"]
@jump target=page_end
*page85
["葛城宮＿執務室"]
@jump target=page_end
*page86
["洋館内装"]
@jump target=page_end
*page87
["ビワ＿花"]
@jump target=page_end
*page88
["ビワ＿木"]
@jump target=page_end
*page89
["青空"]
@jump target=page_end
*page90
["萩の花"]
@jump target=page_end
*page91
["四条＿庭園＿椅子"]
@jump target=page_end
*page92
["四条＿庭園＿椅子dark"]
@jump target=page_end
*page93
["玄関"]
@jump target=page_end
*page94
["四条＿歌舞伎"]
@jump target=page_end
*page95
["四条＿歌舞伎＿外"]
@jump target=page_end
*page96
["紅葉"]
@jump target=page_end
*page97
["紅葉＿階段"]
@jump target=page_end
*page98
["紅葉＿鬱葱"]
@jump target=page_end
*page99
["黒田家"]
@jump target=page_end
*page100
["町"]
@jump target=page_end
*page101
["img効果＿町雪"]
@jump target=page_end
*page102
["img効果削除"]
@jump target=page_end
*page103
["門"]
@jump target=page_end
*page104
["町＿橋"]
@jump target=page_end
*page105
["町＿思い出"]
@jump target=page_end
*page106
["お稽古部屋"]
@jump target=page_end
*page107
["お稽古部屋＿暗転"]
@jump target=page_end
*page108
["室内音楽１"]
@jump target=page_end
*page109
["室内音楽２"]
@jump target=page_end
*page110
["四条_omoide"]
@jump target=page_end
*page111
["料亭"]
@jump target=page_end
*page112
["桜"]
@jump target=page_end
*page113
["森林公園＿門"]
@jump target=page_end
*page114
["森林公園＿冬"]
@jump target=page_end
*page115
["森林公園＿冬＿夕"]
@jump target=page_end
*page116
["森林公園＿夕"]
@jump target=page_end
*page117
["四条＿和雑貨"]
@jump target=page_end
*page118
["石畳み"]
@jump target=page_end
*page119
@jump target=page_end
["石畳み＿夜"]
@jump target=page_end
*page120
["石畳み＿夕"]
@jump target=page_end
*page121
["bg_tirasi"]
@jump target=page_end
*page122
["森林＿冬"]
@jump target=page_end
*page123
["森林＿冬＿夕"]
@jump target=page_end
*page124
["夕焼け"]
@jump target=page_end
*page125
["藤枝_kaede_sita2"]
@jump target=page_end
*page126
["藤枝_kyakuseki"]
@jump target=page_end
*page127
["藤枝_tanpopo"]
@jump target=page_end
*page128
["藤枝_tanpopo_kouen"]
@jump target=page_end
*page129
["主人公庭＿０"]
@jump target=page_end
*page130
["主人公庭＿明"]
@jump target=page_end
*page131
["主人公庭＿春"]
@jump target=page_end
*page132
["主人公庭＿夜"]
@jump target=page_end
*page133
["主人公庭＿雪"]
@jump target=page_end
*page134
["bg_web_blue"]
@jump target=page_end
*page135
["bg_web_blue2"]
@jump target=page_end
*page136
[chara_mod name="bg" storage="toumei.gif"]
[eval exp="tf.page=1"]
@jump target=page_end



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
[eval exp="f.kaogura = 'on'"]
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
@clearstack
[freeimage layer = 24]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
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
*messe_on
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
[glink target="title" text="タイトルへ" graphic="select_waku_x500.png" size=15 width="130" x=800 y=320 color=white]
[return]
