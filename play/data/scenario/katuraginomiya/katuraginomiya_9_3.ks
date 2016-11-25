;５回目イベント　
;両家顔合わせ
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*9_3 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです==============================
#
数日後、私の元に葛城宮妃殿下から手紙が届いた。[p]
;音がならないのでご一考のほどお願いします↑仮でつけてあります　
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
;自動改頁されてしまうためにいくつか改頁を挿入させていただきました。お好みの位置にご調整ください(スクリプト担)

[手紙葛城宮妃殿下]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
謹呈　秋色次第に濃く、貴方には[r]
[sp]一段とご清祥の由と存じます。[r]
[r]
[sp]誠に申し上げにくいのですが[r]
息子は縁談をいくら勧めましても[r]
手紙を書こうとするどころか破談にしてきました。[r]
[r]
[sp]息子は意思が強くときに激しくすら感じる時があります。[r]
[sp]その息子が気に入った方だから不安に思っていたのですが[r]
まるで淑女の鏡のような方で安心しました。[p]
[r]
[sp]少々の身分のことは気にされなくても大丈夫です。[r]
[sp]正直に申し上げるのは気が引けますが[r]
最近では財政難や健康上の理由から縁談を持ち掛けても[r]
辞退される家も少なくないのです。[r]
[r]
[sp]貴方はもうすでに息子との婚約は内定いたしました。[r]
[sp]私も貴方のことは[r]
お茶事の時から好ましいと思っております。[r]
[r]
[sp]ささやかながら貴方に振袖を仕立てました。[r]
[sp]この縁談が両家にとってよきものであること願って。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮妃　咲子[p]
[手紙読了]
[resetfont]
;差出人名の前で改項されるのでその前の改行を無しにしました(スクリプト担当_2)

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
*seen0
;【立ち絵】主人公困り　困り眉までの表示がおそいので修正
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下の事を心配されているのね。[r]
[sp]私も、殿下や殿下の母宮様のお役にたてられるといいのだけど」[p]

;全画面表示の幕間に主人公伏目になってます

[whosay name=磯野 color="dimgray"]
「きっとお役にたてますよ[r]
[sp]お稽古に加え新聞や洋書にも目を通すようになりましたし」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】仲人庭園 （裏で画面構成）
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa.jpg" time=50]
[表示準備 storage="bg/I9IhvvVdPo/nakoudoteiniwa.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
[sp]仲人は、時子さんのお父様で、[r]
宗秩寮総裁と親しくしており[r]
顔も広い、格上の華族でもある。[r]
[r]
両家の家族を紹介した後、[r]
私は葛城宮妃殿下が[r]
２人で話があるからと庭園に出た[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[layopt layer=fix visible=true]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen1
[主人公目パチ1回]
[whosay name="葛城宮妃" color=%mp.color]
「振袖が、とても似合っておられて、仕立てたかいがありましたわ」[p]

;【立ち絵】主人公照れ目普通
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
 [主人公口開]
「お手紙と振袖、とてもうれしく思っております。[r]
[sp]葛城宮妃殿下」[p]

[whosay name="葛城宮妃" color=%mp.color]
「喜んでくれて嬉しいわ。[r]
[sp]けれど、つつましいことは好ましいけれど、他人行儀なのは[r]
[sp]少し寂しいわ」[p]
#
;【立ち絵】主人公 微笑み 　　　・・・切り替えまで遅いのでmodで
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「妃殿下」[p]
[主人公目閉]
（優しい言葉が胸に染み入る。[r]
[sp]殿下や母宮様の為にも、色々努力していきたい）[p]
[whosay name="葛城宮妃" color=%mp.color]
 [主人公目伏]
「少しずつ家族になっていきましょう。[r]
[sp]……ああこの話じゃなく、息子の話をしようと思っていたの[r]
[sp]あらもう……」[p]
[主人公効果消]
;【立ち絵】主人公　通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
[主人公眉下げ下]
「どうされましたか？」
[主人公伏目パチ1回]
[p]
[主人公口通常]
 [whosay name="葛城宮妃" color=%mp.color]
「もう話す前に息子がそこに」[p]

#
妃殿下は嬉しそうに微笑み、振り向くと軍服姿の殿下がいた[p]
;=========================================================================================
;背景仲人庭園(道)振り向くという言葉に合わせて背景も変化させてみました。この後語りながら歩くのに良さそうな道の見える池に(スクリプト担
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi1.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;=========================================================================================

;====================
;【立ち絵】葛城宮　通常
[葛城宮ベース軍服]
[葛城宮通常]
[表示開始 time=300]
;====================

[whosay name="葛城宮　晴仁" color=%mp.color]
「……」[p]

[whosay name="葛城宮妃" color=%mp.color]
「クスッ。よほどあの子は貴方のことが大切なのね[r]
[sp]沢山の縁談を断ってきたけれど、恋をすると[r]
[sp]一途になるのかしらね」[p]
[葛城宮目パチ1回]

;【立ち絵】主人公　困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あのでもお話しは……」[p]

[whosay name="葛城宮妃" color=%mp.color]
「私が言いたいことは息子からあなたに話すでしょう[r]
[sp]いいわ…… 息子のこと頼みます[r]
[sp]あの子のところに行ってらっしゃい」[p]

#
妃殿下は見守るような優しい微笑みを浮かべ、私を送り出す。[p]

;【立ち絵】主人公　瞬き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公伏目パチ1回]
「はい。妃殿下の期待に応えられる様に努力したしと思っております」[p]
[主人公目閉じ]
「それでは御前を失礼いたします」[p]

#
私は葛城宮妃に一礼し、葛城宮の元に歩いた。[p]

;【立ち絵】葛城宮　通常
[葛城宮口ムッ]
[葛城宮汗]
[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]
「母宮のいいそうなことは想像がつく」[p]

「手に負えない息子である私を頼みますとか[r]
[sp]そんな内容だったのではないか？[r]
[sp]結婚をして私が丸くなるのを期待してるのだろう」[p]

[葛城宮効果消]
#
殿下はため息をついて、妃殿下の去った方に視線を送る。[p]

;【立ち絵】主人公　困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困りほほえみ]
「何か仰る前に殿下が来られたので[r]
[sp]分かりませんが、多分そのことだと思います」[p]

;【立ち絵】葛城宮通常
[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「母宮は世話好きでな。[r]
[sp]あれこれ余計な事まで手をだそうとする。[r]
[sp]君の負担にならないといいのだが」[p]

;【立ち絵】主人公 ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「いえ負担ではありませんわ[r]
[sp]優しく話して頂いて感謝しております」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「それにしても私のお父様やお母さまも、[r]
[sp]私の事を大切に思って下さるのですが、離れて暮らしているせいか[r]
[sp]意思の疎通が、あまり出来てないので少し羨ましく思います」[p]

;主人公を気遣った会話を挟むとよいですお礼

;【立ち絵】葛城宮　通常
[葛城宮目伏せ照れ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「……そうか。[r]
[sp]それより私も君とゆっくり話したかった」[p]

;【立ち絵】主人公　目閉じ頬染
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公頬染め]
[主人公口ほほえみ]
「ええ、私もです」[p]
;=========================================================================================
[葛城宮微笑み]
;[主人公退場]話の続きだから退場できない。けれど移動しているのでしょうか？→表情変化で数分変化に対応
;【背景】仲人庭園(道2)話の変化に合わせて背景も変化させてみます(スクリプト担
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_michi2.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[主人公ポーズ通常]
;【立ち絵】主人公　主人公照れ目普通
[主人公照れ目普通]
;=========================================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
「特に殿下の夢を聞きたいと思っていました。[r]
[sp]殿下のことをお話ししてくださいませんか？」[p]
;【立ち絵】主人公　主人公照れ目普通
[主人公照れ目普通]
[主人公口開]
「御身分は、とても高いけれど庶民にも分け隔てなく接していますし[r]
[sp]物の味方や考え方が他の方と違っていて、[r]
[sp]もっと知りたいと思います」[p]
[葛城宮効果消]
[葛城宮驚き]
;【立ち絵】葛城宮　驚き
[whosay name="葛城宮　晴仁" color=%mp.color]
「私の話でいいのか？」[p]
;【立ち絵】葛城宮ほほえみ
[葛城宮微笑み]
「ああそういえば、町であったときに正式に婚約が成ったら[r]
[sp]話すと約束したな」[p]

;【立ち絵】主人公　目伏照れ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
[主人公頬染め]
「ええ、夢を語ってくださる殿下は、とてもキラキラして[r]
[sp]言葉にも力が宿って」[p]
;【立ち絵】主人公　目閉じ照れ
[主人公目閉じ]
[主人公頬染め]
「その…… 魅力的に感じました」[p]

;【立ち絵】葛城宮　驚き 微々間をおいて微笑む
[葛城宮驚き]
[wait time=20]
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
;【立ち絵】葛城宮　微笑み
「本当に君は私の欲しい言葉をくれる。[r]
[sp]他の華族令嬢達は、私の話に興味を示さずに退屈そうにしていたのに」[p]
[fadeoutbgm time=2000]
;【立ち絵】主人公　通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公効果消]
「人それぞれなので、比較はよくありませんわ。」[p]
;いいシーンですぐに鳴るBGM！
[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
;【立ち絵】葛城宮　通常
[葛城宮目を閉じる]
[whosay name="葛城宮　晴仁" color=%mp.color]
「ああそうだな。[sp]それより何から話そうか」[p]
「私の侍従の一人に元フランス外交官がいる[r]
[sp]幼いころから私は彼の話を聞いた、目まぐるしく変わった[r]
[sp]フランス情勢に…… 」[p]
;=========================================================================================
;呉服屋的な背景 全画面文字のみ表示
[テキスト全画面白文字無背景]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/yo-roppa.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[sp]殿下は１２歳でイギリスに留学し、[r]
イギリス国王から立憲君主について学ばれ、[r]
[r]
[sp]民主化が進むヨーロッパの国について[r]
私にもわかるように沢山話してくれた。[p]
[r]
[sp]私の知らない世界の事それは[r]
私にとっても興味深いものだった。[r]
[r]
[sp]何より殿下が朗らかに楽しそうに話し、[r]
殿下の強い意志を感じられて[r]
とても殿下がまぶしく[r]
感じられる私も沢山勉強しようと思った[r]
[r]
[sp]時間が許すまで私は殿下の話を聞いた[p]
[cm]
;=========================================================================================
;メッセージをもどします↓
[イベントシーン構築ボタン無し版]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg" time=50]
[表示準備 storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg"]
;背景仲人庭園(話しながらの移動や時間経過を表現するために、庭園の門を夕方っぽく加工してみました：スクリプト担)
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;退場からの復帰主人公表示
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公伏目]
;表情設定後・復帰主人公表示消す
[iscript]
$('.junbi_girl').remove();
[endscript]
;同時表示をやってみましたがSE入れないと遅いだけになってしまったので順番に表示へ
[メッセージウィンドウ上ボタン表示]
;=========================================================================================
;【立ち絵】葛城宮 微笑み
[葛城宮ベース軍服]
[葛城宮笑顔大]
[表示開始 time=300]
;====================
[主人公目パチ1回]
[whosay name="葛城宮　晴仁" color=%mp.color]
「今日は楽しかった。また近いうちに会おう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公　微笑み[p]
[主人公ほほえみ]
[主人公頬染め]
「ええ、お会いしましょう[r]
[葛城宮口微笑み]
[sp]今日は沢山話して頂いてありがとうございました[r]
[sp]私もとても楽しかったです」[p]
[fadeoutbgm time=3000]
[image layer=29 x=1 y=1 storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg" time=1000 visible=true]
[葛城宮口退場]
[freeimage layer=29]
[wait time=20]
[stopbgm]
#
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
