;¥¥¥¥¥¥¥¥イベント6後半 波ケ浦～ネリネの庭まで 11月1週〜日付調整11月3週？¥¥¥¥¥¥¥
;△ ○壺の柄と暗号を照らし合わせ、弟の場所を発見する
*start
[call target=*start storage="tyrano.ks"]
;暗転プリロードサブルーチン　ここは続編なのでイベント構築のみ
[call target=*end_sub storage="sijyou/preload_sijyou.ks"]
[stopbgm]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=100]
;=================================================================================_
[if exp="tf.test_sijyou==true"]
;婚約者の花園
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg" time=50]
[イベントシーン構築]
「テストモードで表示されています。　追加シーンにとびます」
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[主人公憂い]
[wait time=10]
@jump target=*seen4
[endif]
;=================================================================================_
*first
[テキスト全画面白文字]
私達は、外に出て車夫をみつけると、[華衣]様が[r]
向かわれたと思われる『波ケ浦』へと急いだ。[p]
;場面転換
;SE波の音
;=============================
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image layer=29 storage="bg/test_sijyou_namigauara.jpg" time=100]
[wait time=10]
;=============================
;【波ヶ浦】荒波
;【SE】荒波（海）
[playse storage=mizu_umi_aranami.ogg loop=true]
;こちらはループSEになります。SEフェードアウトやSE停止タグとセットでお使いください
[chara_mod name="bg" storage="bg/test_sijyou_namigauara.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[四条イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;主人公通常でもいいかも　お好きに！
[主人公真剣]
[wait time=10]
[call target=*start storage="macro_tati_sijyou.ks"]
;【登場】四条
[四条ベース羽織]
;強気の驚き
[四条真剣]
[四条口驚き]
;=============================
[freeimage layer=29 time=800]
[layopt layer=fix visible=true]
;=============================
[layopt layer=fix visible=true]
[四条ボタン表示]
[whosay name="華織" color="olivedrab"]
「[華衣]！ ここに居たんだな」[p]
[fadeoutse time=1000]
[stopse]
[四条口ムッ]
[whosay name="華織" color="olivedrab"]
「大事な話があるんだ、きいてほしい」[p]
[whosay name="華衣" color=%mp.color]
「うるさい、」[p]
[主人公憂い]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「勉学も運動も、笑って何でも出来るアンタには、[r]
[sp]一生、この気持ちがわからない」[p]
[四条口驚き]
[whosay name="華衣" color=%mp.color]
「あの人は何の才能もなかった俺に勇気と希望を与えてくれた、」[p]
;テーマに反する言葉をいう…セリフ難しい
;幸せは信じれば巡ってくる それは案外気づかない近い場所にあるかもしれません
;テーマ部なんで音楽流しておくか～
[四条憂い]
;=================================================================================_
*seen1
[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
;【波ヶ浦】夫婦岩：BGMに合わせ落ち着いた感じの背景に変更してみています
[chara_mod name="bg" storage="bg/sijyou_namigaura.jpg" time=1000]
[eval exp="f.haikei_credit=''"]
[whosay name="華衣" color=%mp.color]
「あの日の『幸せ』は、もう……どこにもない」[p]
[whosay name="華衣" color=%mp.color]
「遠いところにいって何処にもない」[p]
[whosay name="華衣" color=%mp.color]
「それなのに『幸せ』を見せられて、
押し付けられるくらいなら！」[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「[華衣]、僕がこんなこというのは、おこがましいけれど」[p]
;おこがましいですが、眉間に皺よってる感じの表情がほしいです。
;四条目通常
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「もっと周りをよくみて考えてほしい」[p]
;○プレイヤーのイライラを解消
[主人公通常]
[wait time=10]
;四条目閉じ
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
(幸せや大事なものは気づかないくらいに近いところにあるんだ)[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
「これ以上、なにを見せられる？」[p]
[whosay name="華衣" color=%mp.color]
「[名前]って言ったっけ」[p]
[四条目パチ1回]
[whosay name="華衣" color=%mp.color]
「アンタだって大事な人がいなくなったら辛いでしょ？」[p]
[四条目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(華織様が、居なくなったら？ )[p]
;○主人公が説得して窮地を逃れる...もし華織がいなくなったらと考える
[主人公困り]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「つらいです、」[p]
[主人公伏目パチ1回]
[wait time=10]
;×筆者に女性的価値観が足りず思い浮かばずこんな形に
[四条困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「急に居なくなって、お手紙をもらえなくなったら」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「心配で心が張り裂けそうでした」[p]
;四条眉強気
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「[名前]……」[p]
;○華織 主人公を愛しく思うも懺悔
;○落ち着いたところで手紙をみせる
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「でも[華衣]さんには、その人からのが手紙が残ってます」[p]
;四条目通常
[chara_mod name="sijyou_me" storage="sijyou/me_futuu.png" time=0]
[wait time=10]
[主人公憂い]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「届かなかっただけで、はっきりとここに残っているんです」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[華衣]さんの『大事な人の手紙』を見つけてきました」[p]
;手渡す
[whosay name="華衣" color=%mp.color]
「うそ」[p]
[四条目パチ1回]
[whosay name="華織" color="olivedrab"]
「行ってきたんだ。[sp]嘘かどうかは読めばわかる」[p]
[whosay name="華衣" color=%mp.color]
「な、なんで……そんなことまで……」[p]
;=================================================================================_
*seen2
[四条目パチ1回]
;どうしてかは烏滸がましいから話さない
;慈愛の表情　思いつかず仮
[主人公口ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[華衣]さん、お手紙をどうぞ。[sp]想いが綴られてます」[p]
;【SE】紙に触れる（スッ）　どちらでもおｋ
;[playse storage=paper_su.ogg loop=false ]
;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;裏テーマ華綴り
;○攻略相手を応援…ではない方法の手紙の掲示
;◎「また会う日を楽しみに」「幸せな思い出」「忍耐」※ネリネ
;×修正点君→華衣 僕→私
;○婚約者の最期の手紙
#
;ナレーター
[華衣]様は、私から折紙で挟まれた手紙を受け取ると、破れないように[r]
そっと開いた。[p]
[wait time=10]
;たまに止まるのです
;【退場】四条
[四条退場]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
;【SE】紙に触れる（パラリ）古い紙だからパラリ？
[playse storage=paper_open.ogg loop=false ]
[手紙華衣婚約者 fumi_number=]
[華衣]へ[r]
「もともと私の身体は長くなかったようです。[r]
[sp]だから華織さんを責めないであげてください。[r]
[sp]私の無茶なお願いをきいてくれたのだのだから。[r]
[r]
[sp]最後に[華衣]にみてほしいものがあります。[r]
[sp]もし私の頼みを華織さんが忘れていなければ、[r]
[sp]きっと[華衣]の家の庭に咲いている思います。[r]
[r]
[r]
[sp]どうか悲しまないでほしい[r]　
[sp]私は[華衣]に　幸せな思い出が訪れる日を楽しみにしています。」[p]
[手紙読了] 

;======四条表示======
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/sijyou_namigaura.jpg" time=100]
;【登場】四条
[四条ベース羽織]
[四条憂い]
[freeimage layer=13 time=500]
[layopt layer=13 visible=true]
;======四条表示======
[whosay name="華衣" color=%mp.color]
「あの庭……！」[p]
;[華衣]、走って家に帰る！四条家は運動力がある？
;強気の驚き
[四条真剣]
;四条口驚き
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
;四条汗
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[華衣]！」[p]
;○お互い見合って 比翼の2人の感じ
[四条口ムッ]
;四条効果消
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[名前]さん、」[p]
;[名前]さん、か[名前]、焦ってるから呼び捨て？
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「一緒に行きましょう」[p]
;○主人公追う
[主人公退場]
;【退場】四条
[四条退場]
;=================================================================================_
*seen3
[autosave]
[テキスト全画面白文字]
;場面転換 ネリネの庭がどういったものか絵によって変更
# 
;ナレーター
[華衣]様を追った私達は、[r]
以前、華織様に尋ねた温室へとたどり着く。[p]
その温室の中には、巨大なガラスと生い茂る緑に[r]
守られるかのようにして、色とりどりのネリネが[r]
生育されていた。[p]
;=============================
[call target=*start storage="macro_tati_sijyou.ks"]
;SEキラキラ？間
;[cancelskip] スキップ停止にしないとgitではフリーズするかも
[playse storage=shine.ogg loop=false ]
[eval exp="f.haikei_credit='photo　by　＠名無し１'"]
[layopt layer=fix visible=false]
[image layer=29 storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg" time=50 visible=true]
[wait time=5]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
;=============================
;婚約者の花園
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg" time=50]
[四条イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;=============================
[freeimage layer=29 time=800]
[layopt layer=fix visible=true]
;=============================
[四条ボタン表示]
[whosay name="華衣" color=%mp.color]
「ここって兄さんが言ってた場所」[p]
;○主人公が花言葉を教えてくれる
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[華衣]さん、ネリネの花言葉を知っていますか？」[p]
[whosay name="華衣" color=%mp.color]
「?」[p]
[主人公困りほほえみ]
[wait time=15]
[主人公伏目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「『また会う日を楽しみに』　『幸せな思い出』　」[p]
;×[主人公泣き]あえて「忍耐」言わない方がいいかな
[whosay name="華衣" color=%mp.color]
「！」[p]
[主人公通常]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「……こんな近くに　失くしていたものが、あったのか」[p]
;探し物だと違和感あるかも
[主人公憂い]
[wait time=10]
;=================================================================================_
*seen4
#
ネリネの花言葉には、もうひとつの言葉があった。[r]
それは、『忍耐』 [p]
けれど、それは十分だと思い、私は胸の内にしまっておいた。[p]
ほんの少しですが、想うゆえに耐え忍ぶ気持ちが、[r]
私にもわかったから－－[p]
#
;ナレーター
1人、ネリネの庭で咽び泣く少年がいた。[r]
世界でたった1つの想いを綴った手紙に[p]
#手紙
『私が、消えてしまう前に、咲いて誇る華を綴ります』[p]
;弟の回想 ところどころ三人目視点
[主人公退場]
;=================================================================================_
*seen4_1
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=1 y=1 zindex=0 storage="bg/bg_prologue.jpg" time=50]
[font color=white size=27]
ここにしーんをいれます
[p]
[call target=*start storage="macro_tati_sijyou.ks"]
[resetfont]
[wait time=10]

;裏で画面構成
[イベントシーン構築ボタン無し版枠茶色]
;=================================================================================_
#
;○概要案 好きな花について婚約者に話しをしたら、(妹の婚約者は)買い付けに出て、出先で事故(公家の出で、もともと身体が弱かった？)にあってしまう、
;○回想シーン
;○婚約者さんが四条に妹の好きな花は何？ときいてくる。
;四条家玄関ホール
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(50%)";
[endscript]
;↑(◆B4nFWraU42さん作)回想シーン用セピア化スクリプトを使用させていただきました。ありがとうございます
;sepia(100%)だと四条邸壁や空の青さが飛んでしまうため50%に。さらに調整入れるかもです
;=================================================================================_
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_genkan.jpg" time=100]
[メッセージウィンドウ上ボタン表示]
[freeimage layer=29 time=400]
;画面復帰
;=================================================================================_
[whosay name="華織" color="olivedrab"]
『急にどうしたのですか？ [華衣]の好きな花なんてきいて』[p]
[whosay name="華織" color="olivedrab"]
『あぁ、君は[華衣]の婚約者ですか。それは失礼しました』[p]
[whosay name="華織" color="olivedrab"]
『ふふ、記念日なのかな』[p]
[whosay name="華織" color="olivedrab"]
『薔薇も好きなようだけど、ネリネも好きなようだよ』[p]
[whosay name="華織" color="olivedrab"]
『……君、体調の悪そうだけど大丈夫ですか？』[p]
[whosay name="華織" color="olivedrab"]
『待って下さい！ そんな顔色で……せめて明日』[p]
;==========================================
;[暗点]か空
[chara_mod name="bg" storage="bg/bg_bluesky.jpg" time=100]
#
『私の[ruby text=やまい]病のことで、[華衣]との婚約解消されたら嫌だった。[r]
[sp]急がないといけない、この想いを綴るには種もほしい』[p]
#
;[SE馬の鳴き声]
[playse storage=uma_jiko.ogg loop=false ]
『！！』
[p]
;[曇り空]倒れて空をみている
;寒さもあって倒れたところに馬車的なものに引かれる事故。
;ネリネの写真かイメージ,だんだん忘れられて枯れていくといいですね（無理
#
[stopse]
;==========================================
;病院 四条表示準備してます
[chara_mod name="bg" storage="bg/sijyou_byouin.jpg" time=100]
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/sijyou_byouin.jpg" time=100]
[whosay name="華衣" color=%mp.color]
『もう少ししたら傷も治るよね。そうしたら、ずっと』[p]
…………[wait time=1500][er]
[whosay name="華織" color="olivedrab"]
『わかった、だから[華衣]がくるまでもう少し持ちこたえてくれ！　』[p]
…………[wait time=1500][er]
[whosay name="華衣の婚約者の母"]
『……のものは持って行きますね 今までお世話になりました。[r]
[sp]申し訳ありませんが、しばらくは、私どもの事は、[r]
[sp]そっとして頂けますか……これからの事も考えなければ[r]
[sp]いけませんので』[p]
#
…………[wait time=1500][er]
;○もともとお情けの婚約者候補(家の付き合いで候補にいれただけ)だったので最期の話もできず、祖父との回想シーンなどで反対される
[whosay name="四条家祖父"]
『あんな片田舎に行かせるものか！　』[p]
[whosay name="四条家祖父"]
『もともとは、お情けの婚約者候補だ。[r]
[sp]華織、いくらお前の頼みでもそれはできない。[r]
[sp]……それに相手側にも、お情けと噂されて、[ruby text=ご]御迷惑が掛かる』[p]
;実は華織と話していた～という改変
[call target=*start storage="macro_tati_sijyou.ks"]
;【登場】四条
[四条ベース羽織]
[四条憂い]
;======四条登場======
[freeimage layer=13 time=500]
[layopt layer=13 visible=true]
;;======四条登場======
[whosay name="華衣" color=%mp.color]
「アンタが言わなければ、こんなことには！！　」[p]
;結果、妹に恨まれてしまったんだろうなぁとプレイヤーが想像する形
[iscript]
//#tyrano_base > div.layer.\31 _fore.layer_fore
var lay1=document.getElementsByClassName("layer 1_fore");
lay1[0].style.webkitFilter = "sepia(0%)";
[endscript]
;↑(◆B4nFWraU42さん作)回想シーン用セピア化スクリプト：セピア終了
;回想シーンおわり
;=================================================================================_
*seen5
;花園もどる
[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_nerine_niwa4.jpg" time=100]
[主人公ポーズ通常]
[wait time=10]
[主人公憂い]
[wait time=10]
[whosay name="華衣" color=%mp.color]
「こんな、手紙、どうして早く来てくれなかった？[r]
[sp]そうしたら　僕は、この場所にきて君を……」[p]
[autosave]
[四条困り]
[whosay name="華織" color="olivedrab"]
「[華衣]、今まで、うまく伝えれなくてごめん。[r]
[sp]けど、ずっと、ここにあったんだ……」[p]
;超利己的な性格なので修正・人に死ぬほど深い懺悔ってしたことないからわからない
[whosay name="華衣" color=%mp.color]
「！　……兄さんの話を信じていれば！！」[p]
[whosay name="華織" color="olivedrab"]
(ずっと彼女は、ここで待ってたんだ）[p]
[四条目閉じ]
(こんな想いを残すなんて、他の誰ができるのだろうか）[p]
[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様」[p]
[四条真剣]
[whosay name="華織" color="olivedrab"]
(辛い……けどもっと苦しいのは、僕じゃないんだ）[p]
[whosay name="華織" color="olivedrab"]
（前に進まないと。[r]
[sp]僕は、[名前]さんの為にも、何ができるのだろうか……)[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
[autosave]
#
華織様は私の手を強く握られた。[r]
その手から言いようのない想いが伝わってくる。[p]
[主人公目閉じ]
私も華織様の表情を見て、強く握り返した。[p]
『また会う日を楽しみに』　『幸せな思い出』 [p]
『忍耐』[p]
;【退場】四条
[四条退場]
;=================================================================================_
*seen6
;¥¥¥¥¥¥¥¥イベント6おわり¥¥¥¥¥¥¥¥
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
