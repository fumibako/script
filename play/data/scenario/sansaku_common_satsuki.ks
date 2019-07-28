;=============================================
;【散策】共通イベント
;=============================================
;読込不良対策：「さつき」を切り出します(読込不良ラベルエラーが起きる場合があることを確認したため)
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
[if exp="sf.SE=='ON'"]
[playse storage=kira_s.ogg loop=false ]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お花も鮮やかで、色々なさつきを見られて眼福だったわ」[p]
[freeimage layer = 26]
[eval exp="f.event_machi_kuroda[1]=1"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
