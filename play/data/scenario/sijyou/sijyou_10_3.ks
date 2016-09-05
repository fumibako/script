;¥¥¥¥¥¥¥¥イベント5.5手紙イベント¥¥¥¥¥¥¥¥
;[主人公部屋]
;表情がころころ変わる主人公を追加 カットしても？？
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;考える、迷う→暗闇→夜になってますが夜に家令が入ってきてもいいのかな
#
手紙が来なくなって数日。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公困り]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、私のことを嫌いになったのでしょうか？)[p]
;セリフ途中＿不安から→疑心暗鬼の表情へ　[主人公強気眉][主人公伏目目パチ1回][主人公口ふぅ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、やっぱり私のことを妹みたいなもので……
;疑心暗鬼の表情　もうすこしお上品でもいいのよ・・・
[主人公真剣]
[wait time=10]
[主人公口ふぅ]
[wait time=10]
遊び？)[p]
[主人公困り]
[wait time=10]
;主人公疲れた表情でため息
[whosay name=&sf.girl_namae color="#cf5a7f"]
(こんなに焼きもきさせて……どういうつもりでしょうか？)[p]
[主人公口通常]
[wait time=10]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(私のお傍に居たくなくなってしまったのでしょうか？)[p]
[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そんなこと、考えてばかりで)[p]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(つらいです……)[p]

[fadeoutbgm time=3000]

[whosay name="磯野" color="dimgray"]
「[名前]さま、」[p]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！ 」[p]
「どうぞ、入って頂戴」[p]
[whosay name="磯野" color="dimgray"]
「文矢さまからお手紙が届きました」[p]
;○数日後手紙がかえってくる
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう」[p]

;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]

;/////手紙///

[手紙文矢 fumi_number=]
[名前]へ[r]
華織は、いつも笑顔で、自身のことは語りたがりません[r]
だから、『人に対して遊んでる』と思われがちです。[r]
ですが、とても人に親切なヤツです。[r]
[r]
;こんな口調でもいいでしょうか？
迷子の子供がいたら親元に届けてたり、書生の勉強の手伝いを[r]
したりと面倒見もいいです。[r]
(それに僕の奥さんの恋愛相談にのってくれました。)[r]
[p]
華織は傷つけられることはあっても、[r]
誰かを傷つけることはしないと思うんだ。[r]
[r]
[名前]は華織のことをどう思う？[r]
[sp] どうしたい？[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　文矢[p]
[手紙読了]


[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;☆主人公の決意
;○今までの四条を振り返ってキャラのよさを確認する　気遣いができるひとである
;場面転換
;[歌舞伎座前]
[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg" time=2000]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
[whosay name=&sf.girl_namae color="#cf5a7f"]
『大事なものではないのですか？』[p]

[whosay name="華織" color="olivedrab"]
『内容は覚えているからいいよ』[p]
;○回想おわり
;回想シーンタグとかはシナリオ中に使うと延々ループの危険ぽいです？
;○決意の表情 セリフはプレイヤーに想像　お好きな方で
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
北風が障子の影を抜けて吹き抜けていく。[p]
#
――あと少しで、冷たい冬がくる。[r]
[sp] 私は"あの時"を思い出した。[p]
[主人公退場]
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;背景ない内はこれで
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
[whosay name="文矢" color="#538a8a"]
「[名前]、華織が来たよ。 外にでてきて」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に（思い出/夢見るシーンに
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
#
白く光る襖から、お兄さまの影と華織お兄さまの影が映る。[p]
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
うっすらと真っ赤になっていたことに気づいて私は驚きを隠せなかった。[p]
[whosay name="華織お兄さま" color="olivedrab"]
「急に来て驚かせたよね　ごめんね」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「いえ……けど、急にどうしてですの？」[p]
#
華織お兄さまとお兄さまは、互いに見合って悲しそうに微笑む。[p]
[whosay name="華織お兄さま" color="olivedrab"]
「お誕生日の日に来れなくてごめんね」[p]
[whosay name="華織お兄さま" color="olivedrab"]
「本当は、[名前]ちゃんにお花を贈ろうと思ったけれど、[r]
[sp]僕は、まだ修練中の身だから、」[p]
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
#
歳の意味もわからず、[r]
幼い頃の私は、ただ呆然と、白く消えていく華織お兄さまを[r]
見送ってしまった。[p]

#
;あの時の憧れのままでいてほしいから、追いかけなかった。[r]
;華織お兄さまは、優しいから、守ってくれるから、大丈夫だと思って。[p]
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name="文矢(手紙)" color="#538a8a"]
『[名前]は華織のことをどう思う？[r]
[sp] どうしたい？』[p]
#
; 相手を優しく思って考えている
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
;¥¥¥¥¥¥¥¥手紙イベントおわり¥¥¥¥¥¥¥¥
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
