;=============================================
;イベント５回目【手紙のお返事】８月２回以上お琴の稽古をする
;=============================================
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
＃
六段の調べの４段まで弾けるようになった。[r]
お琴をかき鳴らしながら私はよく鳥文の君の[r]
事を考えている。[p]

;【立ち絵】主人公　目伏せ　不安そう
（もう一月も経つけど鳥文の君へ[r]
[sp] 私の手紙は届いているかしら……。[r]
[sp] 鳩さんはたまに来るけれど手紙は[r]
[sp] 括り付いてないわ）[p]


（……いけないわ集中しないと。[r]
[sp] 曲を弾くときは無心で！　[r]
[sp] 先生も今度はどこか心にあらずねと[r]
[sp] 注意されたばかりなのに）[p]

＃
私はなんとか曲を弾き終えた一息つく。

;【SE】鳩の鳴き声

「鳩さん！　」

＃
私は今回も手紙は手紙は来るだろうかと[r]
期待して見上げた。[p]

;【立ち絵】主人公　微笑み
「手紙が括り付けてあるわ！　」[p]

;【SE】鳩の鳴き声

＃
はやる気持ちに着地した鳩の足の[r]
手紙をさっと解く。[p]

;【SE】紙の音（カサッ）
[手紙]
[名字]　[名前]様へ [l][r]
[r]
[sp] 降るような蝉しぐれ。[r]
[r]
[sp]僕の事はお構いなくと最初の手紙に書きながら[r]
僕はいつのまにか貴方様に深入りをしてしまったようです。[r]
[r]
[sp] このひと月ずっとどうお返事しようかと悩んでました。[r]
[r]
[sp]僕も少なからず貴方様に好意を持ってしまったようです。[r]
[r]
[sp]正直に伝えましょう。[r]
[sp] 僕はただの郵便配達員です。[r]
貴方様が気にされるような身分のものでもありません。[r]
[r]
[sp] 僕がただの郵便配達員と知って貴方様が[r]
どんな反応されるのか怖いです。[r]
[r]
[sp]またこのままずるずると僕と手紙を[r]
交わすのは貴方様の為にはならないでしょう。[r]
[r]
[sp] これで僕が書くのは最後の手紙とします。[r]
お琴を聞かせていただいてありがとうございました。[r]
[sp][sp][sp][sp][sp][sp][sp][sp][sp][sp][sp] 藤枝　肇 [p]

[resetfont]

;【立ち絵】主人公　目伏せ　悲しみ
「そんな！　最後の手紙？　」[r]
（でも確かに磯野やお父様に話したら[r]
きっと手紙を交わす事を反対されてしまう[r]
どうしたらいいの？）[p]

[背景_庭]
[主人公ポーズ通常]
[主人公真剣]
[主人公目パチ1回]
;【SE】軽い足音（フェードイン）
[playse storage=girl_in_run.ogg loop=false ]
;【SE】襖を開ける（勢いよく）
[playse storage=fusuma-open_fast.ogg loop=false ]
[stopbgm]

;【立ち絵】主人公　真剣
「ねえ！　磯野[r]
[sp] 郵便屋さんはいつも何時ぐらいにくるのかしら？」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様！　最近は随分と淑女らしくなりましたのに[r]
廊下を走るなど……」[p]

;【立ち絵】主人公　真剣
「ごめんなさい……それで郵便は何時頃に届くものなの？　」[p]

[whosay name=磯野 color="dimgray"]
「いつも１０時頃ぐらいでしょうか……[r]
[sp] どうしてそんなことを？」

;【立ち絵】主人公　慌てる
「いえ……手紙を交わしている方の[r]
[sp] 手紙が気になって……」

[whosay name=磯野 color="dimgray"]
「まあ、そうでございますか、[r]
[sp] どなたからのお手紙でしょうか？　」[p]

;【立ち絵】主人公　慌てる
「いえ……秘密です」[r]
（直接話しては手紙を交わした事が[r]
[sp] 分ってしまうわ。）

翌日
背景玄関
１０時前

＃
こっそり拝見するだけならいいわよね。[r]
自転車の音が聞こえるもうすぐだわ！　[p]

;【立ち絵】 藤枝　通常
「郵便です！　」[p]

＃女中
「お疲れ様です。」[p]

;【立ち絵】 藤枝　通常
「ありがとうございます！　では失礼します！　」

;【立ち絵】主人公　驚き
（私と同じぐらいの歳かしら。[r]
[sp] 明るくて爽やかそうな方だわ[r]
[sp] 同じぐらいの歳なのに働いているのね……）[p]

;【立ち絵】主人公　目伏せ
（私が出て行ったらきっと皆に知られてしまう[r]
[sp] 藤枝様にも迷惑がかかるし[r]
[sp] ……何か何か出来ないかしら）[p]

;【立ち絵】主人公　ハッとする
（そうだわ郵便が来るこの時間帯に[r]
[sp] お琴を精一杯弾きましょう[r]
[sp] そしたら藤枝様も喜んで下さるかもしれないわ）[p]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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


