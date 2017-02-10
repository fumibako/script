;=============================================
;◆黒田イベント【手紙が届く：年賀状】黒田ルートかつ1月4週になった時点で1度だけ発生
=============================================
*replay_kuroda_1_4
[cm]
[clearfix]
[call target=*start storage="macro_tati_girl.ks"]

;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene1==undefined"]
	[skipstop]
[endif]
*scene1
[stopbgm]

;【背景】主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=0]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

;手紙編 イベント発生:1月第4週
;画面:通常会話パート
;【テキスト枠】会話パート用 下部横長

;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「お嬢様、黒田様からお手紙でございます」
[autosave]
[p]
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お礼とお誘い」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「お礼とお誘い」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi17");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_kuroda_location_fumi.push(16);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi17");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[16]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_kuroda_number=f.fumi_kuroda_number + 1;
f.hensin_list_hairetsu[0][16]=1;
f.para_kuroda_koukando = f.para_kuroda_koukando + 4;
[endscript]

[ct]

;機能ボタン消去
[anim name="message_save" opacity=0 time=0]
[anim name="message_load" opacity=0 time=0]
[anim name="message_backlog" opacity=0 time=0]
[anim name="message_skip" opacity=0 time=0]
[eval exp="sf.FButton='OFF'"]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=1 y=1 storage="bg/bg_tegami_kuroda.jpg" time=500]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
[名字] [名前]様[r]
[r]
[sp]寒さ厳しいこのごろですが、いかがお過ごしでしょうか。[r]
長い間ご無沙汰してしまい、大変失礼いたしました。[r]
昨年末はお手紙をいただきまして、本当にありがとうございました。[r]
お手紙に励まされて研究も順調に進み、如月の半ばには落ち着き[r]
そうです。[r]
[r]
[sp]今はつぼみの梅も、花ほころんでいる頃かと思います。[r]
梅の美しい小料理屋がありまして、ご一緒できると嬉しいです。[r]
不義理のお詫びとお礼をさせていただけませんか。[r]
如月の二週目頃が見頃と聞きましたが、いかがでしょう。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴
[autosave]
[p]
[iscript]
[endscript]
[eval exp="f.midoku_list_hairetsu[0][16] = 0;"]
[freeimage layer = 29 time=500]
;機能ボタン表示
[anim name="message_save" opacity=255 time=0]
[anim name="message_load" opacity=255 time=0]
[anim name="message_backlog" opacity=255 time=0]
[anim name="message_skip" opacity=255 time=0]
[eval exp="sf.FButton='ON'"]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene2==undefined"]
	[skipstop]
[endif]
*scene2

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=50]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（やっと……お会いできるのね。[r]
[sp]色々とあったけれど、順調に進まれたようでよかった）[p]
;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
;【選択肢】
[glink target=*kuroda_1_4_sentaku01_a text="無地" exp="f.fumi_to_kuroda1_4='a'" fontcolor=gray size=23 width="500" x=250 y=100 color=white]
[glink target=*kuroda_1_4_sentaku01_b text="梅柄に梅の香を焚き染めたもの" exp="f.fumi_to_kuroda1_4='b'" fontcolor=gray size=23 width="500" x=250 y=200 color=white]
[glink target=*kuroda_1_4_sentaku01_c text="梅にうぐいす柄" exp="f.fumi_to_kuroda1_4='c'" fontcolor=gray size=23 width="500" x=250 y=300 color=white]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お返事は、どの便せんに書きましょう」
[autosave]
[s]

*kuroda_1_4_sentaku01_b
;【部分分岐】梅柄の便せんに梅の香を焚き染めたもの【開始】
;【黒田好感度】+2（手紙の話題に出た梅柄。それに香を焚くひと手間をかけているところが好感度up）
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 2"]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様が話題にしてくださった、梅柄の便せんにしましょう」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]
（……素敵なお誘いをありがとうございます。[r]
[sp]順調とお聞きして、心より安堵いたしました。[r]
[sp]黒田様にお会いできることを何より楽しみに、ご一緒させていただきます……）
[autosave]
[p]

;【立ち絵】主人公：通常
[主人公閉目パチ1回]
[wait time=10]
（こうしてお手紙を交わす日が戻るのは、本当に嬉しいわ。[r]
[sp]この時間をもう少し楽しんでいたい……）[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene4==undefined"]
	[skipstop]
[endif]
*scene4
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「そうだ、梅といえばお香があった。[r]
[sp]手紙に梅の香を焚き染めてみましょう」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=60]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=60]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
#
炭をおこし香炉の灰にうずめ、お香をふわりと置く。[r]
その上に竹籠をかぶせ、手紙をそっと乗せてしばらく待った……。
[autosave]
[p]
[wait time=1000]

――部屋が梅の上品な香りに包まれた。[p]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……できたわ。よい香り」[p]

（黒田様も、気に入ってくださるかしら）[p]
;【部分分岐】梅柄の便せんに梅の香を焚き染めたもの【終了】

@jump storage="event.ks" target=*event_owari

*kuroda_1_4_sentaku01_c
;【部分分岐】梅にうぐいす柄の便せん【開始】
;【黒田好感度】+1
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene5==undefined"]
	[skipstop]
[endif]
*scene5

[whosay name=&sf.girl_namae color="#cf5a7f"]
「話題にしてくださった梅だけでなく[r]
[sp]うぐいすも入った柄の便せんにしましょう。[r]
[sp]気に入ってくださるかしら」
[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]
（……素敵なお誘いをありがとうございます。[r]
[sp]順調とお聞きして、心より安堵いたしました。[r]
[sp]黒田様にお会いできることを何より楽しみに、ご一緒させていただきます……）[p]

;【部分分岐】梅にうぐいす柄の便せん【終了】
@jump storage="event.ks" target=*event_owari

*kuroda_1_4_sentaku01_a
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene6==undefined"]
	[skipstop]
[endif]
*scene6

;【部分分岐】無地の便せん【開始】
;【黒田好感度】変化なし
[whosay name=&sf.girl_namae color="#cf5a7f"]

「久しぶりのお手紙。ここは気持ちも新たに無地の便せんにしてみましょう」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;【SE】ペンで書く
[playse storage=pen_write.ogg loop=false ]
（……素敵なお誘いをありがとうございます。[r]
[sp]順調とお聞きして、心より安堵いたしました。[r]
[sp]黒田様にお会いできることを何より楽しみに、ご一緒させていただきます……）[p]

;【部分分岐】無地の便せん【終了】

;手紙編終了
;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 