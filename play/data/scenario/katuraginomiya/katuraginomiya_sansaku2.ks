;=============================================
;葛城宮ルート2月2週から3月４週の間に散策イベント２
;=============================================

 ;背景:町並み
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

#
今日も町は活気にあふれ、天気もよい[r]
私はふと茶屋の縁台に視線を向けた[p]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
;【立ち絵】主人公横目
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
「あら、あちらにいるのは時子さん？[r]
[sp] 隣の殿方はどなたかしら」[p]

#
時子さんと隣には落ち着いた感じの男性が座り、[r]
そばに女中らしき人が控えている[p]

;【立ち絵】主人公目伏
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
「それにしても……」[r]
（微笑んでいるのに、どこかつらそうな……、[r]
[sp] あんな時子さんはじめて見るわ）[p]

#
声をかけようかためらっていると[r]
会話が聞こえてくる[p]

[fadeoutbgm time=3000]

[whosay name="三宮時子" ]
「政治家になる道を選ばなかったのは私の所為ですの？[r]
父も貴方がそうなる事に[r]
援助を惜しまなかったでしょうに」[p]

[whosay name="落ち着いた男性" ]
「僕は政治家には向いていませんよ[r]
[sp] 人に教えたりサポートするのは好きですが、[r]
[sp] 人を動かすのは苦手なんです」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】冬支度
[playbgm storage="kanasige_koto_fuyujitaku.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_koto_fuyujitaku.ogg'"]
[endif]
#
やっぱり去ろうとしたら、[r]
時子さんが私に気づいた[p]


[whosay name="三宮時子" ]
「あら」[p]

[whosay name="落ち着いた男性" ]
「時子様、知り合いですか？」[p]

[whosay name="三宮時子" ]
「ええ、お友達の[r]
[名字][名前]さんです」[p]

;【立ち絵】主人公目伏
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
「あの、時子さんこちらの方は？」[r]
（お知り合いかしら？[r]
[sp] それにしても親しそう）[p]

[whosay name="三宮時子" ]
「東帝國大学法学助教授、伊能洋匡さん、[r]
[sp] 私の家で書生としていらっしゃった方です」[p]

;【立ち絵】主人公驚
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
（東帝國大学はこの国でも[r]
[sp] 1、2位を争う名門大学[r]
[sp] すごく頭のいい優秀な人なんだわ）[p]

[whosay name="伊能洋匡" ]
「初めまして[名字]さん、[r]
[sp] 時子様がいつもお世話になっている[r]
[sp] ようですね」[p]

;【立ち絵】主人公目伏
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公眉下げ下]
[主人公口ほほえみ]
「いえ、[r]
[sp] 私の方がいつもお世話になっております」[p]

[whosay name="伊能洋匡" ]
「時子様、それでは[r]
[sp] 僕はこの辺で失礼します」[p]

[whosay name="三宮時子" ]
「また、お会いできるかしら？」[p]

[whosay name="伊能洋匡" ]
「いえ、もうお会いしない方がいいでしょう。[r]
[sp] ……時子様、お元気で」[p]

#
彼の時子さんを見る目は切なく[r]
慈愛にみちたものだった[r]
そして彼は一礼して人の波に消えていく[p]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「時子さん、あの……」[p]

#
時子さんは人の波を切なげに[r]
見つめながら言った[p]

[whosay name="三宮時子" ]
「……あの方が、私のお慕いする方です[r]
[sp] 幼い頃からお慕いし、[r]
[sp] あの方は独り立ちした時はとても寂しかったわ」[p]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公口ほほえみ]
「話してすっきりすることもありますし[r]
[sp] 私でよければお聞きます」[p]

#
そういうと時子さんは[r]
私の方を向いて微笑んた[p]

[whosay name="三宮時子" ]
「ええ、[名前]さん 、[r]
[sp] ありがとうございます[r]
[sp] こちらにお座りになって」[p]

#
私は縁台に座り、[r]
時子さんは話し出しました[p]

;背景洋館
[テキスト全画面白文字]
彼が書生としてきたのは私の８歳の頃でしたわ[r]
私は知りたがり屋でたまたま私が知りたい事を[r]
彼が知っていたことからよく私は彼とよく話す[r]
ようになったのです[r]
[r]
彼は、一度聞いたことは忘れない人ですし、[r]
人の意図を読み取るのも上手なのか、[r]
落ち込んだ時もいつも欲しい言葉をくれながらも[r]
言うべきことは言いい私も彼のようになりたいと思ったものですわ[p]
[r]
だけど彼は貧しい士族の出身だからっと[r]
皆必要以上に仲良くなってはいけないと[r]
皆から注意されていましたし、[r]
私も身分の事はわきまえてるつもりでしたわ。
けれどけれど彼の事を知れば知るほど惹かれていき、[r]
気持ちを抑えようとすればするほえど[r]
気持ちがこみ上げてどうしようもなくなりました。[r]
[r]
気づけばいつも目で彼がいないかと探し、[r]
彼の声を聴くだけで胸が高鳴りました[r]
でも皆に悟られないように[r]
当たり障りないように振る舞いましたわ[r]
[r]
……知られれば引き離されるんですもの[p]
[r]
そして時は流れて彼が私の１４歳の時、[r]
東帝國大学を卒業する事が決まりました。[r]
[r]
私は彼が政治家か官僚になる事を期待していました[r]
そうなれば国への貢献が認められて華族になる事もありますもの[r]
[r]
でも卒業が決まったある日、[r]
お父様は彼に縁談を用意していて[r]
官僚になる道を勧めていました。[r]
私それを見て、部屋に閉じこもって泣きましたわ[r]
[r]
彼がお父様の勧める事を断れる理由なんてない、[r]
彼はもう結婚してしまうのだと[r]
私あの時は苦しくて苦しくてたまらなくて[p]
[r]
けれどその時、彼が一日食事をとらない私を心配して[r]
女中に手紙と金平糖を託してくれました。[r]
私もう気持ちが抑えきれなくてお手紙を書いたのです。[r]
正直な気持ちを書いた恋文を……けれど[r]
名家の御令嬢が僕などに好意を寄せてはいけません醜聞になります[r]
と返事の手紙にかいてありましたわ。[r]
[r]
はっきりと拒絶された事でその夜は悲しくて泣き明かしました[r]
……彼は縁談を受け、この家をでればもう会う事もないと。[r]
[r]
けれど、彼はお父様の用意した縁談と官僚になる事を断って、[r]
大学に残ることを望み私の家を出ましたの。[p]

[イベントシーン構築]
[chara_mod name="bg" storage="bg/bg_machi.jpg" time=50]
[主人公ポーズ通常]
[主人公通常]

[whosay name="三宮時子" ]
「伊能さんから家を出る時手紙を頂きました。[r]
[sp] 私に惹かれているから縁談を断ったけれど[r]
[sp] 私の幸せを想うからこそ[r]
[sp] 身勝手な事をするつもりはないと」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……時子さん、伊能様と[r]
[sp] 一緒になろうと思いませんの？」[p]

[whosay name="三宮時子" ]
「もう彼は道を選んでいますわ[r]
[sp] 彼は穏やかで包容力はあるけれど[r]
[sp] 確かに人を指導するというより[r]
[sp] 人を支えたり教えたりするのが向いていますもの」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公口開]
「そんな……諦めるなんて時子さんらしくありません[r]
[sp] お互いに想いあっているのに」[p]

[whosay name="三宮時子" ]
「想い合っても現実はどうにもなりませんもの[r]
[sp] より不幸を招くことになるかもしれません」[p]

;【立ち絵】主人公憂い
[主人公憂い]
「……」[r]
（こんな弱気な時子さん初めて……[r]
私ではどうにもできないのかしら？）[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
「でも伊能様は法学部なのですね？[r]
[sp] 官僚という立場なら人を支える事にも向いている[r]
[sp] のではないですか？」[p]

[whosay name="三宮時子" ]
「ええ、文官高等試験には及第されているのです[r]
[sp] それを辞退したのは私の所為ですわ[r]
[sp] 手紙に女性一人幸せにも出来ないのに官僚になる気はない。[r]
[sp] 成功したとしても虚しさを抱える……と書かれてありました」[p]

#
時子さんはさらに悲しげな顔になった。[p]

;【立ち絵】主人公憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「……そんな！ご自分の気持ちも夢も大切にしてください！[r]
[sp] 私は時子さんにも想いあった方と[r]
[sp] 一緒になってほしいと思います」[p]

[whosay name="三宮時子" ]
「……ええ、そうですわね[r]
[sp] もう一度彼にお手紙をだしますわ」[p]

#
そう言いながらも時子さんは[r]
悲しそうに笑い、[r]
その諦めたような様子に[r]
どうすればいいのか私は頭を巡らせる[p]

;【立ち絵】主人公憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「想いあっているのでしたら最初から諦めてはいけませんわ[r]
[sp] 気持ちを確かめ合ってお互いに前向きにならないと[r]
[sp] いつもの時子さんに戻ってください！」[p]

#
私は時子さんの手をぎゅっと握る[r]
すると時子さんは少し明るく笑った[p]

[whosay name="三宮時子" ]
「そうですわね我ながら愚かでした[r]
[sp] せめて心から正直な気持ちを彼にぶつけてみます[r]
[sp] 私の気持ちを正直に書いて彼が応えてくれたなら[r]
[sp] お父様にも正直に話しましょう」[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「それが一番ですわ」[p]
[sp] 殿下にも伊能様の事を[r]
[sp] お手紙に書きます」[p]

[whosay name="三宮時子" ]
「！！葛城宮殿下に？」[p]

;【立ち絵】主人公通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
「三人そろえば文殊の知恵といいますわ[r]
[sp] 私も身分が釣り合わない恋でしたし[r]
[sp] 何か力になってくれるかもしれません」[p]

[whosay name="三宮時子" ]
「[名前]さんありがとうございます[r]
[sp] お気持ちとてもうれしく思いますわ」[p]

#
時子さんはいつもの微笑みを浮かべ[p]
私はほっとする[p]

;【立ち絵】主人公ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「いえ、私は時子さんに助けてもらってばかりです。[r]
[sp] 侍女の件も申し出て頂いて、嬉しく思っています」[p]

[whosay name="三宮時子" ]
「そういえば侍女の件は考えてくれましたか？」[p]

;【立ち絵】主人公ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ、時子さんが[r]
[sp] 侍女になってくれるなら心強いです[r]
[sp] よろしくお願いします！」[p]

[fadeoutbgm time=3000]

#
私と時子さんはお互いに微笑む。[r]
時子さんは私の生涯の無二の親友だわ[r]
そう感じて心が温かくなった。[p]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_hujieda.ks"
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

