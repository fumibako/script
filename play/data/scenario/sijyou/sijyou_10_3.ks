;¥¥¥¥¥¥¥¥イベント5.5手紙イベント¥¥¥¥¥¥¥¥
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
;暗転プリロードサブルーチン
[call target=*10_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;===========================================================
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
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
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、私のことを嫌いになったのでしょうか？)[p]
;セリフ途中＿不安から→疑心暗鬼の表情へ　[主人公強気眉][主人公伏目目パチ1回][主人公口ふぅ]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織さまは、やっぱり私のことを妹みたいなもので……
;疑心暗鬼の表情　もうすこしお上品でもいいのよ・・・
[主人公真剣]
[wait time=10]
[主人公口ムッ]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
遊び？)[p]
[主人公困り]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
*seen1
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
[wait time=20]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(そんなこと、考えてばかりで)[p]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(つらいです……)[p]
(いっそ、華織様とのお付き合いをやめてしまった方がいいのでしょうか)[p]
(そうしたら、私は、幸せになれたのでしょうか？)[p]
#
私は、心の深淵に引き寄せられるように、違う方を選んだ未来を想像してしまった。[p]
#
もしかしたら、無理に大人になることもなく、ありのままに甘えれていたかもしれない。[p]
(華織様は私に何もご連絡下さらないのね)[p]
#
[fadeoutbgm time=3000]
;===================================================================
[暗転２]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
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
;【SE】鈴虫の音
[playse storage=mushi_suzumushi.ogg loop=false ]
*seen3
;/////手紙///

[手紙文矢 fumi_number=]
[名前]へ[r]
[r]
華織は、いつも笑顔で、自身のことは語りたがりません。[r]
だから、『人に対して遊んでる』と思われがちです。[r]
ですが、とても人に親切なヤツです。[r]
[r]
;こんな口調でもいいでしょうか？
;スクリプト担：華族でも男性なら色々幅広い付き合いもあろうと思いますので、くだけた表現をしてもおかしくないと思います。仲の良さがあらわれて良いと思います
迷子の子供がいたら親元に届けてたり、書生の勉強の手伝いを[r]
したりと面倒見もいいです。[r]
それに僕の奥さんの恋愛相談にのってくれました。[r]
[p]
華織は傷つけられることはあっても、[r]
誰かを傷つけることはしないと思うんだ。[r]
[r]
[名前]は華織のことをどう思う？[r]
[sp] どうしたい？[r]
[r]
[sp]
[主人公退場]　　　　　　　　　　　　　　　　　　　　　　　　文矢[p]
;場面転換

[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
;[歌舞伎座前]
[chara_mod name="bg" storage="bg/bg_kabuki_out.jpg" time=2000]
[eval exp="f.haikei_credit='photo　by　明治村画像庫2 早川　http://d.hatena.ne.jp/meiji_photo/'"]
[手紙読了]


;☆主人公の決意
;○今までの四条を振り返ってキャラのよさを確認する　気遣いができるひとである

[whosay name=&sf.girl_namae color="#cf5a7f"]
『大事なものではないのですか？』[p]
[whosay name="華織" color="olivedrab"]
『内容は覚えているからいいよ』[p]
[暗転２]
#
;○回想1おわり
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(0%)";
[endscript]
[主人公ポーズ通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[主人公口通常]
[wait time=10]
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２終了]

*seen4

#
北風が障子の影を抜けて吹き抜けていく。[p]
[autosave]
[主人公目を開く]
#
――あと少しで、冷たい冬がくる。[r]
私は"あの雪の日"を思い出した。[p]
[暗転２]
[主人公退場]
;【背景】ヒロインの部屋雪
[chara_mod name="bg" storage="bg/room_niwa_yuki.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(100%)";
[endscript]
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
[chara_mod name="bg" storage="bg/room_niwa_yuki.jpg" time=1000]
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
うっすらと真っ赤になっていたことに気づいて私は驚きを隠せなかった。[p]
[whosay name="華織お兄さま" color="olivedrab"]
「急に来て驚かせたよね。ごめんね」[p]
[whosay name="幼い頃の私" color="#cf5a7f"]
「いえ……けど、急にどうしてですの？」[p]
*seen5
[autosave]
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
;背景ない内はこれで
[autosave]
;===============================================================================
[暗転２]
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(0%)";
[endscript]
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
; 相手を優しく思って考えている
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[暗転２終了]
;===============================================================================
*seen6
[whosay name="文矢(手紙)" color="#538a8a"]
『[名前]は華織のことをどう思う？　どうしたい？』[p]
[autosave]
[主人公目閉じ]
[wait time=10]
;決意の表情を一瞬
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」[p]
[主人公通常]
[wait time=10]
*seen7
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
