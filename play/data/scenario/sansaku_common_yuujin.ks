;=============================================
;【散策】共通イベント：読込不良対策：「友人に会う」を切り出します
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
[if exp="sf.SE=='ON'"]
[playse storage=kira_s.ogg loop=false ]
[endif]

[p]
[freeimage layer = 26]
[wait time=10]
[eval exp="f.event_machi_common[1]=1"]
[wait time=10]
@jump storage="sansaku.ks" target=*sansaku_machi_seika

