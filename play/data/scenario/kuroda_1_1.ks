;=============================================
;◆黒田イベント【手紙が届く：年賀状】黒田ルートかつ1月1週になった時点で1度だけ発生
=============================================
*replay_kuroda_1_1
;◆既読スキップ開始
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
	[skipstart]
[endif]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene1==undefined"]
	[skipstop]
[endif]
*scene1

[stopbgm]
[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg" time=500]
[wait time=10]

;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;主人公編
;【背景】黒背景又は黒っぽい和紙風
;【テキスト枠】全画面、白フォント
;【BGM】主人公邸通常会話パート用

#
――新年を迎えた。[l][r]
;【BGM】めでたく候（お正月）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです→フリーズとクリック待ちが発生するためclick=trueを撤去中
[playbgm storage="oshougatsu_medetaku.ogg" loop=true]

[r]
澄みわたった青空のもと[r]
召使い達の陽気な掛け声に[r]
混じって餅つきの音が聞こえる。[p]
[r]
日ごろは海外で暮らす兄夫婦も[r]
お正月の間は家に戻り[r]
賑やかに過ごしている。[p]
[fadeoutbgm time=3000]
[r]
挨拶に訪れる親族や客達の応対で[r]
忙しく過ごしつつも[r]
[r]
年賀の晴れやかな空気とはうらはらに[r]
私の心は浮かぬままだった――
[autosave]
[p]
[resetfont]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene2==undefined"]
	[skipstop]
[endif]
*scene2

;【背景】主人公邸_庭、フェードイン
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=500]

;【テキスト枠】会話パート用 下部横長
;【立ち絵】主人公：伏目
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

;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;[chara_show left=1 top=391 layer=10 name="message_bg"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]
;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true click=true]

[主人公ポーズ指]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……。[r]
[sp]……黒田様は、いかがお過ごしかしら」[p]

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
「年末のご様子では、お便りもお会いすることも[r]
[sp]当分の間は無理でしょうね……」[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
#
黒田様からの音沙汰はないまま、正月が過ぎてゆく。
[autosave]
[p]

[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene3==undefined"]
	[skipstop]
[endif]
*scene3

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]
;【立ち絵】主人公：通常
[主人公通常]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「失礼します。[r]
[sp]お嬢様、本日届いた書簡でございます」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;【立ち絵】主人公：伏目
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
（お友達の華やかな年賀状を見るのも、なんだかつらいわ……）[r]
手つきも重く受け取ろうとして――[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene4==undefined"]
	[skipstop]
[endif]
*scene4
#
;【立ち絵】主人公：驚
[主人公ポーズ片手]
[wait time=10]
[主人公驚]
[wait time=10]
一番上に乗せられたものを見た瞬間、私は息をのんだ。[r]
地味な葉書。しかしそこには、見覚えのある鮮やかな筆跡があった。
[autosave]
[p]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野！　もう、びっくりさせて」[p]
;【立ち絵】主人公：強気
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「黒田様から届いたなら、先に言ってちょうだいよ」[p]
[主人公通常]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「ご友人方の年賀状もございましたので」
[autosave]
[p]

;【立ち絵】主人公：伏目
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それもそうだけれど……。[r]
[sp]でも、いま渡してもらってよかったわ。ありがとう」[p]

[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
（お兄様たちがいらしたら、どれだけからかわれるか[r]
[sp]……見られなくてホッとしたわ）
[p]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]

[主人公閉目パチ1回]
[wait time=10]
[whosay name="磯野" color="dimgray"]
「どういたしまして」[r]
磯野にいつもの温かい笑みが浮かぶ。[p]
「では、失礼いたします」[p]
#
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[wait time=500]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene5==undefined"]
	[skipstop]
[endif]
*scene5
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;【背景、立ち絵、テキスト枠】フェードアウト、暗転
[主人公退場]
[wait time=10]
;機能ボタン消去
[anim name="message_save" opacity=0 time=0]
[anim name="message_load" opacity=0 time=0]
[anim name="message_backlog" opacity=0 time=0]
[anim name="message_skip" opacity=0 time=0]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
[chara_mod name="bg" storage="toumei.gif" time=500]

[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「年賀状」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「年賀状」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi16");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_kuroda_location_fumi.push(15);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi16");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[15]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_kuroda_number=f.fumi_kuroda_number + 1;
f.hensin_list_hairetsu[0][15]=1;
f.para_kuroda_koukando = f.para_kuroda_koukando + 4;
[endscript]

;黒田より年賀状
;【背景】年賀状画像（黒田）表示（こちらで作成予定：ハガキ上部に「謹賀新年」の文字と四葉のクローバーの押し花風画像が入るシンプルなもの。ハガキ下部に縦書下記テキスト挿入）
[chara_mod name="bg" storage="bg/nengajou_kuroda.jpg" time=500]
;メッセージレイヤを年賀状用に設定変更
[position left=270 width=400 height=310 top=260 page=fore margint=0]
@layopt layer=message0 page=fore visible=true
[position vertical=true]
[font color=black size=20]
[sp]昨年末には多大な励ましを[r]
いただき、ありがとうございました[r]
[sp]おかげさまで、研究に光明が[r]
見えてまいりました[r]
[r]
[sp]ご無沙汰してしまい大変申し訳[r]
なく感じております[r]
また改めてお手紙をお送り[r]
いたします[r]
[r]
本年が[名前]さんにとって[r]
良き年となりますように
[autosave]
[p]
[position vertical=false]
[resetfont]
[eval exp="f.midoku_list_hairetsu[0][15] = 0;"]

;画面切り替え、→通常会話パート
;【背景】主人公邸_庭、フェードイン
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=500]
[wait time=10]
;【テキスト枠】会話パート用 下部横長
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[wait time=10]
;機能ボタン登場
[anim name="message_save" opacity=255 time=0]
[anim name="message_load" opacity=255 time=0]
[anim name="message_backlog" opacity=255 time=0]
[anim name="message_skip" opacity=255 time=0]
[eval exp="sf.FButton='ON'"]
;【立ち絵】主人公：通常
[主人公ポーズ通常]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

#
裏面に『母の体調も落ち着きました。[r]
その節はご心配をおかけしました』とも記されている。[p]

[if exp="sf.KSKIP=='ON' && sf.trail_kuroda_1_1_scene6==undefined"]
	[skipstop]
[endif]
*scene6

;【立ち絵】主人公：目閉じ
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
#
『研究に光明』――安心すると同時に涙がにじむ。
[autosave]
[p]

;【立ち絵】主人公：目閉じほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（よかった……お母様も落ち着かれたのですね）[p]

「お忙しいでしょうに、お知らせくださるなんて……」[p]

[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg" time=1000]
[wait time=10]
;【立ち絵】主人公：ほほえみ
[主人公ほほえみ]
[wait time=10]
#
葉書を胸に、深いため息をついて庭を眺める。[l][r]
;【背景】主人公邸_庭、フェードイン
窓から射す陽光が、ひときわ明るさを増して見えた。[p]
;お正月、黒田から年賀状編終了

;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 