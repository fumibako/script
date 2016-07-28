;layer1：背景
;layer2：空
;==============================
; 立ち絵マクロ設定
;【主人公グラL】
;layer3：base（のっぺらぼう）
;layer4:眉
;layer5:目
;layer6:口
;layer7:エモーション（頬染め、汗）
;==============================
;layer8：他キャラbase（のっぺらぼう）
;layer9:他キャラ口
;layer10:他キャラ目
;layer11:他キャラ眉
;layer12:他キャラエモーション（汗）
;layer13:空
;==============================
;layer14:メッセージレイヤ
;==============================
; 立ち絵マクロ設定
;【主人公顔グラ】
;layer15：base（のっぺらぼう）
;layer16:眉
;layer17:目
;layer18:口
;layer19:エモーション（頬染め、汗）
;layer20:手
;==============================
;layer21:システム表示：月
;layer22:システム表示：週
;layer23:システム表示：フキダシ枠
;layer24:システム表示：主人公パラメータ画像&数値テキスト
;layer25:システム表示：手紙各場面画像
;layer26:システム表示：お稽古アニメ、攻略対象情報（背景)
;layer27:システム表示：攻略対象情報（数値テキスト）
;layer28:システム表示：攻略対象情報（手紙属性）
;layer29:システム表示：手紙（お稽古パート）
;layer30:システム表示：


*start
;立ち絵表示[黒田通常]
[macro name="黒田通常"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田伏目]
[macro name="黒田伏目"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田驚]
[macro name="黒田驚"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田困り]
[macro name="黒田困り"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田困りほほえみ]
[macro name="黒田困りほほえみ"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田ほほえみ]
[macro name="黒田ほほえみ"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田笑顔]
[macro name="黒田笑顔"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田真剣]
[macro name="黒田真剣"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田しょんぼり]
[macro name="黒田しょんぼり"]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu.png" time=0]
[wait time=10]
[endmacro]


;立ち絵表示[黒田目パチ1回]
[macro name="黒田目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[黒田目パチ1回L]
[macro name="黒田目パチ1回L"]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji_y1100.png" time=0]
[wait time=100]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1_y1100.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田伏目パチ1回]
[macro name="黒田伏目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[黒田閉伏目パチ1回]
[macro name="黒田閉伏目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[endmacro]

;立ち絵表示[黒田閉目パチ1回]
[macro name="黒田閉目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/me_toji.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu.png" time=0]
[endmacro]

;立ち絵表示[黒田退場]
[macro name="黒田退場"]
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
[endmacro]


[return]
