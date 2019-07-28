;=============================================
;【散策】共通イベント
;=============================================
;読込不良対策：選択肢jump先ラベルを切り出します
;=============================================
;【部分分岐】お茶をいただく【開始】
*sansaku_machi_common_02_sentaku01_ok
[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。いただきます」
[autosave]
[p]
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
軒先の縁台に腰掛けて店をながめると、飾り棚の上には鮮やかな若葉が[r]
活けてあり、そばの水桶には若葉の枝がいくつも入っている。[r]
奥からはゴロゴロと[ruby text="いし"]石[ruby text="うす"]臼の音が響いてくる。[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「奥でお[ruby text="まっ"]抹[ruby text="ちゃ"]茶をひいているのですよ。[r]
[sp]そこに活けてあるのは摘んだばかりの新茶の葉です」
[autosave]
[p]

;【部分分岐】淑女度一定値以上の場合【開始】
[if exp="f.para_shujinkou_shukujodo > 1"]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「お嬢さん、どこかでお見かけしたような……。[r]
[sp]お抹茶を納めにお屋敷へ伺ったときかしら」[p]
「お茶の生葉はご覧になったことがありますか？」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、はじめてです」[p]

[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、手にとってご覧くださいな」[p]
と桶から枝を一本とりサッと水を拭いてこちらに示す。
[autosave]
[p]
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう」[p]
#
枝を手にとり、ながめてみた。[p]
若葉はしっとりと潤いを感じる柔らかさで、つややかな表面が光を受けて美しく輝いている。[r]
;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
切りたての茎の青臭い香りが立ち上ってきた。[p]

お茶の知識が深まった。
;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("新茶の話題",2,0,0,1,1,"a","","",1,"");
[endscript]
;【淑女度上昇】+2（↓可能なら文字色変更表示）淑女度の数値は仮のもので、今後調整予定です
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 2"]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1='『淑女度』が2上昇しました'"]
[eval exp="f.sansaku_machi_seika_txt2='『新茶の話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=310 y=75 color=darkslateblue bold=bold]
[ptext text=&f.sansaku_machi_seika_txt2 layer=26 size=21 x=310 y=105 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[stopse]
[wait time=50]
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false]
[endif]
[p]
[freeimage layer = 26]
[eval exp="f.event_machi_common[2]=1"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika

;【部分分岐】淑女度一定値以上の場合【終了】
[endif]

;【部分分岐】淑女度一定値未満の場合【開始】
#
新茶の葉は柔らかそうに見える。[r]
お茶の香りに包まれて若葉をながめると、心が安らぐのを感じた。
[autosave]
[p]

お茶の知識が深まった。
;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("新茶の話題",2,1,1,-1,1,"a","","",1,"");
[endscript]
;【淑女度上昇】+1（↓可能なら文字色変更表示）淑女度の数値は仮のもので、今後調整予定です
[eval exp="f.para_shujinkou_shukujodo = f.para_shujinkou_shukujodo + 1"]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1='『淑女度』が1上昇しました'"]
[eval exp="f.sansaku_machi_seika_txt2='『新茶の話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=310 y=75 color=darkslateblue bold=bold]
[ptext text=&f.sansaku_machi_seika_txt2 layer=26 size=21 x=310 y=105 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[if exp="sf.SE=='ON'"]
[playse storage=kira_s.ogg loop=false ]
[endif]
[p]
;【部分分岐】淑女度一定値未満の場合【終了】
;【部分分岐】お茶をいただく【終了】
[freeimage layer = 26]
[eval exp="f.event_machi_common[2]=1"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika

;【部分分岐】断る【開始】
*sansaku_machi_common_02_sentaku01_no
[freeimage layer = 26]
[eval exp="f.select_scene=''"]
[cm]
@layopt layer=message1 visible=false

;【立ち絵】主人公：ほほえみ（困り眉）
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「せっかくですが、またの機会に……」[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「そうですか、お引きとめしてごめんなさいね。[r]
[sp]また寄ってください」[p]

;【部分分岐】断る【終了】
[freeimage layer = 26]
;[eval exp="f.event_machi_common[2]=1"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
