;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
;=============================================
;お稽古パート：休憩ボタンを押した時の処理
;=============================================
*start
;◆休憩→次週へ進む
*okeiko_qk
[freeimage layer = 26]
[freeimage layer = 27]
[chara_mod name="A_mayu" storage="girl/L/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="A_me" storage="girl/L/me_toji.png" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="girl/L/kuti_hohoemi.png" time=0]
[wait time=10]
[cm]
[chara_mod name="sys_fukidasi" storage="button/frame_lesson_fukidasi.png" time=0]
[wait time=10]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[wait time=10]
[current layer="message0"]
[wait time=10]
;メッセージレイヤサイズをお稽古フキダシ窓用に設定変更
[position left=360 width=500 height=170 top=250 page=fore margint="50"]
[wait time=10]
[font size=25]
休憩しましょう
[wait time=500]
;◆◆一度色々リセットする
*reset
[ct]
[clearfix]
[clearstack]
;[skipstop]
[stopse]
[eval exp="f.okeiko_gamen=true"]

;◆全レイヤクリア
[freeimage layer = 0]
[freeimage layer = 1]
[freeimage layer = 2]
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
[freeimage layer = 14]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 23]
[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]

;背景画像仮表示
[chara_new name="bg" storage="bg/bg_okeiko_main.jpg"]
[chara_show left=1 top=1 layer=1 name="bg" time=1]
[wait time=10]


;◆「休憩中」画像表示
[layopt layer=26 visible=true]
[image layer=26 x=334 y=155 storage="button/qk_anim01.png"]
[wait time=10]
*qk_gazou_owari

;主人公L画像仮表示【登場時にchara_new使用。後はマクロで切り替え】
[chara_new name="A_base" storage="toumei.gif"]
[chara_show left=50 top=220 layer=3 name="A_base" time=0]
[wait time=10]
[chara_new name="A_mayu" storage="toumei.gif"]
[chara_show left=50 top=220 layer=4 name="A_mayu" time=0]
[wait time=10]
[chara_new name="A_me" storage="toumei.gif"]
[chara_show left=50 top=220 layer=5 name="A_me" time=0]
[wait time=10]
[chara_new name="A_kuti" storage="toumei.gif"]
[chara_show left=50 top=220 layer=6 name="A_kuti" time=0]
[wait time=10]
[chara_new name="A_emo" storage="toumei.gif"]
[chara_show left=50 top=220 layer=7 name="A_emo" time=0]
[wait time=10]

;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]

;【システム表示】フキダシ枠仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="sys_fukidasi" storage="toumei.gif"]
[chara_show left=300 top=220 layer=23 name="sys_fukidasi" time=0]
[wait time=10]

;【システム表示】メッセージ枠仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg" time=0]
[wait time=10]

@jump storage="okeiko.ks" target=*okeiko_qk_reset_end