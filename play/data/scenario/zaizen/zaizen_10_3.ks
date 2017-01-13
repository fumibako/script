;=============================================
;イベント４回目【薔薇園でのデート】10月3週、zaizen_bara.jpg
;=======================お芝居の準備中です==========================================
*replay_zaizen_10_3
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_3 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日は財前様と、 ゆっくりお話できるわ……[p]
[主人公目閉じ]
[sp] 先日お手紙を頂いたけれど、 やはり忙しい方ね）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[r]
[sp]秋麗の候、貴方様には一段とご清栄の由と存じます。[r]
[r]
[sp]さて、この度、[名前]さんと薔薇園の散策をしたく手紙を[r]
出しました。[p]

[sp]やはり私も形式にのっとって貴方と何度かお出かけした後に[r]
成婚という形が望ましいと思います。[r]
[r]
[sp]申し訳ないですが私は忙しく貴方に都合を合わせて頂きたいと[r]
思っています。[r]
[ruby text=じゅう]十月[ruby text=さん]三週の日曜日が、私の予定が空いておりますのですが[r]
どうでしょうか？[p]
[sp][r][r]
[sp]返信お待ちしております。[r]
[r]
[sp]それでは用件のみですが失礼いたします。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　財前　美彬[p]
[resetfont]
[手紙財前読了 fumi_number=]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[主人公眉下げ下]
;【立ち絵】主人公：真剣
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（そろそろ時間ね）[p]

[whosay name="磯野" color="dimgray"]
「お嬢様。 財前様がお見えになりました」[p]
#

;【立ち絵】主人公：真剣
[主人公通常]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、今行きます！」[p]
 [主人公口通常]

[主人公目閉]
;=========================================================================================================
[暗転２]
;【背景】薔薇園
[chara_mod name="bg" storage="bg/I9IhvvVdPo/baraen.jpg" time=50]
[eval exp="f.haikei_credit='photo by I9IhvvVdPo'"]
[主人公通常]
;====================
;【立ち絵】財前 微笑み
;[財前サイズ隣に並ぶ]
[財前ベーススーツ]
[財前通常]
;====================
[暗転２終了]
;=========================================================================================================
#
薔薇の花々は咲き誇り、色とりどりの美しさをみせていた。[r]
私たちはゆっくりと歩き、財前様は私に気を遣うように話しかける。[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「今日は少し風が冷たい。 寒くありませんか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ思案
[主人公目閉じ]
[主人公眉下げ下]
「いいえ、……それよりお話があります」[p]

[whosay name="財前美彬" color="#7a65b2"]
[財前目通常]
[財前眉ひそめ]
;【立ち絵】財前：眉ひそめ
「一体、何の話でしょうか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「私は、言葉の駆け引きは苦手なので、はっきり言いますわ。[r]
[sp]どうして恋愛を[ruby text=わずら]煩わしいと思っていらっしゃるのですか？」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
[財前冷ややか]
「貴方が知らなくてもいい事ですよ」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公憂い]
「私が知りたいのです。 家族になるんですもの。[r]
[sp]貴方のお母様に関係あることなのですか？」[p]
[主人公口通常]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：驚き
[財前驚き]
「……お父上から何かお聞きになりましたか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
「いえ、お父様からではありません。 少し噂を聞いた程度です。[r]
 [sp]ですが、貴方の口から聞きたいのです」[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：目伏せ
[財前不快]
「母は父と恋愛し、私を産んだにも関わらず、[r]
[sp]結局は、独逸に帰る事を望み、私と父を捨てて故国に[r]
[sp]帰った……それだけです」[p]

「私は恋の絆などなんの意味もないと知っている」[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：冷ややか
[財前冷ややか]
「貴方が恋愛を望むなら、私との縁談を今から断っても構わない。[r]
[sp]今なら体面を傷つける事もなく無効にできます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公目閉じ]
「……どうしてそのような事を簡単に言えるのですか？」[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：目伏せ
[財前目閉じ]
[財前口開]
「さあ？ 私を冷たいと感じますか？」[p]
[主人公憂い]
[財前口通常]
[財前眉冷ややか]
[財前目伏]
「私は感情的に走る事を好みません。[r]
[sp]感情的になると人は余裕がなくなり、とても見苦しい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公憂い]
「財前様……」[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：通常
[財前冷ややか]
「ああ、生い立ちについての同情は不要です。[r]
[sp]母の事は恥ですが、今は何とも思っていないですから」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公目閉じ]
（あくまで冷静な様子から、何も伺えないけど[r]
[sp]財前様は、沢山傷ついてきたのでは、ないのかしら？）[p]

[whosay name="財前美彬" color="#7a65b2"]
[財前不快]
;【立ち絵】財前：ため息

「同情は不要だといっているでしょう。 [名前]さんは顔に出やすい人ですね」[p]
[財前冷ややかな微笑み]
[財前伏目パチ1回]
「ですが素直で物怖じしない所は気に入っています。[r]
[sp]将来、化けるかもしれませんのでね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ思案
[主人公目伏]
（なんとか財前様と、分かり合えないのかしら？）[p]

[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
;【立ち絵】財前：ため息
「全く、人の弱みに付け込む気ですか？」[p]
[財前通常]
「私は、人を愛する気が全くありません。[r]
[sp]母の事を話すのは今日限り……[r]
[sp]今後、その話題を出すようなら婚約を破棄します」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ

「はい。今後、この話題には触れませんわ。[r]
[sp]お約束します」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（財前様の一番触れてはいけない部分なのだわ）[p]
[主人公目伏]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：冷ややかな微笑み
[財前冷ややかな微笑み]
「賢明な回答です」[p]

[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
;【立ち絵】財前：通常
「ああ、ところで急ですが[r]
[sp][ruby text=じゅう]十[ruby text=いち]一月の初めの日曜日ですが予定を開けてくれませんか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公通常]
「ええ、何かありますの？」[p]

[whosay name="財前美彬" color="#7a65b2"]
[財前通常]
;【立ち絵】財前：通常
「懇意にしている財閥の総帥の会社の祝賀パーティがあります。[r]
[sp]貴方のお父上から、そういった機会に同伴する約束を[r]
[sp]したので出席して頂きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：驚き
[主人公驚]
「！」[p]
（まさかこんな早くにパーティの機会があるなんて）[p]
[whosay name="財前美彬" color="#7a65b2"]
[主人公口通常]
[財前冷ややかな微笑み]
;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「不安ですか？　[r]
[sp]まあ今まで箱入りの御令嬢でしたしね」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
「いいえ、出席いたします、[r]
[sp]私は、貴方のお役に立ちたいと思います」[p]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：通常
[財前横目]
[whosay name="財前美彬" color="#7a65b2"]
「貴方には表面上、私の理想の妻になってもらいます。[r]
[sp]ただそれだけですよ」[p]
#

;【立ち絵】主人公：目伏せ微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公眉下げ下]
[主人公目伏柔]
[主人公口ほほえみ]
「今はそれでもいいです。[r]
[sp]私も、まだ貴方に恋をしていません」[p]

[財前目閉じ]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「貴方もいずれ現実を知るでしょう。[r]
[sp]今は、私も今の貴方で満足する事にします。[r]
[sp]今日は風が冷たいので、そろそろ帰りましょう」[p]
[財前通常]
#
;【立ち絵】主人公：目伏せ微笑み
[主人公憂い]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]
[主人公目閉]
;==========================歩いているので背景変更===========================================================
[暗転２]
;【背景】薔薇園２　またはバライメージ
[chara_mod name="bg" storage="bg/B4nFWraU42/zaizen_bara.jpg" time=50]
[eval exp="f.haikei_credit='名無しさん＠１'"]
[暗転２終了]
;=========================================================================================================
[主人公憂い]
#
お見合いでは、財前様の後ろを歩いたけれど、今は隣を歩いている。[p]

財前様をチラッと見ても、その表情からは何も読み取れない。[p]

;【立ち絵】主人公：目伏せ悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉困り]
（財前様はいつも歩幅を合わせてくれる。[r]
[sp]きっと、女性のエスコートに慣れてるのね）[p]
[主人公憂い]
#
そう思った途端、胸がチクチクしだした。[p]

[主人公目閉じ]
（……この気持ちは何？）[p]

[fadeoutbgm time=3000]
;====================================花びら=====================================================================
[image name="saku1" storage="bg/B4nFWraU42/img_sakura_sijyou.png" layer=1 zindex=2 left=-200]
;------------keyframe の定義
[keyframe name="animation1"]
[frame p=100% x="3000" scale="4"]
[endkeyframe]
;アニメーション実行
[kanim name="saku1" keyframe="animation1" time="7000" ]
[er]
;=========================================================================================================
#
風が吹いて薔薇の花びらが舞う。[p]

;====================================花びら消す============================================================
[iscript]
$('.saku1').remove();
[endscript]
;=========================================================================================================

――　美しいけど愛おしく切ない風景だわ[r]
こんな風に感じるのは、なぜなのかしら……[p]

;=========================================================================================================
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image layer=29 x=1 y=1 storage="bg/anten.jpg" time=1300 visible=true]
[wait time=10]
[財前退場]
[主人公退場]
[wait time=10]
[暗転]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
[freeimage layer = 29 time=1000]
;薔薇園デート編終了
;=========================================================================================================
;@jump storage="event.ks" target=*event_owari
[イベントシーン終了]
@jump storage="test_zaizen.ks"
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
