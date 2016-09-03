;///////散策案 花火///////
;ネリネの花→花火、火は鎮魂
;期間 夏　夕前(イメージ15時〜16時くらい？)
;どんなイベント？ 散策しようとして思い出に浸る
;☆このイベントの目的、フラグを回収、キャラの良さ
;登場人物 四条華織 父　磯野
;背景主人公の部屋 昼か夕方
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[whosay name="磯野"]
「お嬢様、今日は"人通りが多い"と思います。散策に出られるのは、[r]
[sp]お控えした方がよろしいかと」[p]
;して頂いたほうが？　どっちが正しいのやら？
;BGM 夕涼みのまま？
[wait time=10]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「何かあるのですか？」[p]
#
――  人通りが多い。[r]
[sp]私は、磯野の言葉を問い返した。[p]
#
「今日は夏祭りの日でございます。[r]
[sp]夕刻をすぎますと、町の中は、大変、混雑してしまいます」[p]
;◎その言葉に主人公は、今日が祭りの日であったことを思い出す。
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ぁ……」[p]
#
磯野の言葉にハッとした私はカレンダーを見つめる。[p]
[主人公伏目]
[wait time=10]
#
家に入ってからというものの、ついに忘れてしまったのかと、[r]
時の流れに想いを馳せる。[p]
;◎磯野の言葉に従って外には出なかったが
[主人公目閉じ]
[whosay name="磯野"]
「よろしければ、中庭の縁側にて花火をご覧になられては、[r]
[sp]如何でしょうか？」[p]

[主人公通常]
[wait time=10]
#
どうしてか磯野は、仄かに微笑んだ。[p]
#
無論。悪い気は、しなかった為、[r]
私は裾を直して立ち上がると中庭へと向かうことにした[p]
;◎縁側でたまたま居合わせた父と花火を見ながら夕涼みする。
[主人公目閉じ]
#
……[p]
;移動中、なくてもいいけど
[主人公退場]
[chara_mod name="bg" storage="bg/sijyou_engawa.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
中庭へと向かってみると、既に先客が団扇を仰ぎながら縁側で寛いでいた。その相手は[p]
;bgm 海風と沈む太陽
;http://otowabi.com/music/20160827umikaze/
;[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽
;[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
;[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
;[endif]



[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父さま！」[p]

[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]。丁度、帰ってきて休んでいたところだ。[r]
[sp]お前も、隣に座って夕涼みをしようじゃないか」[p]
;お前呼びだっけ？ しようではないか？どっちだろう

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そう、

[主人公口ほほえみ]
[wait time=10]
[主人公目通常]
[wait time=10]

ですね」[p]
#
私は、磯野の微笑みが、このことか。と、[r]
合点がつき、微笑って父の隣にすわってみせた。[p]
[主人公ほほえみ]
[wait time=30]

[主人公退場]
;背景 縁側　夕方か夜 時間がたつ。
[chara_mod name="bg" storage="bg/sijyou_engawa2.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]


#
黄昏に近づいてくる頃、花火が、ひゅるりと舞い上がり、散っていく。[p]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]

[主人公目パチ1回]
[wait time=10]

;黄昏って夏は19時らしい
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、知ってるか？ 『かぎや』と言うのはだな、[r]
[sp]代表的な花火師の屋号なんだぞ」[p]

[主人公口ほほえみ]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか？」[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「たまや も、同じく」[p]
;磯野二人の為に一口に切り分けたスイカと水羊羹を持ってくる。
[whosay name="？？？"]
「旦那さま、お嬢さま。」[p]

[主人公ポーズ通常]
[wait time=10]
[主人公横目]
[wait time=10]
[主人公口開]
[wait time=10]

#
後ろから聞き覚えのある声がして振り向くと、お盆を手にした磯野が佇んでいた。[p]

[主人公口ほほえみ]
[wait time=10]
#
そうして、磯野は、素早くも精査な動きで、膝をつく[p]
[主人公目パチ1回]
[wait time=10]

すると、小さく切り分けられたスイカと、瑞々しい水羊羹をのせた小皿を私達の傍に置いて後ろへと下がる。[p]
;長いからきってみた

#
磯野の細やかな動きには、いつも目を見張るものがある。[r]
ただ、淑女の躾としては、それを大っぴらに褒めることは許されない。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
[主人公ほほえみ]
[wait time=10]
#
私は、出来うる限りの素直さで、いつも感謝を述べるのだ[p]
;のだ！って使っていいのかな
;◎父、華織と上手くいっているか気になり話かけたが、

[whosay name=&sf.father_name color="DarkSlateBlue"]
「ところで、[名前]よ。華織くんとは、上手くいってるのかね？」[p]

[主人公驚]
[wait time=10]
;◎主人公、華織との思い出にひたる。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織さま、ですか？ 

[主人公ポーズ片手]
[wait time=10]

[sp]えぇ、お手紙も頂いてますし、」[p]
[主人公通常]
[wait time=10]
#
とは言っても、憧れだった華織お兄さまとのお付き合い。[p]
[主人公ふぅ閉]
[wait time=10]
#
はっきりとした自信は、もてない。[p]
[主人公ポーズ通常]
[wait time=10]
[主人公口通常]
[wait time=10]
[主人公眉通常]
[wait time=10]

;夢見がちに目を閉じて回想
#
憧れの人が、今は婚約者として、身近にいる……[p]
;候補？？
#
私は、兄と華織さまに挟まれ、縁側で線香花火に興じたことを思い出した。[p]

[テキスト全画面白文字無背景]
;背景 線香花火
[chara_mod name="bg" storage="bg/sijyou_hanabi1.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
;……[p]
;いらないかも↑
;黒い背景に全面文字？ よい感じにならんかえ
#
――闇に落ちいく火華は、松葉のように開き、[r]
[r]
散り際には、彼岸花のように[r]
[r]
[sp]             一気に艶をみせる線香花火。[p]
[r]
華織"お兄さま"は、[r]
[r]
[sp]                ――綺麗だね。[r]
[r]
と呟く。[p]
#
[r]
私は、その言葉に目を向けると、[r]
[r]
微かに華織お兄さまの横顔を照らして、[r]
;背景 線香花火落ちた ただの暗闇?
[chara_mod name="bg" storage="bg/sijyou_hanabi3.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　heniha　https://www.flickr.com/photos/heniha/'"]
[r]
玉火は、ポトリと落ちた。[p]
;メッセージ戻る？タイミングは適☆当
#
――今でも覚えています。あの日見た、花火の儚さ。[p]
はじめて間近で見た貴方の横顔は、忘れない。[p]

[イベントシーン構築]

;背景 主人公部屋 夕方か夜。
[chara_mod name="bg" storage="bg/sijyou_engawa2.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
花火のような 貴方は、とても綺麗で[p]
私も、そうなりたいと花火に願った――[p]

;◎主人公の名を呼び、話を切り出す父。
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、」[p]

[主人公驚]
[wait time=10]
;◎主人公は、父の声に我に帰る。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[主人公口ほほえみ]
私は、お父さまの声で我に帰った。[r]
父は、水羊羹を爪楊枝に刺したまま、真剣な表情をして私を見つめる。[p]

[主人公憂い]
[wait time=10]
;適当な表情が浮かばない　
;ん？ なんや？といった表情
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうかされましたか？」[p]
#
普段、朗らかなお父さまが、[r]
珍しい表情をしていたので私は眉を寄せてしまった。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「しっかりと、華織くんを結納相手として決めたなら、応援するが」[p]

[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？はい。 ありがとうございます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「たまには家には帰ってくるんだぞ」[p]

;主人公 困った笑顔

[主人公照れ]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それから、もしも何かあったら直ぐに文矢か磯野に相談するんだぞ」[p]
#
そんなことを口早に言って、[r]
お父さまは、少しばかり寂しい気な表情を浮かべた。[p]

;◎主人公は大丈夫だからと窘めた。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父さま、その様に心配されなくても大丈夫です」[p]
[主人公ポーズ通常]
[wait time=10]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そ、そうか」[p]
#
お父さまは、ようやく手にしていた水羊羹を口に含むと、[r]
慌てたようにお茶を飲み干す。[p]

;ふぅ 嫌ではない溜息？
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(本格的に決まるのはまだ先だと言うのに)
;このセリフがないと、決まったの？と思うかも？でも、あると繋がりはよくない

;ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(大丈夫です。いつか、また皆で花火を見ようと思っていますから)[p]
[主人公目伏]
[wait time=10]
[主人公目閉じ]
[wait time=10]
#
私は、身近にある幸せを大切にしようと思う。[p]
;このモノローグはフラグ回収
[主人公目伏柔]
[wait time=10]
;背景花火
[chara_mod name="bg" storage="bg/sijyou_hanabi2.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
花火が華開き、儚く落ちていく。[p]
;今が思い出になっていく時間の儚さ(と華織)
#
後ろに控えていた磯野が、口に手を当てて咳払いをしたが、[r]
本当のところは、微笑んだのではないかと、私はそんな気がしたのだった。[p]
[主人公目閉じ]
[wait time=10]
燁が夏を織りなす、幸せな思い出[p]

;@jump storage="event.ks" target=*event_owari


[イベントシーン終了]
@jump storage="test_sijyou.ks"
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
