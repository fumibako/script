;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*11_1_2 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】パーティ会場
[bg wait=true method='crossfade' storage="../fgimage/bg/test_zaizen_paty1.jpg" time=600]
;[eval exp="f.haikei_credit=''"]
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
;↓本編選択肢後にメッセージレイヤを戻す処理です
[if exp="f.okeiko_gamen == true"]
[cm]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[endif]
;=========================
[if exp="tf.test_gamen == true"]
zaizen_11_1_2.ks[r]
テストページから開始しています。分岐地点までjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[ct]
[イベント中テスト数値表示]
@jump target=*seen_sentaku
;@jump target=*sentaku_to_bad_or_other
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[ct]
[イベント中テスト数値表示]
[endif]

;【立ち絵】主人公：眉ひそめ
[主人公目閉じ]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……帰りません。 お母様は私を助けて下さったのです。[r]
[sp]私、心配ですので様子を見に行きます！」
[autosave]
[wait time=10]
[p]

;==============================================================================
[暗転２]
[財前退場]
;パーティ会場廊下　暗転
;【背景】暗転黒背景、会話ウィンドウは残る
[bg wait=true storage="toumei.gif" time=500]
[主人公憂い]
[暗転２終了]
;==============================================================================
#
;財前様をおいて彼女の消えていった方へ向かい、階段を上がり、人に聞いて彼女のいる部屋に向かった。[p]
;階段上がり、人に聞いて・・・中間を説明するならセリフ＋地の文でしっかりとしたシーンにしては　
;中間が重要でなければ下記でいいです。
財前様をおいて彼女のいる部屋へと向かった。[p]

;【SE】ドアノック音(トントン)
[playse storage=door-knock.ogg loop=false ]

;【立ち絵】主人公：憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「失礼します。 [名字]です。 入っていいですか？」
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「あ、ちょっと待って下さいね、……どうぞ」[p]

[主人公目閉]
;【SE】ドアが開く【SE】カチャ
[playse storage=door_open.ogg loop=false ]

;==============================================================================
[暗転２]
[主人公眉下げ下]
[主人公目伏]
;憂いまでの自然な切り替え表情
;【背景］パーティ会場控室
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[暗転２終了]
;==============================================================================

#
財前様のお母様は泣いておられたようで、目が赤かった。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「大丈夫ですか？[r]
[sp]……あんな酷い事を言う財前様、初めてです」[p]

[whosay name="財前母"]
「それは私が悪いので、仕方ないのですよ」[p]

;【立ち絵】主人公：真剣

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公目閉じ]
「仕方ない……ですか。[r]
[sp]親子なのですから、分かり合えた方が良いに決まってます！」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]


[whosay name="財前母"]
[主人公目伏]
「いえ、仕方ないのですよ。[r]
[sp]貴方はアルベルトの婚約者でしたのね」
[autosave]
[wait time=10]
[p]

[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、まだ完全に結婚するとは決まってませんが」[p]

;【立ち絵】主人公：通常
[主人公通常]
「ところでアルベルトというのは、財前様の名前ですか？」
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「ええ、あの子の独逸名です。[r]
[sp]ゲルマン語の 
[ruby text=ア]A[ruby text=ダ]da[ruby text=ル]l[ruby text=ブ]b[ruby text=レ]re[ruby text=ヒ]ch[ruby text=ト]tに由来する名前で、[r]
[sp]輝ける、a[ruby text=高]d[ruby text=貴]a[ruby text=な]lと be[ruby text=光]rathの意味を持っています」[p]

[whosay name="財前母"]
「財前と一緒に考えました。[r]
[sp]彬は内容と外観が調和しているさま、[r]
[sp]アルベルト・美彬で、 輝ける・高貴で美しく調和する人」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「とても良い名前ですね」[p]

（財前様は愛されて生まれてきたのね）[p]

[whosay name="財前母"]
「ええ、そうでしょう！」[p]

#
お母様は昔を懐かしむように微笑んだ。[r]
;ずっとほほえみを回避
[主人公困り]
……だけど、直ぐにその顔は曇る。[p]

[whosay name="財前母"]
[主人公通常]
「ねえ、[名字]さん、昔話に付き合ってくれませんか？[r]
[sp]誰かに懺悔を聞いてほしいの」
[autosave]
[wait time=10]
[p]

#
彼女は自分の中にある罪悪感を[ruby text=こら]堪えきれず、吐き出したいように見えた。[p]

;【立ち絵】主人公：真剣　→　通常　前の段階で変更済
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;暗転で落ち着いてから上にのせます。
[暗転１]
;【テキスト全画面】 全画面文字のみ表示
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】洋館　全画面用
[image layer=29 x=0 y=0 storage="bg/zaizen_youkan_zengamen.jpg" time=1300 visible=true]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]私の父は駐日独逸大使でしてね。[r]
私は蝶よ花よと何不自由なく育てられました。[r]
[sp]父は私を自分の部下と結婚させることを[r]
決めていて私もその事に[r]
何の疑問も抱いていませんでしたわ。
[autosave]
[wait time=10]
[p]

;===============================================================
;【背景】呉服屋的な背景 　全画面文字のみ表示
[image layer=29 x=0 y=0 storage="bg/zaizen_gofuku.jpg" time=1300 visible=true]
[eval exp="f.haikei_credit=''"]
;===============================================================

;最大6~7行
[sp]出会った当時、財前は小さな呉服屋の跡取り[r]
でした。[r]
[sp]小さな呉服屋と言っても背広やドレスなどの[r]
洋装も扱い始めていてオーダーメイドの質が[r]
いいと評判でしたので私は一度足を運んで[r]
みたくなったのです。[p]

[sp]私はその呉服屋で財前と出会いました。[r]
[sp]そういえば今のアルベルトと若い頃の財前は[r]
似ていますね……とても律儀な所が。[r]
……財前は律儀で笑みも絶やさず[r]
話術に優れた方で服を見立てるのも上手でした。[p]

[sp]私は財前の呉服屋をひいきにするようになり、[r]
だんだん財前と親しくなり、[r]
私は財前に惹かれていったのです。[r]
[sp]財前は家業を継ぐのではなく、[r]
『新しい事業を始めたい』と[r]
『時流に乗って色々な事を始めたい』と[r]
夢を私に語るようになりました。[p]

[sp]両親が反対する中、出来ずにいましたが。[r]
[sp]そんな中、[r]
私は父の部下と正式に婚約する事が決まりました。[r]
[sp]それを知り 財前は私に告白しました。[r]
[sp]お互い何となく気持ちは分かっていました。[p]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;【背景】パーティ会場控室
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;全画面用背景を消します
[freeimage layer=29 time=600]
[wait time=600]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name="財前母"]
「そして私達は、駆け落ちすることにしたのです」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;主人公驚
[主人公驚]
「！」[p]

[whosay name="財前母"]
[主人公眉下げ下]
[主人公口通常]
「駆け落ちして[ruby text=しばら]暫く、貿易が盛んな港町に身を隠しました」[p]
[主人公憂い]
;==========================スクリプト・全画面表示の間に設定===============================
#
;暗転で落ち着いてから上にのせます。
[暗転１]
;【テキスト全画面】 全画面文字のみ表示
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】港町的な背景
[image layer=29 x=0 y=0 storage="bg/zaizen_minato.jpg" time=1300 visible=true]
[eval exp="f.haikei_credit=''"]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================全画面表示スクリプトここまで========================================

[sp]樹は森に隠せというように[r]
外国人が沢山いるところに暮らす方が良いと[r]
[sp]慣れない家事を財前に教えられ過ごし、[r]
財前は今までの貯金で会社を興しました。[p]
[sp]といっても小さな会社でしたが。[r]
[r]
そして財前は寝る間も惜しんて仕事をし[r]
好景気な時流もあって、会社を数年で[r]
大きくしました。[p]
[sp]……とても苦労したけれど[r]
お互いを支え合って乗り越えました。[p]
[fadeoutbgm time=3000]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;【背景】パーティ会場控室
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;全画面用背景を消します
[freeimage layer=29 time=600]
[wait time=600]
;↑背景画像残存防止のため時間調整します◆jsYiJcqRkk
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name="財前母"]
「アルベルトを身ごもったのは、 その数年後です。[r]
[sp]私達は話し合った結果、財前の実家を頼る事にしました」
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]
;==========================スクリプト・全画面表示の間に設定===============================
#
;暗転で落ち着いてから上にのせます。
[暗転１]
;【テキスト全画面】 全画面文字のみ表示
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;【背景】;呉服屋的な背景 
[image layer=29 x=0 y=0 storage="bg/zaizen_gofuku.jpg" time=1300 visible=true]
[eval exp="f.haikei_credit='---'"]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================全画面表示スクリプトここまで========================================
[sp]会社の本社もこちらに移し[r]
財前のご両親と私達は話し合いました。[r]
[r]
[sp]けれど財前のお母様は私の事を嫌いました。[r]
[r]
彼女は、[ruby text=し]仕[ruby text=きた]来りを守る事が第[ruby text=いち]一の方でしたの。[r]
[sp]箸の使い方から[ruby text=いち]一から指導され、何から[r]
何まで私を叱りました。[r]
アルベルトを産んでからもそれは変わらなかった。[r]
[autosave]
[wait time=10]
[p]
[sp]そして、アルベルトが[ruby text=さん]三歳になったときでした。[r]
[r]
父の部下が私を訪ねてきたのです。[r]
[r]
[sp]父が病に倒れ、大使の任期を終え、独逸に帰る。[r]
自分が、とりなすから一緒に帰ってくれないかと[r]
言われました。[p]
[sp]もちろんアルベルトの事も財前のことも[r]
心残りでしたが、もう耐えられなかったのです。[r]
[r][r]
[sp]私は、独逸に帰りました。[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;【背景】パーティ会場控室
[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/zaizen_paty_hikae.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[表示準備 storage="bg/I9IhvvVdPo/zaizen_paty_hikae.jpg"]
[主人公憂い]
;全画面用背景を消します
[freeimage layer=29 time=600]
[wait time=600]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name="財前母"]
「私は、[ruby text=わ]我が[ruby text=み]身[ruby text=か]可[ruby text=わい]愛さに財前の事もアルベルトの事も[r]
[sp]捨ててしまったのです」[p]

#
涙を流しながら、そう彼女は締めくくった。[r]
私は、彼女の手を取った。
[autosave]
[wait time=10]
[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：真剣　憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「過ぎてしまったことを悔やんでも仕方ありませんわ。[r]
[sp]今は、財前様と分かり合えるように考えましょう」[p]

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
[sp]でも、あの子は私を許さないでしょう」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣
[主人公目閉じ]
[主人公眉下げ下]
「いいえ、財前様は話の分かる方です。[r]
[sp]財前様は、恥などと言っていますが、私は貴方だけが[r]
[sp]悪いとは思いません」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ微笑み[r]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「貴方は財前様の実のお母様なのです。[r]
[sp]だから貴方は財前様に許していただきましょう。[r]
[sp]その[ruby text=ほう]方が財前様も、吹っ切れると思います」[p]
[fadeoutbgm time=3000]
;【立ち絵】財前：眉ひそめ
[whosay name="財前美彬" color="#7a65b2"]
「全く貴方は、お節介な人ですね」[p]
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
そして、お母様に視線を向ける。
[autosave]
[wait time=10]
[p]

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
[sp]それなら事情は分かるはずです。 お母様を責めないで下さい」[p]

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
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「私を許してくれるの？」[p]

;【立ち絵】財前：冷ややか
[財前目閉じ]
[whosay name="財前美彬" color="#7a65b2"]
「ですが父と私を捨てたことは、変わりありません。[r]
[主人公憂い]
[財前目伏]
[sp]……貴方は弱い人だ」[p]

[whosay name="財前母"]
「アルベルト、私は限界でした！[r]
[sp]眠れない夜が続いたり食欲が無くなり、あれ以上[ruby text=い]居たら[r]
[sp]病気になっていました」[p]

「財前も私が出て行くことを許してくれたのです」[p]

;【立ち絵】財前：冷ややか[財前冷ややか]
[whosay name="財前美彬" color="#7a65b2"]
[財前眉ひそめ]
[財前伏目パチ1回]
「ええ、父は貴方の事を許しているようです。[r]
[sp]だが、私の気持ちを考えた事はありますか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：怒り
[財前怒り]
[whosay name="財前美彬" color="#7a65b2"]
「貴方の罪悪感以上に私も傷ついたのですよ！[r]
[主人公目大]
[sp]私の外見は貴方の血も色濃く受け継いでいる。[r]
[sp]どんなに負担になっているか考えた事はありますか？」[p]

[fadeoutbgm time=3000]

#
[主人公憂い]
声を荒げ言う財前様は、怖かったけれど、それ以上に痛々しく想えた。[p]

#
[財前口通常]
私は思わず財前様の手を取った。[r]
そうしないと財前様が消えてしまいそうだと思ったから。
[autosave]
[wait time=10]
[p]
;そうしないと

;【立ち絵】主人公：悲しみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「財前様……」[p]

（財前様はお母様を憎む事で、ずっと心を支えてたんだわ）[p]

;【立ち絵】財前：悲しみ 憂いがない！
[whosay name="財前美彬" color="#7a65b2"]
[財前困り]
「貴方は私を哀れむ気ですか？[r]
[sp]いっそ惨めな気分です。[sp]やめてください」
[autosave]
[wait time=10]
[p]
#
[財前不快]
そういったけれどまだ手は解かれてない。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
（まだ、私の言葉は届くのかしら）
[autosave]
[wait time=10]
[p]

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


#
[財前目閉じ]
財前様は私の手をぎゅっと握った。[r]
そして苦悩するように目を閉じた。
[autosave]
[wait time=10]
[p]

数分……いえ、もう少し長い時経った後、お母様に向かって言った。[p]

;【立ち絵】財前：目閉じ
[whosay name="財前美彬" color="#7a65b2"]
[財前眉下げ]
[財前目伏]
「ええ、私もいつまでも子供ではないです。[r]
[sp]私も意固地に貴方を避けたり傷つけるのも、これまでにします。[r]
[sp]……私も私でいる為に貴方を許します」
[autosave]
[wait time=10]
[p]

[whosay name="財前母"]
「アルベルト！」[p]
#
[主人公目伏柔]
[主人公眉下げ下]
[主人公口ほほえみ]
お母様は目を見開いた後、碧い瞳を潤ませ嬉しそうに泣いた。[p]
;時間軸：潤ませた後、or 見開いた後、

[whosay name="財前母"]
「ありがとう。 [名字]さんも、[r]
[sp]いえ[名前]さんと呼んでもいいかしら？」
[autosave]
[wait time=10]
[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：微笑み
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]

*seen_sentaku
;================================テストメニュー リプレイで表示===============================
#
;バッドをみていないリプレイでは次のシーンに
[if exp="(f.okeiko_gamen != true && tf.test_zaizen != true) || (f.event_replay == 'zaizen' && sf.ED_zaizen_bad2 != 1)"]
@jump storage="zaizen/zaizen_11_1_3.ks" target=*seen_1
[endif]
[if exp="(f.okeiko_gamen != true && tf.test_zaizen == true) || (f.event_replay == 'zaizen' && sf.ED_zaizen_bad2 == 1)"]
@layopt layer=fix visible=false
[image name="sentaku" layer=29 x=0 y=0 zindex=0 storage="bg/plane_sakura.jpg" time=100]
[er]
;選択肢用レイヤーを追加
[position layer=message1 height=550 top=50 left=250 opacity=0]
[wait time=50]
@layopt layer=message1 visible=true
[current layer="message1"]
リプレイモードで表示されています。　続きを選択してください。[r][r][r]
[font size=30]
[link target="seen11_1_3"]つづきをみる[endlink][r][r][r]
[link target="seen11_1_bad"]バッド２をみる[r][r][r]
[link target="end_test"]リプレイを終了する[endlink]
[s]
;----------------------------
*seen11_1_3
[er]
[current layer="message0"]
[resetfont]
[iscript]
$(".sentaku").remove();
[endscript]
[cm]
@layopt layer=fix visible=true
@jump storage="zaizen/zaizen_11_1_3.ks" target=*seen_1
[s]
;--------------------------
*seen11_1_bad
[er]
[current layer="message0"]
[resetfont]
[iscript]
$(".sentaku").remove();
[endscript]
[cm]
@layopt layer=fix visible=true
@jump storage="zaizen/zaizen_11_1_bad1.ks" target="seen_1"
[s]
[endif]
;=====================================================================================================================
*sentaku_to_bad_or_other
;◆badED条件を満たす場合、bad2へ
[if exp="f.okeiko_gamen == true && (f.para_zaizen_koukando < f.zaizen_koukando_bad)"]
@jump storage="zaizen/zaizen_11_1_bad1.ks" target="seen_1"
;◆それ以外の場合は続きへ
[elsif exp="f.okeiko_gamen == true"]
@jump  storage="zaizen/zaizen_11_1_3.ks" target="seen_1"
[endif]
*end_test
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
[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]
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
