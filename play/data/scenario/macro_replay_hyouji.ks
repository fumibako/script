*start
[locate x=750 y=100]
[button name="back_test_menu" fix="true" graphic="button_back_test.png" storage="okeiko_hyouji_test_hyouji.ks" target="back_test" ]
[locate x=550 y=0]
;[button name="back_okeiko" fix="true" graphic="button_back_okeiko.png" storage="event.ks" target="event_owari"]
@layopt layer=message2 page=fore visible = false
[current layer="message2"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message2 left=0 width=350 height=385 top=0 page=fore color=white opacity=120]
@layopt layer=message2 page=fore visible = true
[font color=glay size=13]
[if exp="f.event_replay == 'sijyou'"]
四条ルート(1○,0×)=[emb exp="f.sijyou_au"],
お見合い(1後,0未)=[emb exp="f.sijyou_omiai"][r]
イベント6(1後,0未)=[emb exp="f.sijyou_event6"],
祖母を(true見た,false見ていない)=[emb exp="f.sijyou_sobo"][r]
華衣について=[emb exp="f.event_sijyou_kai_jijyou"],
散策4を見た=[emb exp="f.event_sijyou_4"][r]
[endif]
[if exp="f.event_replay == 'katuraginomiya'"]
葛城宮ルート(1○,0×)=[emb exp="f.katuraginomiya_au"],葛城宮のみ文通(1○,0×)=[emb exp="f.katuraginomiya_only"][r]
[endif]
;◆好感度に数値以外(Undefindを除く)が代入された場合、赤字表記して進行ストップ
[iscript]
if (typeof f.para_katuraginomiya_koukando === 'undefined'){
	TG.kag.ftag.startTag("jump",{target:"*koukando_katuraginomiya0"}); 
}
[endscript]
[if exp="Number.isFinite(f.para_katuraginomiya_koukando) == false"]
[resetfont]
[font color=red size=13]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[endif]
*koukando_katuraginomiya0
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"],

;◆好感度に数値以外(Undefindを除く)が代入された場合、赤字表記して進行ストップ
[iscript]
if (typeof f.para_hujieda_koukando === 'undefined'){
	TG.kag.ftag.startTag("jump",{target:"*koukando_hujieda0"}); 
}
[endscript]
[if exp="Number.isFinite(f.para_hujieda_koukando) == false && typeof f.para_hujieda_koukando != 'undefined'"]
[resetfont]
[font color=red size=13]
藤枝好感度=[emb exp="f.para_hujieda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[endif]
*koukando_hujieda0
藤枝好感度=[emb exp="f.para_hujieda_koukando"][r]

[iscript]
if (typeof f.para_zaizen_koukando === 'undefined'){
	TG.kag.ftag.startTag("jump",{target:"*koukando_zaizen0"}); 
}
[endscript]
[if exp="Number.isFinite(f.para_zaizen_koukando) == false && typeof f.para_zaizen_koukando != 'undefined'"]
[resetfont]
[font color=red size=13]
財前好感度=[emb exp="f.para_zaizen_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[endif]
*koukando_zaizen0
財前好感度=[emb exp="f.para_zaizen_koukando"],

[iscript]
if (typeof f.para_sijyou_koukando === 'undefined'){
	TG.kag.ftag.startTag("jump",{target:"*koukando_sijyou0"}); 
}
[endscript]
[if exp="Number.isFinite(f.para_sijyou_koukando) == false && typeof f.para_sijyou_koukando != 'undefined'"]
[resetfont]
[font color=red size=13]
四条好感度=[emb exp="f.para_sijyou_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[endif]
*koukando_sijyou0
四条好感度=[emb exp="f.para_sijyou_koukando"][r]

[iscript]
if (typeof f.para_kuroda_koukando === 'undefined'){
	TG.kag.ftag.startTag("jump",{target:"*koukando_kuroda0"}); 
}
[endscript]
[if exp="Number.isFinite(f.para_kuroda_koukando) == false && typeof f.para_kuroda_koukando != 'undefined'"]
[resetfont]
[font color=red size=13]
黒田好感度=[emb exp="f.para_kuroda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[endif]
*koukando_kuroda0
黒田好感度=[emb exp="f.para_kuroda_koukando"],
[endif]

淑女度=[emb exp="f.para_shujinkou_shukujodo"][r]
茶道熟練度=[emb exp="f.para_shujinkou_j_sadou"],
華道熟練度=[emb exp="f.para_shujinkou_j_kadou"][r]
礼法熟練度=[emb exp="f.para_shujinkou_j_reihou"],
語学熟練度=[emb exp="f.para_shujinkou_j_gogaku"][r]
お箏熟練度=[emb exp="f.para_shujinkou_j_koto"]
[resetfont]
[current layer="message0"]
*test_hyouji_event_owari0
@jump storage="macro_etc2.ks" target=&f.macro_target
[endmacro]