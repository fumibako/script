;¥¥¥¥¥¥¥¥エンディング¥¥¥¥¥¥¥¥
;////////☆その後の話 、 ファイナル・イメージ（本物の変化を見せる場）/////////
;春 3月
;○四条家の挨拶
;[青空]桜のエフェクト？
;兄とその奥さんに見守られて結納(文字のみ)
;【背景】青空に桜
[chara_mod name="bg" storage="bg/bg_sakura.jpg"]
[eval exp="f.haikei_credit='photo　by　djNIV　https://www.flickr.com/photos/nivpic/4496431348/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

#
四条家 と、[名字]家 の結納儀式がつつがなく終わり、親戚一同から祝福の声がかかる。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

#
[whosay name="文矢の奥様" color=%mp.color]
「おめでとうございます」[p]
[whosay name=文矢 color="#538a8a"]
「[名前]、華織おめでとう」[p]

[whosay name="華織" color="olivedrab"]
「[名前]と、あの時再会して、本当によかった」[p]
;△お見合いのことです
[whosay name="華織" color="olivedrab"]
「[名前]、大切にします」[p]
;場所変更？

[whosay name="華衣" color=%mp.color]
「自分にも、いつかそのような方と出会えるのかな……」[p]
[whosay name="四条親戚" color="#807070"]
「きっと貴方にも巡り会えますよ 華衣さんにも大事な人が 」[p]
;兄のセリフをいう
[whosay name="華衣" color=%mp.color]
「！　」[p]
[whosay name="華衣" color=%mp.color]
「あなたは、」[p]

;ここでイメージ画像
# 
;ナレーターモノローグ
『幸せは信じれば巡ってくる
それは案外気づかない近い場所にあるかもしれません』[p]
;イベントスチル　~end~
;結納衣装、女性和装、男性軍服風でしょうか？、または幼い頃の2人？絵師さんにまかせます アドバイスありがとうございます。
;○プレイヤーに幸せの予感を残しておわり、紡いでいく話。
;幸せは信じれば巡ってくる それは案外気づかない近い場所にあるかもしれません というテーマかな
;2人も近いところにいましたけど、お見合いしなければ関係性は変わらなかった？

;@jump storage="event.ks" target=*event_owari


[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]

;/////////////////エピローグ追加分（good_end差分です)///////////
;#
;--その数年後、
;[sp]秋の薄紫の花達が風になびくころ。[p]
;[whosay name="華織" color="olivedrab"]
;「ふぅ……なかなか決まりませんね」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;「どうされましたか？ 」[p]
;[whosay name="華織" color="olivedrab"]
;「華道祭で玄関先に飾る御所花車の構図が決まらなくて……」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;「少し、休まれませんか？ 華衣さんからのお手紙も来たので」[p]
;[whosay name="華織" color="olivedrab"]
;「華衣から手紙ですか！ なかなか手紙を返してくれなかったのに。一体、何をしてるのでしょうか……」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;「手紙によりますと……
華衣さんは結納式の後に出会った方と四条家の鉱山事業を生かした発電事業をはじめ、事故の少ない交通機関の発展にも貢献しているそうですよ」[p]
;[whosay name="華織" color="olivedrab"]
;「そうですか、風の噂で少なからず聞いてましたが、元気にやっているようですね」[p]
;[whosay name="華織" color="olivedrab"]
;(そのうち、訪ねてくるような仲になれるだろうか？)[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;「私達も、負けていられませんね」[p]
;[whosay name="華織" color="olivedrab"]
;「！ そうですね。 休憩はこのあたりにしておきましょうか」[p]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;「いいのですか？」
;[whosay name="華織" color="olivedrab"]
;「ちょうど[名前]さんの愛らしい顔をみたら、いい構図を思いつきましたから」[p]
;[名前]は、華織に微笑み返すと縁側でネリネの花を見つめた。[p]
;[whosay name="華織" color="olivedrab"]
;(手紙の代わりに、華で想いを綴っていくと決めたのだから、もっと精進しなくては)[p]
;主人公をみながら作業再開
;#
;その後、華道家として祖母以上に認められ華織は、四条御流として更に名が知れ渡るほどに国の文化に貢献することとなった。[p]
;その陰には四条を支える主人公の姿があった。[p]
;想いを繋げて綴っていく手紙は、いつしか恋を綴り、人々を幸せにする愛に変わっていく。その手紙は--- [p]
;恋綴りのタイトルに戻るイメージ
;手紙によって大きく変わった四条兄弟が人々に貢献する・・・にもつながる？

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
