;↓読み込み不良対策。お稽古パート中なら話題選択ボタンを表示せず戻る
*where_are_you
[if exp="f.viewing_storage == 'okeiko.ks'"]
	@jump storage=okeiko.ks target=*draw_button_system
[endif]

;↓読み込み不良で終了処理ができずボタン類が再表示されてしまう件を防止
*fumi_henji_owari
@jump storage="fumi_henji_owari.ks"

*start

;=============================================
;手紙を書く
;=============================================
*fumibako_kuroda
[eval exp = "f.fumi_atesaki = 'kuroda'"]
[call storage="fumi_henji_hyouji.ks" target=*fumi_write_hyouji]
@jump storage="fumi_henji_binsen_sentaku1.ks" target=*binsen_sentaku
[s]

*fumibako_zaizen
[eval exp = "f.fumi_atesaki = 'zaizen'"]
[call storage="fumi_henji_hyouji.ks" target=*fumi_write_hyouji]
@jump storage="fumi_henji_binsen_sentaku1.ks" target=*binsen_sentaku
[s]

*fumibako_sijyou
[eval exp = "f.fumi_atesaki = 'sijyou'"]
[call storage="fumi_henji_hyouji.ks" target=*fumi_write_hyouji]
@jump storage="fumi_henji_binsen_sentaku1.ks" target=*binsen_sentaku
[s]

*fumibako_katuraginomiya
[eval exp = "f.fumi_atesaki = 'katuraginomiya'"]
[call storage="fumi_henji_hyouji.ks" target=*fumi_write_hyouji]
@jump storage="fumi_henji_binsen_sentaku1.ks" target=*binsen_sentaku
[s]

*fumibako_hujieda
[eval exp = "f.fumi_atesaki = 'hujieda'"]
[call storage="fumi_henji_hyouji.ks" target=*fumi_write_hyouji]
@jump storage="fumi_henji_binsen_sentaku1.ks" target=*binsen_sentaku
[s]

*fumi_henji_save
[showsave]
@jump target=*start
[return]

*fumi_henji_load
[showload]
@jump target=*start
[return]

*repair_binsen
[cm]

;選択肢用レイヤーを追加
[position layer=message1 height=500 top=90 left=350 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
【磯野】お嬢様、いかがされましたか？[r][r]
[sp]　　　便せんの具合が悪くなった場合に[r]
[sp]　　　お直しすることができます。[r]
[sp]　　　便せんをお直ししましょうか？[r][r]
[font size=32]
[link target=*repair_binsen_ok][sp]　は　　　い[endlink][r]
[r][r]
[link target=*repair_binsen_no][sp]　い　い　え[endlink][r]
[resetfont]
[s]


*repair_binsen_ok

[sp]　　　「はい」[r]
[sp]　　　便せんをお直しします。[p]
@layopt layer=message1 visible=false
[cm]
@layopt layer=message0 visible=true
[current layer="message0"]
@jump storage="fumi_repair_binsen.ks" target="*start"

[s]

*repair_binsen_no
[sp]　　　「いいえ」[r]
[sp]　　　また何かございましたら、お呼びください。[p]
@layopt layer=message1 visible=false
@layopt layer=message0 visible=true
[cm]
[current layer="message0"]
@jump storage="fumi_henji_binsen_sentaku2.ks" target=*binsen_sentaku2
[s]

