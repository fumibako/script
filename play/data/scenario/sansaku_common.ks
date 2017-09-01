;=============================================
;【散策】共通イベント
;=============================================
;読込不良対策：選択肢jump先ラベルを先頭に置きます
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
奥からはゴロゴロと石臼の音が響いてくる。[p]

[whosay name=お茶屋の娘 color="#5b7e23"]
「奥でお抹茶をひいているのですよ。[r]
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
[playse storage=kira.ogg loop=false ]
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
[playse storage=kira_s.ogg loop=false ]
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

;=============================================
;◆町_共通イベント01友人に会う
;イベント発生条件：4月1週～6月4週、期間中に町へ行くと1度だけ発生
*sansaku_machi_common_01
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_common_01==undefined"]
	[skipstop]
[endif]
*machi_common_01
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行きかう人々や商人たちの声がにぎやかに響く。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]

[whosay name="呼び込み" color="#807070"]
「暖かいミルクコオヒ[ruby text="イ"]ヰはいかが～」[p]
香ばしい香りがふわりと鼻をくすぐる。[p]

[whosay name="三宮　時子" color="#c25232"]
「あら。[名前]さんじゃない。ごきげんよう」[p]
#
そう呼びとめたのは華族の友人だった。
[autosave]
[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ごきげんよう」[p]

[主人公閉目パチ1回]
[wait time=10]
[whosay name="三宮　時子" color="#c25232"]
「良い香りね、ミルクコオヒ[ruby text="イ"]ヰ。飲んでみたいわ。[r]
[sp]『シベリヤ』というお菓子もあるのですって」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいわね。でも、ミルクホールに入るのは[l][r]
;【立ち絵】主人公：苦笑
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_ase.png" time=0]
[wait time=10]

[sp]……怒られちゃうわ」
[autosave]
[p]

[whosay name="三宮　時子" color="#c25232"]
「怒られない理由があれば良いのよ。[r]
;【立ち絵】主人公：驚
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公驚]
[wait time=10]
[sp]いつか文通のお相手に会うお許しが出たら……デエトで行けるかしら」
[autosave]
[p]

[主人公通常]
[wait time=10]
「そう、文通といえば聞いたわよ[名前]さん。[r]
[sp]ついに文通を始められたのですって？」[p]
;【立ち絵】主人公：苦笑（頬染め）
[主人公ポーズ片手]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……！　耳がお早いのね」[p]
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「そうなの」[p]

[whosay name="三宮　時子" color="#c25232"]
「素敵だわ！[r]
[sp]どんなお方なの？[r]
[sp]今日はもう行かなきゃいけないけれど、また教えてね」
[autosave]
[p]

;【立ち絵】主人公：目閉じ（頬染め）
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。[r]
[sp]もう少し、お相手のことが分かってからね」[p]

[whosay name="三宮　時子" color="#c25232"]
「健闘を祈るわ！[r]
;【立ち絵】主人公：ほほえみ
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[主人公ほほえみ]
[wait time=10]
[sp]お互いに、楽しい文通が続きますように」[p]
[主人公閉目パチ1回]
[wait time=10]
「……そして、いつかお会いできますように」[p]

「では、ごきげんよう」[p]

;【立ち絵】主人公：笑顔
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_warau.png" time=0]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう。ごきげんよう」[l]

;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("友人の話題",2,0,0,1,2,"a","","","","");
[endscript]

[layopt layer=26 visible=true]
[wait time=10]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt='『友人の話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]

[p]
[freeimage layer = 26]
[wait time=10]
[eval exp="f.event_machi_common[1]=1"]
[wait time=10]
@jump storage="sansaku.ks" target=*sansaku_machi_seika

;=============================================
;◆町_共通イベント02新茶
;イベント発生条件：4月3週～5月2週、期間中に町へ行くと1度だけ発生
*sansaku_machi_common_02
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_common_02==undefined"]
	[skipstop]
[endif]
*machi_common_02
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
陽気な歌声が聞こえてくる。[r]
「～夏も近づく八十八夜」
[autosave]
[p]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
;↑この歌詞は使用に問題無い旨（『茶摘み』作詞者不詳、文部省唱歌、パブリックドメイン）をJASRAC検索等にて確認済
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
お茶屋の軒先で、娘さんが歌いながら道行く人々にお茶をふるまっている。[r]
ふわりとお茶の良い香りが漂ってきた。
[autosave]
[p]

;【選択肢】
*sansaku_machi_common_02_sentaku01
[eval exp="f.select_scene='machi_common_02_sentaku01'"]

[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage]

;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]

[wait time=10]

[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、お茶を一杯いかがですか？」

[image layer=26 x=260 y=80 storage="button/select_waku_x500.png"]
[wait time=10]
[image layer=26 x=260 y=190 storage="button/select_waku_x500.png"]
[wait time=10]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*sansaku_machi_common_02_sentaku01_ok]お茶をいただく[endlink][r]
[r][r][r]
[link target=*sansaku_machi_common_02_sentaku01_no]　断　　　　　る[endlink][r]
[resetfont]

;メッセージレイヤサイズを会話窓用に設定変更
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]

[主人公目パチ1回]
[autosave]
[s]
[cm]
@jump target=*sansaku_machi_common_02_sentaku01
[s]

;=============================================
;◆町_黒田イベント01「さつき」
;イベント発生条件：5月3週～6月2週、期間中に町へ行くと黒田好感度一定値以上で1度だけ発生
*sansaku_machi_kuroda_01
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_kuroda_01==undefined"]
	[skipstop]
[endif]
*machi_kuroda_01
;[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
#
町へ出た。[r]
行き交う人々の賑やかな声が聞こえる。[p]
[stopbgm]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]

[主人公目パチ1回]
[wait time=10]
[whosay name="町の人甲" color="#807070"]
「植木屋さんにさつきが沢山並んで綺麗だったわ」[p]
[whosay name="町の人乙" color="#807070"]
「さつきの季節ですなぁ。[r]
[sp]後で見に行こう」
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「植木屋さんを見てみましょう」[p]

[主人公通常]
[wait time=10]
#
植木屋の前を通ると、さつきの盆栽が並び壮観だ。[r]
非売品の札がついたものも展示されている。[p]

[主人公目パチ1回]
[wait time=10]
[whosay name="植木屋" color="#807070"]
「お嬢さんがた、どうぞご覧くださいな。[r]
[sp]ウチで育てている盆栽も並べていましてね。[r]
[sp]この非売品の鉢は年代物なんですよ」
[autosave]
[p]

[主人公驚]
[wait time=10]
#
年代物と言われた大きなさつきは太いゴツゴツした幹が壮観だ。[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「立派ですね。[r]
[sp]ここまでするのに一体、何年かかるのでしょう」[p]

[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="植木屋" color="#807070"]
「これは私の祖父より前の代から伝わるものでしてなぁ。[r]
[sp]ざっと百年は経っていましょうな」[p]

[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「百年ですか……！　そんなに長くかかるのですね」[p]

[主人公目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]
#
他にも色とりどりの花をつけたものなど様々なさつきを鑑賞した。[p]
[主人公ほほえみ]
[wait time=10]
;【話題入手】（↓可能なら文字色変更表示）
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
f.wadai_list_hairetsu[f.wadai_hairetsu_number].push("さつきの話題",2,0,0,1,1,"a","","",1,"");
[endscript]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt='『さつきの話題』を手に入れました'"]
[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
;【SE】キラキラ
[playse storage=kira_s.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お花も鮮やかで、色々なさつきを見られて眼福だったわ」[p]
[freeimage layer = 26]
[eval exp="f.event_machi_kuroda[1]=1"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika

*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[bg storage="toumei.gif" time=1]
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
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]

[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、お茶を一杯いかがですか？」

[if exp="f.select_scene=='machi_common_02_sentaku01'"]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*sansaku_machi_common_02_sentaku01_ok]お茶をいただく[endlink][r]
[r][r][r]
[link target=*sansaku_machi_common_02_sentaku01_no]　断　　　　　る[endlink][r]
[resetfont]

;メッセージレイヤサイズを会話窓用に設定変更
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]

[主人公目パチ1回]
[wait time=10]

[endif]
[freeimage layer = 27]
[wait time=10]

[return]
