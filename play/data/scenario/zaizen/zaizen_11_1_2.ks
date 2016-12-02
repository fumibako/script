;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_1_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】パーティ会場
[chara_mod name="bg" storage="bg/test_zaizen_paty1.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[財前ベース燕尾服]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです　テスト用===============================

これはテストです。実際は表示されません。クリックしてください。[p]

;===========================
;続きですのラベルを
*seen_1
[er]
;=========================

;【立ち絵】主人公：眉ひそめ
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……帰りません。[sp]お母様は私を助けて下さったのです[r]
[sp]私、心配ですので上の控室に行きます！」[p]


;==============================================================================
[暗転２]
[財前退場]
;パーティ会場廊下　暗転
;【背景】暗転黒背景、会話ウィンドウは残る
[chara_mod name="bg" storage="toumei.gif" time=500]
[主人公憂い]
[暗転２終了]
;==============================================================================
#
財前様をおいて彼女の消えていった方へ向かい、[r]
階段を上がり、人に聞いて彼女のいる部屋に向かった。[p]
;【SE】ドアのノックの音　SEお願いします
;[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公：憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「失礼します。[名字]です。 入っていいですか？　」[p]

[whosay name="財前母"]
「あ、ちょっと待って下さいね、……どうぞ」[p]

[主人公目閉]
;【SE】ドアが開く【SE】カチャ
[playse storage=door_open.ogg loop=false ]

;==============================================================================
[暗転２]
; 背景パーティ会場控室
[主人公眉下げ下]
[主人公目伏]
;憂いまでの自然な切り替え表情
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[暗転２終了]
;==============================================================================

#
財前様のお母様は泣いていたようで、目が赤かった。[p]

;【立ち絵】主人公：憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫ですか？[r]
[sp]……あんなひどい事を言う財前様、初めてです」[p]

[whosay name="財前母"]
「それは私が悪いので仕方ないのですよ」[p]

;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「仕方ない……ですか[r]
[sp]親子なのですから分かり合えた方が、良いに決まってます！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]


[主人公目伏]
[whosay name="財前母"]
「いえ仕方ないのですよ[r]
[sp]貴方はアルベルトの婚約者でしたのね」[p]



[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、まだ完全に結婚するとは、決まってませんが」[p]

;【立ち絵】主人公：通常
[主人公通常]
「ところでアルベルトというのは、
[sp] 財前様の名前ですか？」[p]

[whosay name="財前母"]
「ええ、あの子の独逸名です。[r]
[sp]ゲルマン語の Adalbrecht(アダルブレヒト)に由来する名前で、[r]
[sp]輝ける、adal（高貴な）と berath（光）の意味を持っています」[p]

[whosay name="財前母"]
「財前と一緒に考えました。[r]
[sp]彬は内容と外観が調和しているさま、[r]
[sp]アルベルト・美彬で、 輝ける・高貴で美しく調和する人」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「とても良い名前ですね」[p]

（財前様は愛されて生まれてきたのね）[p]

[whosay name="財前母"]
「ええ、そうでしょう！」[p]

#
お母様は昔を懐かしむように微笑んだ。[r]
……だけどすぐにその顔は曇る。[p]

[whosay name="財前母"]
「ねえ、[名前]さん、昔話に付き合ってくれませんか？[r]
[sp]誰かに懺悔を聞いてほしいの」[p]

#
彼女は自分の中にある罪悪感をこらえきれず、[r]
吐き出したいように見えた。[p]

;【立ち絵】主人公：真剣
;[主人公真剣]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;暗転で落ち着いてから上にのせます。
[暗転]
;【テキスト全画面】 全画面文字のみ表示
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】洋館
[image layer=29 x=1 y=1 storage="bg/zaizen_youkan.jpg" time=1300 visible=true]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp] 私の父はこの国の独逸大使でしてね。[r]
私は蝶よ花よと何不自由なく育てられました。[r]
[sp] 父は私を自分の部下と結婚することを[r]
決めていて私もその事に[r]
何の疑問も抱いていませんでしたわ。[p]

;===============================================================
;【背景】呉服屋的な背景 　全画面文字のみ表示
[image layer=29 x=1 y=1 storage="bg/zaizen_gofuku.jpg" time=1300 visible=true]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;===============================================================

;最大6~7行
[sp] 出会った当時、財前は小さな呉服屋の跡取り[r]
でした。[r]
[sp] 小さな呉服屋と言っても背広やドレスなどの[r]
洋装も扱い始めていてオーダーメイドが質が[r]
いいと評判でしたので私は一度足を運んで[r]
みたくなったのです。[p]

[sp] 私はその呉服屋で財前と出会いました。[r]
[sp] そういえば今のアルベルトと若い頃の財前は[r]
似ていますねとても律儀な所が[r]
……財前は律儀で笑みも絶やさず[r]
話術に優れた方で人を見立てるのも上手でした。[p]

[sp] 私は財前の呉服屋をひいきにするようになり、[r]
だんだん財前と親しくなり[r]
私は財前に惹かれていったのです。[r]
[sp] 財前は家業を継ぐのではなく、[r]
新しい事業を始めたいと[r]
時流に乗って色々な事を始めたいと[r]
夢を私に語るようになりました。[p]

[sp] 両親が反対する中、出来ずにいましたが。[r]
[sp] そんな中、[r]
私は父の部下と正式に婚約する事が決まりました。[r]
[sp] 財前は私に告白しました。[r]
[sp] お互い何となく気持ちは分ってました。[p]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;【背景】パーティ会場控室
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
;全画面用背景を消します
[freeimage layer=29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name="財前母"]
「そして私達は駆け落ちすることにしたのです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公驚
[主人公驚]
「！」[p]

[whosay name="財前母"]
[主人公眉下げ下]
[主人公口通常]
「駆け落ちして暫く、貿易が盛んな港町に引っ越し[r]
[sp]身を隠しました。」[p]
[主人公憂い]
;==========================スクリプト・全画面表示の間に設定===============================
#
;暗転で落ち着いてから上にのせます。
[暗転]
;【テキスト全画面】 全画面文字のみ表示
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】港町的な背景
[image layer=29 x=1 y=1 storage="bg/zaizen_minato.jpg" time=1300 visible=true]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================全画面表示スクリプトここまで========================================

[sp] 樹は森に隠せというように[r]
外国人が沢山いるところにいる方がいいと[r]
[sp] 慣れない家事を財前に教えられ過ごし、[r]
財前は貯めていた貯金で会社を興しました。[p]
[sp]といっても小さな会社でしたが、[r]
そして財前は寝るま間も惜しんて仕事をし[r]
好景気な時流もあって[r]
会社を数年で大きくしました。[p]
[sp] ……とても苦労したけれど[r]
お互いを支え合って乗り越えました。[p]
[fadeoutbgm time=3000]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;【背景】パーティ会場控室
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
;全画面用背景を消します
[freeimage layer=29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name="財前母"]
「アルベルトを身ごももったのは、 その数年後です。[r]
[sp]私達は話し合った結果、財前の実家を頼る事にしました」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
;==========================スクリプト・全画面表示の間に設定===============================
#
;暗転で落ち着いてから上にのせます。
[暗転]
;【テキスト全画面】 全画面文字のみ表示
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】;呉服屋的な背景 
[image layer=29 x=1 y=1 storage="bg/zaizen_gofuku.jpg" time=1300 visible=true]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================全画面表示スクリプトここまで========================================
[sp] 会社の本社もこちらに移し[r]
財前のご両親と私達は話し合いました。[r]
[r]
[sp] けれど財前のお母様は私の事を嫌いました。[r]
[r]
彼女はしきたりを守る事が第一の方でしたの。[r]
[sp] 箸の使い方から一から指導され、何から[r]
何まで私を叱りました。[r]
アルベルトを産んでからもそれは変わらなかった。[r]
[p]
[sp] そしてアルベルトが3歳になったときでした。[r]
[r]
父の部下の私の元婚約者が私を訪ねて、[r]
[sp]父が大使の任期を終え、独逸に帰ると、[r]
自分が、とりなすから一緒に帰ってくれないかと。[p]
[sp] もちろんアルベルトの事も財前のことも[r]
心残りでしたが、もう耐えられなかったのです。[r]
[r][r]
[sp]私は彼の手を取り、独逸に帰りました。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;【背景】パーティ会場控室
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
[call target=*start storage="macro_tati_zaizen.ks"]
[表示準備 storage="bg/zaizen_paty_hikae.jpg"]
[主人公憂い]
;全画面用背景を消します
[freeimage layer=29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name="財前母"]
「私は、わが身かわいさに財前の事もアルベルトの事も[r]
[sp]捨ててしまったのです」[p]

#
涙を流しながら、そう彼女は締めくくった。[r]
私は彼女の手を取った。[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：真剣　憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「過ぎてしまったことを悔やんでも仕方ありませんわ。[r]
[sp]今は財前様と分かり合えるようになる事を考えましょう」[p]



[whosay name="財前母"]
「アルベルトと分かり合う？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公口ほほえみ]
「ええ、[r]
[sp]財前様にとっても貴方にとっても、それが一番いいと思います。[r]
[sp]ずっと罪悪感に苦しまれているのでしょう？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[whosay name="財前母"]
「ええ、ずっと悔やんでました。[r]
[sp]でも、あの子は私を許さないでしょう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公眉下げ下]
「いいえ、財前様は話の分かる方です。[r]
[sp]財前様は、恥などと言っていますが、私は貴方が悪いとは[r]
[sp]思いません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ微笑み[r]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「貴方は財前様の実のお母様なのです。[r]
[sp]だから貴方は財前様の事を叱っていいと思います。[r]
[sp]その[ruby text=ほう]方が財前様も、吹っ切れると思います」[p]
[fadeoutbgm time=3000]
;【立ち絵】財前：眉ひそめ
[whosay name="財前美彬" color="#7a65b2"]
「全く貴方はお節介な人ですね」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

[主人公通常]
#
;====================
;【立ち絵】財前 微笑み
[財前ベース燕尾服]
[財前冷ややか]
[表示開始 time=300]
;====================

#
振り向くと財前様がドアを開けて立っていた。[r]
そして、お母様に視線を向ける。[p]

;【立ち絵】財前：眉ひそめ
[財前眉ひそめ]
[whosay name="財前美彬" color="#7a65b2"]
「ドアの外にまで声が漏れていましたよ。[r]
[sp]こんな場所で事情を話すのはやめて下さい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公通常]
「聞いていらっしゃったのですね？[r]
[主人公口ムッ]
[sp]それなら事情はわかるはずです。 お母様を責めないで下さい」[p]

;【立ち絵】財前：ため息
[財前ため息]
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん、貴方は少し黙っていてください」[p]

;【立ち絵】財前：冷ややか
[財前冷ややか]
[whosay name="財前美彬" color="#7a65b2"]
「私は、祖母に貴方の悪口を言い聞かされて育ってきましたし[r]
[sp]少々偏見があったことは認めましょう」
[主人公眉下げ下]
[p]

[whosay name="財前母"]
「私を許してくれるの？」[p]

;【立ち絵】財前：冷ややか
[財前目閉じ]
[whosay name="財前美彬" color="#7a65b2"]
「ですが他の男の手を取って、父と私を捨てたことは[r]
[sp]変わりありません。
[主人公憂い]
[財前目伏]
……貴方は弱い人だ」[p]

[whosay name="財前母"]
「アルベルト、私は限界でした！[r]
[sp]眠れない夜が続いたり食欲が無くなり、あれ以上居たら[r]
[sp]病気になっていました」[p]

「財前も私が出て行くことを許してくれたのです」[p]

;【立ち絵】財前：冷ややか[財前冷ややか]
[財前眉ひそめ]
[財前伏目パチ1回]
[whosay name="財前美彬" color="#7a65b2"]
「ええ、父は貴方の事を許しているようです。[r]
[sp] だが、私の気持ちを考えた事はありますか？」[p]

;【立ち絵】財前：怒り
[財前怒り]
[whosay name="財前美彬" color="#7a65b2"]
「貴方の罪悪感以上に私も傷ついたのですよ！[r]
[主人公目大]
[sp]私の外見は貴方の血も色濃く受け継いでいる。[r]
[sp]どんなに負担になっているか考えた事はありますか？」[p]


[fadeoutbgm time=3000]
[主人公憂い]
#
声を荒げて言う財前様は、怖かったけれど[r]
それ以上に痛々しく想えた。[p]

#
私は思わず財前様の手を取った。[r]
そうでないと財前様が消えてしまいそうだと思ったから。[p]

;【立ち絵】主人公：悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……」[p]

（財前様はお母様を憎む事で、ずっと心を支えてたんだわ）[p]

;【立ち絵】財前：悲しみ 憂いがない！
[財前困り]
[whosay name="財前美彬" color="#7a65b2"]
「貴方は私を哀れむ気ですか？[r]
[sp]いっそ惨めな気分ですやめてください」[p]

[財前不快]
#
そういったけれどまだ手は解かれてない。[p]

[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（まだ、私の言葉は届くのかしら）[p]

;【立ち絵】主人公 : 悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……」[p]

;【立ち絵】主人公 :訴えるような表情
[主人公目閉じ]
「それでも」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[財前通常]
#
財前様は私の手をぎゅっと握った。[r]
そして苦悩するように目を閉じた。[p]

数分……いえ、もう少し長い時経った後、[r]
お母様に向かって言った。[p]

;【立ち絵】財前：目閉じ
[財前目閉じ]
[whosay name="財前美彬" color="#7a65b2"]
「ええ、私もいつまでも子供ではないです。[r]
[sp]私も意固地に貴方を避けたり傷つけるのも、これまでにします。[r]
[sp]……私も私でいる為に貴方を許します」[p]

[whosay name="財前母"]
「アルベルト！」[p]
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
#
お母様は目を見開いて[r]
それから泣いた……嬉し涙だわ[p]

[whosay name="財前母"]
「ありがとう。 [名字]さんも、[r]
[sp]いえ[名前]さんと呼んでもいいかしら？」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]


;================================テストメニューを抜けた時点で表示されませんが後で削除します===============================
[if exp="tf.test_zaizen==true"]
#
;演出の繋がりを知りたいので
[er]
テストフラグで表示されています。[r]
[link storage="zaizen/zaizen_11_1_3.ks" target="seen_1"]つづきをみる[endlink][r]
[link storage="zaizen/zaizen_11_1_bad1.ks" target="seen_1"]bad1をみる[r]
[link target="end_test"]テストをおわる[endlink][r]
[s]
*end_test
[endif]
;=====================================================================================================================
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
