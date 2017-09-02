;=============================================
;オープニング3
;=============================================
;[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene15==undefined"]
;	[skipstop]
;[endif]
*scene15
*fumi_sentaku01
;背景変更:和紙風
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=0]
[wait time=10]
;[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=0]
[eval exp="f.haikei_credit=''"]
[wait time=10]
[eval exp="f.select_scene='fumi_sentaku01'"]
;主人公復帰表情通常　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=100]
;主人公復帰表情通常　ポーズ通常削除
[iscript]
$('.junbi_girl').remove();
[endscript]

;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=0]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

[chara_mod name="message_bg" storage=&f.message_storage time=0]
[eval exp="f.haikei_credit=''"]
[wait time=10]
;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;[機能ボタン表示]
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]

;背景変更:和紙風
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=0]
[wait time=10]
[wait time=10]
[eval exp="f.haikei_credit=''"]
[wait time=10]

[button target=*kuroda_fumi1 graphic="moji_kuroda.png" x=200 y=50 time=0]
[button target=*zaizen_fumi1 graphic="moji_zaizen.png" x=600 y=50 time=0]
[button target=*kaori_fumi1 graphic="moji_sijyou.png" x=200 y=150 time=0]
;[button target=*katuraginomiya_fumi1 graphic="moji_katuraginomiya.png" x=600 y=150]
;[button target=*hujieda_fumi1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*fumi_dokuryou01 graphic="moji_shuuryou.png" x=600 y=150 time=0]
#
どなたのお手紙を読みましょう？
[autosave]
[s]
[s]

[cm]
@jump target=*fumi_sentaku01
[s]


*kuroda_fumi1
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
;[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kuroda_fumi1b==undefined"]
;	[skipstop]
;[endif]
*kuroda_fumi1b
;背景変更:手紙
[eval exp="f.select_scene=''"]

[font color=white size=0][r]【 『黒田 将貴』を選択 】[r][resetfont]
[cm]
[bg wait=true storage="../fgimage/bg/bg_tegami_kuroda.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_tegami_kuroda.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
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
[名字] [名前]様[r]
[r]
初めてお手紙を差し上げます。黒田 将貴と申します。[r]
私は植物の研究をしている大学生です。[r]
[r]
[sp]御尊父様には私の幼少時より学業の励ましをいただき、お話をするたびに御見識の広さや深さに感銘を受けておりました。[r]
[名前]様のお話もお聞きしておりましたので、お手紙をお送りする機会をいただき、嬉しく感じております。
[autosave]
[p]
[r]
[sp][名前]様はお花や生き物はお好きでしょうか。[r]
もしお好きでしたら嬉しいです。[r]
[r]
[sp]生き物の事や調査で見つけた興味深い事などをお手紙に書いてみたいと思います。[r]
お返事をいただけると嬉しいです。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　黒田　将貴[p]
[iscript]
f.kuroda_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*zaizen_fumi1
[eval exp="f.select_scene=''"]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_zaizen_fumi1b==undefined"]
;	[skipstop]
[endif]
*zaizen_fumi1b
[font color=white size=0][r]【 『財前 美彬』を選択 】[r][resetfont]
[cm]
;背景変更:手紙
[bg wait=true storage="../fgimage/bg/I9IhvvVdPo/bg_tegami_zaizen.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_tegami_zaizen.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
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
[名字] [名前]様[r]
[r]
謹啓　春暖の候、皆様ますますご清栄のこととお喜び申し上げます。[r]
このたび、古式日本の伝統に則り婚約の申し出を行うべく、手紙と釣書を送らせて頂きました。
[autosave]
[p]
[r]
[sp]これからしばらくの間、私の事を知って頂けるよう努力いたしますのでよろしくお願いします。[r]
では、お体にお気をつけてお過ごしください。返事をお待ちしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[iscript]
f.zaizen_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*kaori_fumi1
[eval exp="f.select_scene=''"]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kaori_fumi1b==undefined"]
;	[skipstop]
[endif]
*kaori_fumi1b
[font color=white size=0][r]【 『四条 華織』を選択 】[r][resetfont]
[cm]
[bg wait=true storage="../fgimage/bg/B4nFWraU42/bg_tegami_sijyou.jpg" time=100]
[wait time=10]
;[chara_mod name="bg" storage="bg/B4nFWraU42/bg_tegami_sijyou.jpg" time=100]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
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
[名字] [名前]様[r]
[r]
拝啓　最近では桜も咲き始め、暖かくなってきました。ご家族一同元気にお過ごしですか？[r]
久しぶり、僕の事覚えてるかな？[r]
小さい頃、よく一緒に遊んだ華織です。[r]
[r]
[sp]今更文通なんて、なんだか不思議な気持ちだね。昔からお父様が、僕のお嫁さんには[名前]ちゃんを、なんて言っていたけど、本当に実行するなんて驚いたでしょう？　まぁもちろん、僕も君なら大歓迎だけど……なんてね。
[autosave]
[p]
[r]
[sp]ああ、けれど君になら、他にもたくさんの人からお手紙がきてる[r]
だろうね。[r]
知り合いだからって気を遣わないで、君の気持ちが一番大切なん[r]
だから。[r]
何かあったら昔みたいに相談に乗るよ。[r]
[r]
[sp]それじゃあ体に気をつけて、また会える日を楽しみにしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　四条　華織[p]
[iscript]
f.sijyou_fumi1_midoku = 0;
[endscript]
@jump target=*fumi_sentaku01
[s]

*fumi_dokuryou01
[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
	[skipstart]
[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene16==undefined"]
;	[skipstop]
[endif]
*scene16
[eval exp="f.select_scene=''"]
[cm]
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=100]
[wait time=10]
;[背景_庭]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[主人公ふぅ閉]
[wait time=10]
[主人公汗]
[wait time=10]

[if exp="tf.test_gamen==true"]
テストページから開始しています。次の選択肢までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=lightblue size=32]

[link target=*jump_ok2]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no2]い　い　え[endlink][r]
[resetfont]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[s]

*jump_ok2
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*isono_situmon01
[s]

*jump_no2
[current layer="message0"]
「いいえ」[r]
そのまま続けます。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ふぅ」
[autosave]
[p]

[主人公閉目パチ1回]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「お疲れ様です」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公効果消]
[wait time=10]
#
私が読み終えるのと同時に、新しくお茶が注がれる。
[autosave]
[p]
[主人公眉下げ]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene17==undefined"]
;	[skipstop]
[endif]
*scene17
[whosay name=磯野 color="dimgray"]
「何か気になる事はございましたか？」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「お相手の事は多少旦那様にお聞きしていますので、何かありましたら[r]
[sp]お尋ねください」
[autosave]
[p]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene18==undefined"]
;	[skipstop]
[endif]
*scene18
*isono_situmon01
[eval exp="f.select_scene='isono_situmon01'"]
;主人公復帰表情通常　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=100]
;主人公復帰表情通常　ポーズ通常削除
[iscript]
$('.junbi_girl').remove();
[endscript]

;背景変更:和紙風
[bg wait=true storage="../fgimage/bg/plane_sakura.jpg" time=0  wait=true]
[wait time=10]
;[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=0]
[eval exp="f.haikei_credit=''"]

#
どなたか詳しく知りたい方はいらっしゃいますか？

[button target=*kuroda_isono1 graphic="moji_kuroda.png" x=200 y=50 time=0]
[button target=*zaizen_isono1 graphic="moji_zaizen.png" x=600 y=50 time=0]
[button target=*kaori_isono1 graphic="moji_sijyou.png" x=200 y=150 time=0]
;[button target=*katuraginomiya_isono1 graphic="moji_katuraginomiya.png" x=600 y=150 time=0]
;[button target=*hujieda_isono1 graphic="moji_hujieda.png" x=200 y=250 time=0]
[button target=*isono_situmon_owari01 graphic="moji_shuuryou.png" x=600 y=150 time=0]
[autosave]
[s]

[cm]
@jump target=*isono_situmon01
[s]

*kuroda_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kuroda_isono1b==undefined"]
;	[skipstop]
[endif]
*kuroda_isono1b
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=磯野 color="dimgray"]
「黒田様は地方に沢山の土地をもつ[r]
[sp]古くから続く伝統ある御家柄とお聞きしています」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「黒田様のお父様は亡くなられて数年になりますが[r]
[sp]旦那様と古くからのお知り合いでいらしたそうです」[p]
[主人公眉下げ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「黒田様ご本人はどんな方なのかしら？」
[autosave]
[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「黒田様は幼い頃から学業に才能を示され[r]
[sp]大学でも優秀な成績を修めておられるそうですよ。[r]
[sp]次の春にはご卒業予定とお聞きしております」[p]
[whosay name=磯野 color="dimgray"]
「旦那様がおっしゃるには、努力家で優しいお人柄だそうです。[r]
[主人公目パチ1回]
[wait time=10]
[sp]机上の学問だけではなく、野山など自然にも親しまれている[r]
[sp]そうです」[p]
[whosay name=磯野 color="dimgray"]
「他の方で何か気になる事はありますか？」[p]
@jump target=*isono_situmon01
[s]

*zaizen_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_zaizen_isono1b==undefined"]
;	[skipstop]
[endif]
*zaizen_isono1b
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=磯野 color="dimgray"]
「財前様のお父様は一代にして数多の事業を成功され、[r]
[sp]新華族に叙せられた実業家でございます」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口開]
[wait time=10]
[主人公眉下げ]
[wait time=10]
「華族として日が浅いながらも、政財界に強い発言力を[r]
[sp]持たれています」[p]
[whosay name=磯野 color="dimgray"]
「旦那様とは叙爵される以前からのご友人だという事ですから、[r]
[sp]そのご縁でしょう」[p]
[主人公目パチ1回]
[wait time=10]
[主人公口通常]
[wait time=10]
#
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様はどんな方なのかしら？」
[autosave]
[p]
[whosay name=磯野 color="dimgray"]
「旦那様がおっしゃるには、実力のある真面目な方だそうですよ。[r]
[sp]銀行の頭取として、素晴らしい成果を上げていらっしゃるそうです」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……凄い方なんですね」[p]

[whosay name=磯野 color="dimgray"]
「はい。お母様は[ruby text="ド"]独[ruby text="イツ"]逸出身の方なので苦労されたとお聞きしましたが、[r]
[sp]今では社交界でも指折りの人気をほこる方です」[p]

[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まあ！」[p]

[主人公通常]
[wait time=10]
「そうなのですね。ありがとう」[p]

[whosay name=磯野 color="dimgray"]
「他の方で何か気になる事はありますか？」[p]
@jump target=*isono_situmon01
[s]

*kaori_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_kaori_isono1b==undefined"]
;	[skipstop]
[endif]
*kaori_isono1b
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ指]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「四条華織様って……」
[autosave]
[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公眉下げ]
[wait time=10]

[whosay name=磯野 color="dimgray"]
「ああ、華織様ですか、懐かしいですねぇ。[r]
[sp]文矢様と同じお年なので、[ruby text=に]二[ruby text=じゅう]十[ruby text=に]二になられましたか」[p]
[主人公口開]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「やっぱり華織お兄様……何故私に？」[p]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「四条様は昔から華織様とお嬢様のご結婚を望まれていましたから[r]
[sp]不思議な事ではないと思いますが」
[autosave]
[p]

[主人公口開]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「まぁ……ご冗談だと思ってました」[p]
[主人公口通常]
[wait time=10]
#
なんといっても[ruby text=むっ]六つも年が離れているのだ。[r]
もう結婚されたのだとばかり思っていた。[p]
[主人公眉通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

最後に会ったのはいつだったか、当時は本当の兄のように慕っていたのを覚えている。ぼんやりと過去の記憶を思い起こした。
[autosave]
[p]
[主人公眉困り]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織お兄様と結婚の話なんて、なんだか変な感じがするわね）[p]
[主人公眉下げ]
[wait time=10]
[主人公効果消]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「といっても、四条様も破談になったからといって[r]
[sp]何か仰るような方ではないので、ご安心ください」[p]
[主人公眉通常]
[wait time=10]
[主人公目にこ]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、それはよく分かってます」[p]
[whosay name=磯野 color="dimgray"]
「ふふ、そうですね。[r]
[sp]他に何かございますか？」[p]
@jump target=*isono_situmon01
[s]

*katuraginomiya_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_katuraginomiya_isono1b==undefined"]
;	[skipstop]
[endif]
*katuraginomiya_isono1b
#
（仮）[r]
まだ未定です。[p]
@jump target=*isono_situmon01
[s]

*hujieda_isono1
[eval exp="f.select_scene=''"]
[cm]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_hujieda_isono1b==undefined"]
;	[skipstop]
[endif]
*hujieda_isono1b
#
（仮）
まだ未定です。[p]
@jump target=*isono_situmon01
[s]

*isono_situmon_owari01
[eval exp="f.select_scene=''"]
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip!=true"]
;	[skipstart]
;[endif]
[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene19==undefined"]
;	[skipstop]
[endif]
*scene19
[cm]
;[背景_庭]
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[if exp="tf.test_gamen==true"]
テストページから開始しています。イベント終わりまでjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=lightblue size=32]

[link target=*jump_ok3]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no3]い　い　え[endlink][r]
[resetfont]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[s]

*jump_ok3
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_owari
[s]

*jump_no3
[current layer="message0"]
「いいえ」[r]
そのまま続けます。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「もういいわ、色々ありがとう磯野」
[autosave]
[p]

[whosay name=磯野 color="dimgray"]
「いえ、お役に立てたなら何よりです」[p]

[主人公口通常]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「返事のお手紙は……そうですね、遅くても来月中にはお書きに[r]
[sp]なったほうがよろしいかと」
[autosave]
[p]
[主人公ポーズ指]
[wait time=10]
[主人公横目]
[wait time=30]
[主人公横目パチ1回]
[wait time=10]
「もちろん早いほどお相手も喜ばれると思いますが[r]
[sp]なかなか言葉が浮かばない事もあるでしょう」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目通常]
[wait time=30]
[主人公眉困り]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「分かりました」[p]
[主人公目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene20==undefined"]
;	[skipstop]
[endif]
*scene20
[whosay name=磯野 color="dimgray"]
「ふふ、来月からはお嬢様が自信を持ってお相手に会えるよう[r]
[sp]お稽古も今まで以上に厳しくするよう先生方にお伝えしておきますね」
[autosave]
[p]
[主人公目にこ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふふ、お願いします」[p]
[主人公閉目パチ1回]
[wait time=10]
[主人公眉下げ]
[wait time=10]
[主人公口通常]
[wait time=10]
[whosay name=磯野 color="dimgray"]
「それでは、そろそろ失礼させて頂きます。[r]
[sp]また何かございましたら、いつものようにお呼びください」[p]
[主人公眉通常]
[wait time=10]
[主人公口ほほえみ]
[wait time=10]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、ありがとう」[p]
[主人公口通常]
[wait time=10]
;【SE】襖を閉じる（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]
[wait time=30]
;【SE】落ち着いた足音（フェードアウト）
[playse storage=isono_out.ogg loop=false ]
[主人公ポーズ指]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene21==undefined"]
;	[skipstop]
[endif]
*scene21
#
磯野がいなくなるのを見届けて、もう一度じっくりと送られた手紙を見直す。
[autosave]
[p]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（――黒田様、財前様、華織お兄様）[p]
[主人公眉困り]
[wait time=10]
[主人公目通常]
[wait time=30]
[主人公横目パチ1回]
[wait time=20]
（どんな方達なのかしら、[r]
[sp]華織お兄様もきっとお変わりになってるだろうな）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目通常]
[wait time=10]
[主人公眉強気]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……早速お返事を考えないと）[p]
[主人公目パチ1回]
[wait time=10]
#
私は急いで机に向かいペンを手に取った。[p]
[主人公ポーズ指]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[主人公ポーズ片手]
[wait time=10]
[主人公眉困り]
[wait time=10]
[主人公汗]
[wait time=10]
[主人公横伏目パチ1回]
[wait time=10]
（何も思いつかない）[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[主人公口大]
[wait time=10]
#
焦る気持ちを抑えるため、大きく深呼吸をする。[p]
[主人公ポーズ指]
[wait time=10]
[主人公効果消]
[wait time=10]
[主人公眉通常]
[wait time=10]
[主人公口通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]

[if exp="sf.KSKIP=='ON' && sf.trail_opening2_scene21b==undefined"]
;	[skipstop]
[endif]
*scene21b
;【BGM】フェードアウト
[fadeoutbgm time=2000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そうだ、とりあえずお兄様にこの事をお伝えしよう。[r]
[sp]何かアドバイスをもらえるかもしれない）
[autosave]
[p]
[主人公ポーズ通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
（時間は沢山あるのだから……ゆっくり、考えよう）
[autosave]
[p]

*seen_owari
#

[stopbgm]
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
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;オープニング　終

;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=0]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

;背景非表示
[bg wait=true storage="toumei.gif" time=50]
[wait time=10]
;[chara_mod name="bg" storage="toumei.gif" time=50]
[endreplay]


[if exp="tf.test_gamen == true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;------タイトルへ戻る
;@jump storage="title.ks"

[stopbgm]
;------シナリオの最初にジャンプする
@jump storage="okeiko.ks"
[s]

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
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible=true
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]

[if exp="f.select_scene=='fumi_sentaku01'"]
#
どなたのお手紙を読みましょう？

[button target=*kuroda_fumi1 graphic="moji_kuroda.png" x=200 y=50]
[button target=*zaizen_fumi1 graphic="moji_zaizen.png" x=600 y=50]
[button target=*kaori_fumi1 graphic="moji_kaori.png" x=200 y=150]
[button target=*katuraginomiya_fumi1 graphic="moji_katuraginomiya.png" x=600 y=150]
[button target=*hujieda_fumi1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*fumi_dokuryou01 graphic="moji_shuuryou.png" x=600 y=250]

[endif]

[if exp="f.select_scene=='isono_situmon01'"]
#
どなたか詳しく知りたい方はいらっしゃいますか？

[button target=*kuroda_isono1 graphic="moji_kuroda.png" x=200 y=50]
[button target=*zaizen_isono1 graphic="moji_zaizen.png" x=600 y=50]
[button target=*kaori_isono1 graphic="moji_kaori.png" x=200 y=150]
[button target=*katuraginomiya_isono1 graphic="moji_katuraginomiya.png" x=600 y=150]
[button target=*hujieda_isono1 graphic="moji_hujieda.png" x=200 y=250]
[button target=*isono_situmon_owari01 graphic="moji_shuuryou.png" x=600 y=250]

[endif]
[freeimage layer = 27]
[wait time=10]


[return]


