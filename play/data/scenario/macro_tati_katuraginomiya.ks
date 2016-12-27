﻿﻿;==============================
;layer8：他キャラbase（のっぺらぼう）
;layer9:他キャラ口
;layer10:他キャラ目
;layer11:他キャラ眉
;layer12:他キャラエモーション（汗）
;layer13:空(予備
;==============================

*start
;◆◆立ち絵画像サイズ：(x)1202x(y)2000を変数に入力。最大使用サイズ確定後(全キャラの立ち絵が揃ってから調整予定)はそのサイズで立ち絵画像再出力予定。その際は↓の2箇所を新サイズに合わせて変更すれば反映される…といいな
[eval exp="f.katuraginomiya_moto_width=2100"]
[eval exp="f.katuraginomiya_moto_height=2650"]
;◆立ち絵【通常サイズ】のwidth、height、left、top設定（現状は黒田とサイズ合わせをしています。後日全キャラの立ち絵が揃ってから再調整予定です
[eval exp="f.katuraginomiya_tuujou_width=f.katuraginomiya_moto_width*0.3"]
[eval exp="f.katuraginomiya_tuujou_height=f.katuraginomiya_moto_height*0.3"]
[eval exp="f.katuraginomiya_tuujou_left=170"]
[eval exp="f.katuraginomiya_tuujou_top=-10"]
;◆立ち絵【サイズ：隣に並ぶ】のwidth、height、left、top設定（現状は作成いただいたサイズマクロでの「アップ」時の倍率に合わせてあります。ご希望の倍率があれば調整してください。後日全キャラの立ち絵が揃ってから再調整予定のため、ご希望通りにいかない可能性もありますがご了承ください
[eval exp="f.katuraginomiya_tonari_width=f.katuraginomiya_moto_width*0.53"]
[eval exp="f.katuraginomiya_tonari_height=f.katuraginomiya_moto_height*0.53"]
[eval exp="f.katuraginomiya_tonari_left=206"]
[eval exp="f.katuraginomiya_tonari_top=-10"]

;◆立ち絵【サイズ：顔アップ】のwidth、height、left、top設定（ご希望の倍率があれば調整してください。後日全キャラの立ち絵が揃ってから再調整予定のため、ご希望通りにいかない可能性もありますがご了承ください
[eval exp="f.katuraginomiya_up_width=f.katuraginomiya_moto_width*0.9"]
[eval exp="f.katuraginomiya_up_height=f.katuraginomiya_moto_height*0.9"]
[eval exp="f.katuraginomiya_up_left=30"]
[eval exp="f.katuraginomiya_up_top=-50"]


;画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="katuraginomiya_base" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=8 name="katuraginomiya_base" time=0]
[wait time=10]
[chara_new name="katuraginomiya_kuti" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=9 name="katuraginomiya_kuti" time=0]
[wait time=10]
[chara_new name="katuraginomiya_me" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=10 name="katuraginomiya_me" time=0]
[wait time=10]
[chara_new name="katuraginomiya_mayu" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=11 name="katuraginomiya_mayu" time=0]
[wait time=10]
[chara_new name="katuraginomiya_emo" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=12 name="katuraginomiya_emo" time=0]
[wait time=10]


;立ち絵表示[葛城宮ベース軍服]
[macro name="葛城宮ベース軍服"]
[chara_mod name="katuraginomiya_base" storage="katuraginomiya/base_gunpuku.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[葛城宮ベース私服]
[macro name="葛城宮ベース私服"]
[chara_mod name="katuraginomiya_base" storage="katuraginomiya/base_sifuku.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[葛城宮通常]
[macro name="葛城宮通常"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮伏目]
[macro name="葛城宮伏目"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮驚き]
[macro name="葛城宮驚き"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮困り]
[macro name="葛城宮困り"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮困り微笑み]
[macro name="葛城宮困り微笑み"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_niko.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮微笑み照れ]
[macro name="葛城宮微笑み照れ"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_emo" storage="katuraginomiya/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮目伏せ照れ]
[macro name="葛城宮目伏せ照れ"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_emo" storage="katuraginomiya/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮微笑み]
[macro name="葛城宮微笑み"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮笑顔大]
[macro name="葛城宮笑顔大"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_niko.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮笑顔]
[macro name="葛城宮笑顔"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_niko.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮真剣]
[macro name="葛城宮真剣"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮憂い]
[macro name="葛城宮憂い"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮ため息]
[macro name="葛城宮ため息"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_yokofusi1.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮怒り]
[macro name="葛城宮怒り"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_okori.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_okori.png" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[葛城宮眉通常]
[macro name="葛城宮眉通常"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮眉通常下]
[macro name="葛城宮眉通常下"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_futuu_sita.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮眉下げ]
[macro name="葛城宮眉下げ"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_sage.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮眉驚き]
[macro name="葛城宮眉驚き"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮眉困り]
[macro name="葛城宮眉困り"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_komari.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮眉強気]
[macro name="葛城宮眉強気"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_tuyoki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮眉怒り]
[macro name="葛城宮眉怒り"]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_okori.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口通常]
[macro name="葛城宮口通常"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口微笑み]
[macro name="葛城宮口微笑み"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口笑顔]
[macro name="葛城宮口笑顔"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_warau_s.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口笑顔大]
[macro name="葛城宮口笑顔大"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口開]
[macro name="葛城宮口開"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口大開]
[macro name="葛城宮口大開"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_ooake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口驚き]
[macro name="葛城宮口驚き"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_odoroki.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口ムッ]
[macro name="葛城宮口ムッ"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_mu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮口怒り]
[macro name="葛城宮口怒り"]
[chara_mod name="katuraginomiya_kuti" storage="katuraginomiya/kuti_okori.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[葛城宮目通常]
[macro name="葛城宮目通常"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮目大]
[macro name="葛城宮目大"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮目にこ]
[macro name="葛城宮目にこ"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_niko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮目伏]
[macro name="葛城宮目伏"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮目閉じ]
[macro name="葛城宮目閉じ"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮横目]
[macro name="葛城宮横目"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_yoko.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮横伏目]
[macro name="葛城宮横伏目"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_yokofusi1.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮汗]
[macro name="葛城宮汗"]
[chara_mod name="katuraginomiya_emo" storage="katuraginomiya/emo_ase.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮頬染め]
[macro name="葛城宮頬染め"]
[chara_mod name="katuraginomiya_emo" storage="katuraginomiya/emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮効果消]
[macro name="葛城宮効果消"]
[chara_mod name="katuraginomiya_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]



;立ち絵表示[葛城宮目パチ1回]
[macro name="葛城宮目パチ1回"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=70]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[葛城宮伏目パチ1回]
[macro name="葛城宮伏目パチ1回"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=70]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[葛城宮閉伏目パチ1回]
[macro name="葛城宮閉伏目パチ1回"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[葛城宮目を開く]
[macro name="葛城宮目を開く"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[葛城宮目を閉じる]
[macro name="葛城宮目を閉じる"]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[葛城宮退場]
[macro name="葛城宮退場"]
[chara_mod name="katuraginomiya_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="katuraginomiya_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]


[return]
