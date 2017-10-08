;=============================================
;◆黒田イベント【手紙が届く：年賀状】黒田ルートかつ1月4週になった時点で1度だけ発生
=============================================
*replay_kuroda_1_4
[cm]
[clearfix]
[layopt layer=29 visible=true] 
[layopt layer=fix visible=false] 
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500] 
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580] 
[wait time=50]
;==========================================================================================
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene1==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene1
[stopbgm]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸_庭
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]
;画面:通常会話パート
;【テキスト枠】会話パート用 下部横長
[イベントシーン構築ボタン無し版]
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[プリロード画面消去]
;セーブ等ボタン配置
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;==========================================================================================
*scene1_1
;手紙編 イベント発生:1月第4週
;【立ち絵】主人公：通常
[whosay name="磯野" color="dimgray"]
「お嬢様、黒田様からお手紙でございます」
[autosave]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]


;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
#
;==========================================================================================
;◆テスト中は配列スキップ
[if exp="tf.test_kuroda==true || f.event_replay == 'kuroda'"]
@jump target="test_kuroda_hairetu_skip"
[endif]
[if exp="f.okeiko_gamen == true"]
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
[endif]
*test_kuroda_hairetu_skip
[ct]
;==========================================================================================
[手紙黒田]
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
[if exp="f.okeiko_gamen == true"]
[eval exp="f.midoku_list_hairetsu[0][16] = 0;"]
[endif]
[手紙黒田読了]
;==========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene2==undefined"]
	[skipstop]
[endif]
;==========================================================================================
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
;==========================================================================================
;テスト中+リプレイ時は好感度はスキップ
[if exp="f.okeiko_gamen == true && f.event_replay != 'kuroda'"]
	[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 2"]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene3==undefined"]
	[skipstop]
[endif]
;==========================================================================================
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
;==========================================================================================
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene4==undefined"]
	[skipstop]
[endif]
;==========================================================================================
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
[fadeoutbgm time=3000]
[wait time=10]

;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……できたわ。よい香り」[p]

（黒田様も、気に入ってくださるかしら）[p]
[stopbgm]
;【部分分岐】梅柄の便せんに梅の香を焚き染めたもの【終了】
;==========================================================================================
[eval exp="sf.event_kuroda_1_4 = 1"]
[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]
[if exp="tf.test_kuroda == true"] 
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]
;手紙編終了
;◆「休憩中」画像消去
[freeimage layer = 26]
@jump storage="event.ks" target=*event_owari
;==========================================================================================
*kuroda_1_4_sentaku01_c
;【部分分岐】梅にうぐいす柄の便せん【開始】
;【黒田好感度】+1
[if exp="f.okeiko_gamen == true && f.event_replay != 'kuroda'"]
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene5==undefined"]
	[skipstop]
[endif]
*scene5

[whosay name=&sf.girl_namae color="#cf5a7f"]
「話題にしてくださった梅だけでなく[r]
[sp]うぐいすも入った柄の便せんにしましょう。[r]
[sp]気に入ってくださるかしら」
[p]
[fadeoutbgm time=3000]
[wait time=10]

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
[stopbgm]

;【部分分岐】梅にうぐいす柄の便せん【終了】
;==========================================================================================
[eval exp="sf.event_kuroda_1_4 = 1"]
[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]
[if exp="tf.test_kuroda == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;手紙編終了
;◆「休憩中」画像消去
[freeimage layer = 26]
@jump storage="event.ks" target=*event_owari
;==========================================================================================
*kuroda_1_4_sentaku01_a
[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_4_scene6==undefined"]
	[skipstop]
[endif]
;==========================================================================================
*scene6

;【部分分岐】無地の便せん【開始】
;【黒田好感度】変化なし
[whosay name=&sf.girl_namae color="#cf5a7f"]

「久しぶりのお手紙。ここは気持ちも新たに無地の便せんにしてみましょう」[p]
[fadeoutbgm time=3000]
[wait time=10]

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
[stopbgm]

;【部分分岐】無地の便せん【終了】
;==========================================================================================
;手紙編終了
*scene_end
[eval exp="sf.event_kuroda_1_4 = 1"]
[if exp="tf.test_kuroda == true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]
[if exp="tf.test_kuroda == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;◆「休憩中」画像消去
[freeimage layer = 26]
;回想記録終了 
[endreplay]
@jump storage="event.ks" target=*event_owari



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
[chara_mod name="message_bg" storage="toumei.gif" time=1]
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
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
