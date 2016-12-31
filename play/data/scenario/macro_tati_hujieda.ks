﻿﻿;==============================
;layer8：他キャラbase（のっぺらぼう）
;layer9:他キャラ口
;layer10:他キャラ目
;layer11:他キャラ眉
;layer12:他キャラエモーション（汗）
;layer13:空(予備
;==============================

*start
;◆◆立ち絵画像サイズ：(x)1800x(y)1200を変数に入力。最大使用サイズ確定後(全キャラの立ち絵が揃ってから調整予定)はそのサイズで立ち絵画像再出力予定。その際は↓の2箇所と通常サイズ倍率を新サイズに合わせて変更すれば他に反映される予定
[eval exp="f.hujieda_moto_width=1800"]
[eval exp="f.hujieda_moto_height=1200"]
;◆立ち絵【通常サイズ】のwidth、height、left、top設定（他キャラに合わせて軽く調整済み。立ち絵調整・再出力後に再調整予定です
[eval exp="f.hujieda_tuujou_width=f.hujieda_moto_width*0.54"]
[eval exp="f.hujieda_tuujou_height=f.hujieda_moto_height*0.54"]
[eval exp="f.hujieda_tuujou_left=10"]
[eval exp="f.hujieda_tuujou_top=-8"]
;◆立ち絵【サイズ：隣に並ぶ】のwidth、height、left、top設定（軽く調整済み。立ち絵調整・再出力後に再調整予定です
[eval exp="f.hujieda_tonari_width=f.hujieda_tuujou_width*1.2"]
[eval exp="f.hujieda_tonari_height=f.hujieda_tuujou_height*1.2"]
[eval exp="f.hujieda_tonari_left=-95"]
[eval exp="f.hujieda_tonari_top=-45"]
;◆立ち絵【サイズ：顔アップ】のwidth、height、left、top設定（軽く調整済み。立ち絵調整・再出力後に再調整予定です
[eval exp="f.hujieda_up_width=f.hujieda_tuujou_width*1.7"]
[eval exp="f.hujieda_up_height=f.hujieda_tuujou_height*1.7"]
[eval exp="f.hujieda_up_left=-330"]
[eval exp="f.hujieda_up_top=-120"]

;画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="hujieda_base" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=8 name="hujieda_base" time=0]
[wait time=10]
[chara_new name="hujieda_kuti" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=9 name="hujieda_kuti" time=0]
[wait time=10]
[chara_new name="hujieda_me" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=10 name="hujieda_me" time=0]
[wait time=10]
[chara_new name="hujieda_mayu" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=11 name="hujieda_mayu" time=0]
[wait time=10]
[chara_new name="hujieda_emo" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=12 name="hujieda_emo" time=0]
[wait time=10]

;◆[藤枝サイズ隣に並ぶ storage="bg/bg_machi.jpg"]　デフォルトは町画像
[macro name="藤枝サイズ隣に並ぶ"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="hujieda_base" storage="toumei.gif" width=&f.hujieda_tonari_width height=&f.hujieda_tonari_height]
[chara_show left=&f.hujieda_tonari_left top=&f.hujieda_tonari_top layer=8 name="hujieda_base" time=0]
[wait time=10]
[chara_new name="hujieda_kuti" storage="toumei.gif" width=&f.hujieda_tonari_width height=&f.hujieda_tonari_height]
[chara_show left=&f.hujieda_tonari_left top=&f.hujieda_tonari_top layer=9 name="hujieda_kuti" time=0]
[wait time=10]
[chara_new name="hujieda_me" storage="toumei.gif" width=&f.hujieda_tonari_width height=&f.hujieda_tonari_height]
[chara_show left=&f.hujieda_tonari_left top=&f.hujieda_tonari_top layer=10 name="hujieda_me" time=0]
[wait time=10]
[chara_new name="hujieda_mayu" storage="toumei.gif" width=&f.hujieda_tonari_width height=&f.hujieda_tonari_height]
[chara_show left=&f.hujieda_tonari_left top=&f.hujieda_tonari_top layer=11 name="hujieda_mayu" time=0]
[wait time=10]
[chara_new name="hujieda_emo" storage="toumei.gif" width=&f.hujieda_tonari_width height=&f.hujieda_tonari_height]
[chara_show left=&f.hujieda_tonari_left top=&f.hujieda_tonari_top layer=12 name="hujieda_emo" time=0]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[藤枝サイズ顔アップ storage="bg/bg_machi.jpg"]　デフォルトは町画像
[macro name="藤枝サイズ顔アップ"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="hujieda_base" storage="toumei.gif" width=&f.hujieda_up_width height=&f.hujieda_up_height]
[chara_show left=&f.hujieda_up_left top=&f.hujieda_up_top layer=8 name="hujieda_base" time=0]
[wait time=10]
[chara_new name="hujieda_kuti" storage="toumei.gif" width=&f.hujieda_up_width height=&f.hujieda_up_height]
[chara_show left=&f.hujieda_up_left top=&f.hujieda_up_top layer=9 name="hujieda_kuti" time=0]
[wait time=10]
[chara_new name="hujieda_me" storage="toumei.gif" width=&f.hujieda_up_width height=&f.hujieda_up_height]
[chara_show left=&f.hujieda_up_left top=&f.hujieda_up_top layer=10 name="hujieda_me" time=0]
[wait time=10]
[chara_new name="hujieda_mayu" storage="toumei.gif" width=&f.hujieda_up_width height=&f.hujieda_up_height]
[chara_show left=&f.hujieda_up_left top=&f.hujieda_up_top layer=11 name="hujieda_mayu" time=0]
[wait time=10]
[chara_new name="hujieda_emo" storage="toumei.gif" width=&f.hujieda_up_width height=&f.hujieda_up_height]
[chara_show left=&f.hujieda_up_left top=&f.hujieda_up_top layer=12 name="hujieda_emo" time=0]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]

[endmacro]


;◆[藤枝サイズ通常 storage="bg/bg_machi.jpg"]　デフォルトは町画像
[macro name="藤枝サイズ通常"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="hujieda_base" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=8 name="hujieda_base" time=0]
[wait time=10]
[chara_new name="hujieda_kuti" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=9 name="hujieda_kuti" time=0]
[wait time=10]
[chara_new name="hujieda_me" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=10 name="hujieda_me" time=0]
[wait time=10]
[chara_new name="hujieda_mayu" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=11 name="hujieda_mayu" time=0]
[wait time=10]
[chara_new name="hujieda_emo" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=12 name="hujieda_emo" time=0]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]

[endmacro]


;立ち絵表示[藤枝ベース郵便屋]
[macro name="藤枝ベース郵便屋"]
[chara_mod name="hujieda_base" storage="hujieda/base_yuubin.png" time=0]
[wait time=10]
[eval exp="tf.fujieda_base='藤枝ベース郵便屋'"]
[endmacro]

;立ち絵表示[藤枝ベース郵便屋_手紙無し]
[macro name="藤枝ベース郵便屋_手紙無し"]
[chara_mod name="hujieda_base" storage="hujieda/base_yuubin_tegaminasi.png" time=0]
[wait time=10]
[eval exp="tf.fujieda_base='藤枝ベース郵便屋_手紙無し'"]
[endmacro]

;立ち絵表示[藤枝ベース私服]
[macro name="藤枝ベース私服"]
[chara_mod name="hujieda_base" storage="hujieda/base_sifuku.png" time=0]
[wait time=10]
[eval exp="tf.fujieda_base='藤枝ベース私服'"]
[endmacro]

;立ち絵表示[藤枝ベース私服_楽譜無し]
[macro name="藤枝ベース私服_楽譜無し"]
[chara_mod name="hujieda_base" storage="hujieda/base_sifuku_gakufunasi.png" time=0]
[wait time=10]
[eval exp="tf.fujieda_base='藤枝ベース私服_楽譜無し'"]
[endmacro]


;立ち絵表示[藤枝通常]
[macro name="藤枝通常"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_emo" storage="toumei.gif" time=0]
[wait time=10]
[eval exp="tf.fujieda_face='藤枝通常'"]
[endmacro]

;立ち絵表示[藤枝伏目]
[macro name="藤枝伏目"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝驚き]
[macro name="藤枝驚き"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝困り]
[macro name="藤枝困り"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝困り微笑み]
[macro name="藤枝困り微笑み"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝微笑み照れ]
[macro name="藤枝微笑み照れ"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="hujieda_emo" storage="hujieda/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝目伏せ照れ]
[macro name="藤枝目伏せ照れ"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="hujieda_emo" storage="hujieda/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝微笑み]
[macro name="藤枝微笑み"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝笑顔大]
[macro name="藤枝笑顔大"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝笑顔]
[macro name="藤枝笑顔"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝真剣]
[macro name="藤枝真剣"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝憂い]
[macro name="藤枝憂い"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[藤枝眉通常]
[macro name="藤枝眉通常"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉通常下]
[macro name="藤枝眉通常下"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_futuu_sita.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉下げ]
[macro name="藤枝眉下げ"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉驚き]
[macro name="藤枝眉驚き"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉困り]
[macro name="藤枝眉困り"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_komari.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉強気]
[macro name="藤枝眉強気"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_tuyoki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉平行]
[macro name="藤枝眉平行"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_heikou.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝眉下げ下]
[macro name="藤枝眉下げ下"]
[chara_mod name="hujieda_mayu" storage="hujieda/mayu_sage_sita.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口通常]
[macro name="藤枝口通常"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口微笑み]
[macro name="藤枝口微笑み"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口笑顔]
[macro name="藤枝口笑顔"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口笑顔大]
[macro name="藤枝口笑顔大"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口開]
[macro name="藤枝口開"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口大開]
[macro name="藤枝口大開"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_ooake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口驚き]
[macro name="藤枝口驚き"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝口ムッ]
[macro name="藤枝口ムッ"]
[chara_mod name="hujieda_kuti" storage="hujieda/kuti_mu.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[藤枝目通常]
[macro name="藤枝目通常"]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝目大]
[macro name="藤枝目大"]
[chara_mod name="hujieda_me" storage="hujieda/me_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝目にこ]
[macro name="藤枝目にこ"]
[chara_mod name="hujieda_me" storage="hujieda/me_niko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝目伏]
[macro name="藤枝目伏"]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝目閉じ]
[macro name="藤枝目閉じ"]
[chara_mod name="hujieda_me" storage="hujieda/me_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝横目]
[macro name="藤枝横目"]
[chara_mod name="hujieda_me" storage="hujieda/me_yoko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝横伏目]
[macro name="藤枝横伏目"]
[chara_mod name="hujieda_me" storage="hujieda/me_yokofusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝汗]
[macro name="藤枝汗"]
[chara_mod name="hujieda_emo" storage="hujieda/emo_ase.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝頬染め]
[macro name="藤枝頬染め"]
[chara_mod name="hujieda_emo" storage="hujieda/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[藤枝効果消]
[macro name="藤枝効果消"]
[chara_mod name="hujieda_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[藤枝目パチ1回]
[macro name="藤枝目パチ1回"]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_toji.png" time=0]
[wait time=70]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[藤枝伏目パチ1回]
[macro name="藤枝伏目パチ1回"]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_toji.png" time=0]
[wait time=70]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[藤枝閉伏目パチ1回]
[macro name="藤枝閉伏目パチ1回"]
[chara_mod name="hujieda_me" storage="hujieda/me_toji.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[藤枝目を開く]
[macro name="藤枝目を開く"]
[chara_mod name="hujieda_me" storage="hujieda/me_toji.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="hujieda_me" storage="hujieda/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[藤枝退場]
[macro name="藤枝退場"]
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
[endmacro]

;[藤枝サイズ通常]
[return]
