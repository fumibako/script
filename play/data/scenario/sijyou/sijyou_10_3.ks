;イベント5.5手紙イベント
;=================================================================================_
*replay_sijyou_10_3
[stopbgm]
;暗転プリロードサブルーチン
[call target=*10_3 storage="sijyou/preload_sijyou.ks"]
;===========================================================
;【背景】ヒロインの部屋
[freeimage layer = 1]
[wait time=10]
[背景_庭_夜]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公困り]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;===========================================================
#
手紙が来なくなって数日。[p]
*seen0
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
[主人公伏目パチ1回]
[wait time=10]
[if exp="tf.test_gamen == true"]
テストページからプレイしています。手紙まで移動しますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok1]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no1]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok1
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen3
[s]

*jump_no1
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（華織さまは、私のことをお嫌いになられたのでしょうか？）[p]
[else]
（華織さまは、私のことを嫌いになったのでしょうか？）[p]
[endif]
;セリフ途中＿不安から→疑心暗鬼の表情へ　[主人公強気眉][主人公伏目目パチ1回][主人公口ふぅ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（華織さまは、やはり私のことなど妹の様なもので……
[else]
（華織さまは、やっぱり私のことを妹みたいなもので……
[endif]
;疑心暗鬼の表情　もうすこしお上品でもいいのよ・・・
[主人公真剣]
[wait time=10]
[主人公口ムッ]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[if exp="f.para_shujinkou_shukujodo >= 200"]
気にも留めていただけてないのでしょうか？）
[autosave改]
[p]
[else]
遊び？）
[autosave改]
[p]
[endif]
[主人公困り]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
*seen1
;主人公疲れた表情でため息
[whosay name=&sf.girl_namae color="#cf5a7f"]
（こんなに焼きもきさせて……どういうつもりでしょうか？）[p]
[主人公口通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（私の傍に居たいとお思いになられなくしまったのでしょうか？）
[autosave改]
[p]
;居たいとはいわないらしいけど知らないのでそのままに
[else]
（私のお[ruby text="そば"]傍に居たくなくなってしまったのでしょうか？）[p]
[endif]
[主人公憂い]
[wait time=20]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（その様なことを考えてしまうばかりで）[p]
[else]
（そんなこと、考えてばかりで）[p]
[endif]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[if exp="f.para_shujinkou_shukujodo >= 200"]
（心苦しいです……）[p]
（いっそ、華織様とのお付き合いをやめてしまった方が[r]
[sp]よろしいのでしょうか）[p]
（そうでしたら、私は、幸せになれたのでしょうか？）[p]
[else]
（つらいです……）[p]
（いっそ、華織様とのお付き合いをやめてしまった方がいいのでしょうか）[p]
（そうしたら、私は、幸せになれたのでしょうか？）[p]
[endif]
#
私は、心の深淵に引き寄せられるように、違う方を選んだ未来を想像してしまった。
[autosave改]
[p]
#
もしかしたら、無理に大人になることもなく、ありのままに甘えられていたのかもしれない。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様は私に何もご連絡下さらないのね）[p]
#
[fadeoutbgm time=3000]
;===================================================================
[暗転２]
;【背景】主人公邸 庭の見える部屋：昼
[背景_庭]
[暗転２終了]
;===================================================================
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[主人公口通常]
[wait time=10]

[whosay name="磯野" color="dimgray"]
「お嬢様、」[p]
*seen2
#
[主人公ポーズ通常]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」[p]
「どうぞ、入って頂戴」[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[whosay name="磯野" color="dimgray"]
「文矢様からお手紙が届きました」[p]
;○数日後手紙がかえってくる
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう」[p]
[主人公目閉じ]
[wait time=10]
#
磯野から、手紙を受けとると静かに読み始めた。[p]
;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]
*seen3
;/////手紙///
*fumi_toutyaku_fumiya
[if exp="f.okeiko_gamen == true && f.event_replay != 'sijyou'"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「華織について」　文矢"; //「文矢からの手助け」→「華織について」に変更させていただきました。「変えても大丈夫」とのご回答をありがとうございました(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_event_fumi.ks");
f.fumi_list_all_target.push("*10_3");
f.fumi_list_all_location_taishou.push(5);
f.fumi_list_all_location_fumi.push(0);
f.fumi_all_number=f.fumi_all_number + 1;
[endscript]
[endif]

[手紙文矢 fumi_number=]
*10_3_1
[cm]
[clearstack]
[名前]へ[r]
[r]
華織は、いつも笑顔で、自身のことは語りたがりません。[r]
だから、『人に対して遊んでる』と思われがちです。[r]
ですが、とても人に親切なヤツです。[r]
[r]
迷子の子供がいたら親元に届けてたり、書生の勉強の手伝いを[r]
したりと面倒見もいいです。[r]
それに僕の文通が上手くいくよう、時折、仲を取り持ってくれました。[r]
華織は傷つけられることはあっても、[r]
誰かを傷つけることはしないと思います。[r]
[r]
[sp]　　　華織は優しいから、誰かを巻き込まないように[r]
[sp]　　　一人で考え込んでしまうことがあるかもしれない。[r]
[glink target=*10_3_2 text="→" size=10 x=770 y=250 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*10_3_2
[名前]。[r]
もし、君が華織のことを本当に想っているなら、[r]
華織と別れた雪の日を覚えていると思います。[r]
大人になりつつある[名前]だから、あの時の華織の気持ちが[r]
分かるかもしれない。[r]
[r]
[名前]は華織のことをどう思う？[r]
[sp] どうしたい？[r]
[r]
[sp]
[主人公退場]　　　　　　　　　　　　　　　　　　　　　　　　文矢
[glink target=*10_3_1 text="←" size=10 x=110 y=250 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*10_3_close" size=5 x=880 y=24 width=50 height=50]
[s]

*10_3_close
[cm]
[clearfix]
[clearstack]
;場面転換
[背景セピア化]
[wait time=100]
[背景_四条_歌舞伎座前 time=2000]
;[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg" time=2000]
[手紙読了]
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=200 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r]
[link target=*jump_ok2_1]主人公手紙へ[endlink][r]
[r][
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
[背景セピア化_解除]
@jump target=*seen7
[s]
*jump_ok2_1
[current layer="message0"]
[resetfont]
「はい」[r]
移動します。[p]
[cm]
[背景セピア化_解除]
[主人公ポーズ通常]
[主人公通常]
@jump target=*jump_ok2
[s]
*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;☆主人公の決意
;○今までの四条を振り返ってキャラのよさを確認する　気遣いができるひとである

[whosay name=&sf.girl_namae color="#cf5a7f"]
『大事なものではないのですか？』[p]
[whosay name="華織" color="olivedrab"]
『内容は覚えているからいいよ』[p]
[暗転２]
#
;○回想1おわり
[背景セピア化_解除]
[wait time=100]
[主人公ポーズ通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[主人公口通常]
[wait time=10]
;【背景】ヒロインの部屋
[背景_庭_夜]
[暗転２終了]

*seen4

#
北風が障子の影を抜けて吹き抜けていく。[p]
[主人公目を開く]
#
――あと少しで、冷たい冬がくる。[r]
私は"あの雪の日"を思い出した。
[autosave改]
[p]
[暗転２]
[主人公退場]
;【背景】ヒロインの部屋雪
;[chara_mod name="bg" storage="bg/room_niwa_yuki.jpg" time=1000]
[背景_庭_雪]

[背景セピア化]

[暗転２終了]
;背景ない内はこれで
[whosay name="文矢" color="#538a8a"]
「[名前]、華織が来たよ。 外にでてきて」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
#
白く光る障子から、お兄さまの影と華織お兄さまの影が映る。[p]
[bg storage="../fgimage/bg/room_niwa_yuki.jpg" time=1000 method="crossfade"]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
開けてみると視界に広がる一面の白。[r]
そして、縁側にひとつ。[r]
赤い木の実をつけた雪のウサギ。[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「わぁ、雪兎だわ！」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「もしかして……華織お兄さまが作ってくれたのですか？！」[p]
#
汚れのない憧れの華織お兄さまの白い指先が、[r]
うっすらと赤くなっていたことに気づいて私は驚きを隠せなかった。[p]
[whosay name="華織お兄さま" color="olivedrab"]
「急に来て驚かせたよね。 ごめんね」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「いえ……けど、急にどうしてですの？」[p]
*seen5
#
華織お兄さまとお兄さまは、互いに見合って悲しそうに微笑む。
[autosave改]
[p]
[whosay name="華織お兄さま" color="olivedrab"]
「お誕生日の日に来れなくてごめんね」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「本当は、[名前]ちゃんにお花を贈ろうと思ったけれど、[r]
[sp]僕は、まだ修練中の身だから……」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「今、贈れる僕の精一杯の贈り物」[p]
;形があるものを送ってはいけないし
#
冷たい指先が、私の指先に触れる。[r]
今まで、ずっとお傍にいたのに初めて触れた指先。[p]
[whosay name="華織お兄さま" color="olivedrab"]
「淑女になる[名前]ちゃんが、今後とも幸せになりますように」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「華織お兄さま……？」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「また、いつか」[p]
;歳の意味：男女の性差的意味や、歳が離れている関係上の考慮、女性としての歳になった意味ってとこの表現をなんていえばいいでしょう
;他のシナリオに影響しないように鈍感的な感じへ　
;このシナリオ上の現在時系列では理解している
#
;世事に疎かった幼い頃の私は、　違う気がする
;歳月人を待たず
;スクリプト担：「歳」はやはりそういう意図で書かれていたのですね。「その」に変更したのは、より広い意味合いを含んで汲んでもらえるようにという意図でした
;このままでも個人的には伝わると思うのですがさらに良い表現があれば変えてください
幼い頃の私は、その言葉の意味もわからず、ただ呆然と、[r]
白く消えていく華織お兄さまを見送ってしまった。[p]
;意味がわかりづらいので追加
#
文通を行なう為の[ruby text="し"]仕[ruby text="きた"]来り。[r]
一定の歳を迎えると文通を行なう為に直接的な殿方との交流は禁止され、[r]
家に入る。[p]
仕来りとはいえ、[r]
私は、周りに流されるままに華織お兄さまと離れてしまった。[p]
;背景ない内はこれで
;===============================================================================
[暗転２]
[背景セピア化_解除]
;【背景】ヒロインの部屋
[背景_庭_夜]
; 相手を優しく思って考えている
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[暗転２終了]
;===============================================================================
*seen6
[whosay name="文矢(手紙)" color="#538a8a"]
『[名前]は華織のことをどう思う？　どうしたい？』
[autosave改]
[p]
[主人公目閉じ]
[wait time=10]
;決意の表情を一瞬
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[主人公通常]
[wait time=100]
*jump_ok2
;=============主人公の心情について あまり主人公の心情を話すとプレイヤーが不快になりそうですので選択肢に================
[背景選択肢_mizuiro]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示選択肢用]
[wait time=10]
[glink target=*heroine_emotion  text="手紙を書き始めた" size=23 width=500 x=250 y=100 graphic="select_waku_x500.png" font_color=black]
[glink target=*skip_emotion text="手紙を書いた（スキップ）" size=23 width=500 x=250 y=200 graphic="select_waku_x500.png" font_color=black]
[autosave改]
[s]
;==================
*skip_emotion
[背景_庭_夜]
[wait time=100]
@jump target=skip_emotion2
;==================
*heroine_emotion
[手紙主人公]
[背景_庭_夜]
[clearstack]
*sijyou_fumi_in_girl_1
お兄様へ
私は、あの雪の日、[r]
どうして華織お兄様が私から離れていったのか分からず、[r]
そのまま見送ってしまいました。[r]
もちろん、手紙のやり取りをする頃には"[ruby text="し"]仕[ruby text="きた"]来り"と分かりました。[r]
ですが、それだけでした。
[r]
[glink target=*sijyou_fumi_in_girl_2 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*sijyou_fumi_in_girl_2
けれど、今なら分かります。[r]
;↑プレイヤーの想像にしておく
[sp]お兄様。[sp]恋には、苦しみに耐える時があるのですね……。[r]
;忍耐に繋がる
[r]
もう辛い顔をなさる華織様を見送ってしまいたくはありません。[r]
今は何をすべきかどうしたいのかハッキリと分かります。[r]
相手の気持ちを汲み取り、支え、時に辛い時も忍ぶ、[r]
心の強さが、私が思う"淑女として"必要なのです。
[glink target=*sijyou_fumi_in_girl_1 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[glink target=*sijyou_fumi_in_girl_3 text="→" size=10 x=770 y=300 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[s]
*sijyou_fumi_in_girl_3
大人である華織様を私が支えるには力不足かもしれません。[r]
それでも、[r]
私は、これからも華織様と一緒に[r]
同じ景色を見て歩みたいのです。[r][r]
お兄様。 どうか私にお力添えください。[r][r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　かしこ　[r]　　　　　　　　　　　　　　　　　　　　　　　　
[sp]　　　　　　　　　　　　　　　　　　　　　　[名字]　[名前]
[glink target=*sijyou_fumi_in_girl_2 text="←" size=10 x=110 y=350 graphic="select_waku_x150.png" width=40 height=15 font_color=black]
[button fix=true graphic="../fgimage/button/button_close80x80.png" target="*sijyou_fumi_girl_a_close" size=5 x=880 y=24 width=50 height=50]
[s]
*sijyou_fumi_girl_a_close
[cm]
[clearfix]
[clearstack]
[手紙読了]
[resetfont]
*skip_emotion2
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[wait time=10]
（お兄様……お願いします）[p]
[主人公目通常]
（憧れの華織お兄様ではなく、[r]
[sp]一人の殿方として支えたいのです）[p]
#
私は、手紙に願いを込めると、磯野に手渡した。[p]
[暗転２]
[暗転１]
[wait time=10]
*seen7
[eval exp="sf.event_sijyou_10_3=1"]
;¥¥¥¥¥¥¥¥手紙イベントおわり¥¥¥¥¥¥¥¥
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
[背景セピア化_解除]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]


@jump storage="test_sijyou.ks"
[s]
