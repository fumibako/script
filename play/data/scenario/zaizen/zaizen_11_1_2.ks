;【背景】[背景_庭]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

;【立ち絵】主人公：眉ひそめ
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……帰りません[r]
[sp] お母様は私を助けて下さったのです[r]
[sp]私、心配ですので上の控室に行きます！」[p]

#
財前様をおいて彼女の消えていった方へ[r]
向かい階段を上がり、人に聞いて[r]
彼女のいる部屋に向かった[p]

; 背景パーティ会場控室
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]


;【SE】ドアのノックの音

;【立ち絵】主人公：憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「失礼します［名字］です[r]
[sp] 入っていいですか？　」[p]

#財前母
「あ、ちょっと待って下さいね[r]
[sp] ……どうぞ」[p]

;【SE】カチャ

#
財前様のお母様は泣いていたようで[r]
目が赤かった[p]

;【立ち絵】主人公：憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫ですか？[r]
……あんなひどい事を言う[r]
財前様初めてです」[p]

#財前母
「それは私が悪いので仕方ないのですよ」[p]

;【立ち絵】主人公：真剣
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「仕方ない……ですか[r]
[sp] 親子なのですから分かり合えた方が[r]
[sp] 良いに決まってます！　」[p]

#財前母
「いえ仕方なのですよ[r]
[sp] 貴方はアルベルトの婚約者でしたのね」[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、まだ完全に結婚するとは[r]
[sp] 決まってませんが[r]
[sp] ところでアルベルトというのは[r]
[sp] 財前様の名前ですか？」[p]

#財前母
「ええ、あの子の独逸名です[r]
[sp] ゲルマン語の Adalbrecht（アダルブレヒト）[r]
[sp] に由来する名前で、輝ける、adal（高貴な）と[r]
[sp] berath（光）の意味を持っています」[p]

#財前母
「財前と一緒に考えました。[r]
[sp] 彬は内容と外観が調和しているさま、[r]
[sp] アルベルト・美彬で[r]
[sp] 輝ける・高貴で美しく調和する人」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[sp] 「とても良い名前ですね」[r]
[sp] （財前様は愛されて生まれてきたのね）[p]

#財前母
「ええ、そうでしょう！」[p]

#
お母様は昔を懐かしむように微笑んだ[r]
……だけどすぐにその顔は曇る[p]

#財前母
「ねえ、[名前]さん、昔話に[r]
[sp] 付き合ってくれませんか？[r]
[sp] 誰かに懺悔を聞いてほしいの」[p]

#
彼女は自分の中にある[r]
罪悪感をこらえきれず[r]
吐き出したいように見えた[p]

;【立ち絵】主人公：真剣
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

；背景洋館　全画面文字のみ表示
[テキスト全画面白文字無背景]
[sp] 私の父はこの国の独逸大使でしてね。[r]
私は蝶よ花よと何不自由なく育てられました。[r]
[sp] 父は私を自分の部下と結婚することを[r]
決めていて私もその事に[r]
何の疑問も抱いていませんでしたわ。[p]

; 呉服屋的な背景 　全画面文字のみ表示
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]


[sp] 出会った当時、財前は小さな呉服屋の跡取り[r]
でした。[r]
[sp] 小さな呉服屋と言っても背広やドレスなどの[r]
洋装も扱い始めていてオーダーメイドが質が[r]
いいと評判でしたので私は一度足を運んで[r]
みたくなったのです。[r]
[r]
[sp] 私はその呉服屋で財前と出会いました。[r]
[sp] そういえば今のアルベルトと若い頃の財前は[r]
似ていますねとても律儀な所が[r]
……財前は律儀で笑みも絶やさず[r]
話術に優れた方で人を見立てるのも上手でした。[r]
[r]
[sp] 私は財前の呉服屋をひいきにするようになり、[r]
だんだん財前と親しくなり[r]
私は財前に惹かれていったのです。[r]
[sp] 財前は家業を継ぐのではなく、[r]
新しい事業を始めたいと[r]
時流に乗って色々な事を始めたいと[r]
夢を私に語るようになりました。
[sp] 両親が反対する中、出来ずにいましたが。[r]
[sp] そんな中、[r]
私は父の部下と正式に婚約する事が決まりました。[r]
[sp] 財前は私に告白しました。[r]
[sp] お互い何となく気持ちは分ってました。[p]

;メッセージをもどします↓
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
; 背景パーティ会場控室
＃財前母
「そして私達は駆け落ちすることにしたのです。」[p]

;主人公驚
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！」

＃財前母
「駆け落ちして暫く、[r]
[sp] 貿易が盛んな港町に引っ越し身を隠しました。」[p]

; 港町的な背景　全画面文字のみ表示
[テキスト全画面白文字無背景]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[sp] 樹は森に隠せというように[r]
外国人が沢山いるところにいる方がいいと[r]
[sp] 慣れない家事を財前に教えられ過ごし、[r]
財前は貯めていた貯金で会社を興しました。[r]
[sp] といっても小さな会社でしたが、[r]
そして財前は寝るま間も惜しんて仕事をし[r]
好景気な時流もあって[r]
会社を数年で大きくしました。[r]
[sp] ……とても苦労したけれど[r]
お互いを支え合って乗り越えました。[p]

;メッセージをもどします↓
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

; 背景パーティ会場控室
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

#財前母
「アルベルトを身ごももったのは[r]
[sp] その数年後です[r]
[sp] 私達は話し合った結果[r]
[sp] 財前の実家を頼る事にしました 」[p]

[テキスト全画面白文字無背景]
; 呉服屋的な背景 　全画面文字のみ表示
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[sp] 会社の本社もこちらに移し[r]
財前のご両親と私達は話し合いました。[r]
[r]
[sp] けれど財前のお母様は私の事を嫌いました[r]
彼女はしきたりを守る事が第一の方でしたの[r]
[sp] 箸の使い方から一から指導され、[r]
何から何まで私を叱りましたアルベルトを[r]
産んでからもそれは変わらなかった。[r]
[r]
[sp] そしてアルベルトが3歳になったときでした[r]
父の部下の私の元婚約者が私を訪ねて、[r]
[sp] 父が大使の任期を終え、独逸に帰ると、[r]
自分がとりなすから一緒に帰ってくれないかと。[r]
[sp] もちろんアルベルトの事も財前のことも[r]
心残りでしたが、もう耐えられなかったのです。[r]
[sp] 私は彼の手を取り、独逸に帰りました。[p]


;メッセージをもどします↓
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]
;［背景控室］
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

#財前母
「私はわが身かわいさに[r]
[sp] 財前の事もアルベルトの事も[r]
[sp] 捨ててしまったのです」[p]

#
涙を流しながらそう[r]
彼女は締めくくった[r]
私は彼女の手を取った[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「過ぎてしまったことを[r]
[sp] 悔やんでも仕方ありませんわ[r]
[sp] 今は財前様と分かり合えるように[r]
[sp] なる事を考えましょう」[p]

#財前母
「アルベルトと分かり合う？」[p]

;【立ち絵】主人公：真剣
[主人公真剣]
「ええ、[r]
[sp] 財前様にとっても貴方にとっても[r]
[sp] それが一番いいと思います[r]
[sp] ずっと罪悪感に苦しまれているのでしょう？」[p]

#財前母
「ええ、ずっと悔やんでました[r]
[sp] でもあの子は私を許さないでしょう」[p]

;【立ち絵】主人公：真剣
;[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいえ、
[sp] 財前様は話の分かる方です[r]
[sp] 財前様は恥などと言っていますが[r]
[sp] 私は貴方が悪いとは思いません」[p]

;【立ち絵】主人公：目閉じ微笑み[r]
[主人公ほほえみ]
[waite time=10]
[主人公目閉じ]
「貴方は財前様の実のお母様なのです[r]
[sp] だから貴方は財前様の事を[r]
[sp] 叱っていいと思います[r]
[sp] その方が財前様も吹っ切れると思います」[p]

;【立ち絵】財前：眉ひそめ
[whosay name="財前美彬" color="#7a65b2"]
「全く貴方はお節介な人ですね」[p]

[主人公通常]
#
振り向くと財前様が[r]
ドアを開けて立っていた[r]
そしてお母様に視線を向ける[p]

;【立ち絵】財前：眉ひそめ
[whosay name="財前美彬" color="#7a65b2"]
「ドアの外にまで声が[r]
[sp] 漏れていましたよ[r]
[sp] こんな場所で事情を[r]
[sp] 話すのはやめて下さい」[p]

;【立ち絵】主人公：真剣
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「聞いていらっしゃったのですね？[r]
[sp] それなら事情はわかるはずです[r]
[sp] お母様を責めないで下さい」[p]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん、貴方は少し[r]
[sp] 黙っていてください」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「私は祖母に[r]
[sp] 貴方の悪口を言い聞かされて[r]
[sp] 育ってきましたし[r]
[sp] 少々偏見があったことは認めましょう」[p]

#財前母
「私を許してくれるの？」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「ですが他の男の手を取って[r]
[sp]父と私を捨てたことは[r]
[sp] 変わりありません[r]
[sp] ……貴方は弱い人だ」[p]

#財前母
「アルベルト、私は限界でした！[r]
[sp] 眠れない夜が続いたり食欲が無くなり[r]
[sp] あれ以上居たら病気になっていました[r]
[sp] 彼も私が出て行くことを許してくれたのです」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「ええ、
[sp] 父は貴方の事を許しているようです[r]
[sp] だが、私の気持ちを考えた事はありますか？」[p]

;【立ち絵】財前：怒り
[whosay name="財前美彬" color="#7a65b2"]
「貴方の罪悪感以上に私も傷ついたのですよ！[r]
[sp] 私の外見は貴方の血も色濃く受け継いでいる[r]
[sp] どんなに負担になっているか考えた事はありますか？」[p]

[主人公憂い]
#
声を荒げて言う財前様は[r]
怖かったけれど[r]
それ以上に痛々しく想えた[p]

#
私は思わず財前様の手を取った[r]
そうでないと財前様が消えて[r]
しまいそうだと思ったから。[p]

【立ち絵】主人公：悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……[r]
（財前様はお母様を憎む事で[r]
[sp] ずっと心を支えてたんだわ）[p]

;【立ち絵】財前：悲しみ
[whosay name="財前美彬" color="#7a65b2"]
「貴方は私を哀れむ気ですか？[r]
[sp] いっそ惨めな気分ですやめてください」[p]

#
そういったけれどまだ[r]
手は解かれてない[r]
まだ私の言葉は届くのかしら[p]

;【立ち絵】主人公 : 悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……[r]
;【立ち絵】主人公 :訴えるような表情
「それでも」[p]

#
財前様は私の手をぎゅっと握った[r]
そして苦悩するように目を閉じた[r]
数分、いえもう少し長い時経った後[r]
お母様に向かって言った[p]

;【立ち絵】財前：目閉じ
「ええ、私もいつまでも子供ではないです。[r]
[sp] 私も意固地に貴方を避けたり傷つけるのも、[r]
[sp] これまでにします[r]
[sp] ……私も私でいる為に貴方を許します」[p]

#財前母
「アルベルト！」[p]

#
お母様は目を見開いて[r]
それから泣いた……嬉し涙だわ[p]

#財前母
「ありがとう。[r]
[sp] [名字]さんも、[r]
[sp] いえ[名前]さんと呼んでもいいかしら？」[p]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]


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
