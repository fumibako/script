;５回目イベント　両家顔合わせ　
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_9_3
[stopbgm]
[call target=*9_3 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです==============================
#
葛城宮家と[名字]家が、顔合わせる事となった当日。[p]
私は、殿下の母宮様から頂いた振袖を着て、振袖とともに届いた手紙に[r]
再度、目を通した。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_hahamiya
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「ご挨拶」　葛城宮妃　咲子";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*fumi_hahamiya");
f.fumi_list_all_location_taishou.push(9);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
[endscript]
[endif]

[手紙葛城宮妃殿下]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]秋色次第に濃く、[r]
[sp]貴方には、一段とご清祥の由と存じます。[r]
[r]
[sp]誠に申し上げにくいのですが、[r]
息子は、縁談をいくら勧めましても、お手紙を[r]
書こうとするどころか破談にしてきました。[r]
[r]
[sp]息子は意思が強くときに激しくすら感じる時があります。[r]
[sp]その息子が気に入った方だから不安に思っていたのですが[r]
貴方はまるで淑女の鑑のような方で安心しました。[p]
[r]
[sp]貴方は、もうすでに息子との婚約は内定している[r]
のです。[r]
[sp]少々の身分のことは気にされなくても大丈夫です。[r]
[sp]私も貴方のことは、お茶事の時から好ましいと思って[r]
おります。[r]
[r]
[sp]ささやかながら貴方に振袖を仕立てました。[r]
[sp]この縁談が両家にとって良きものであること願って。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮妃　咲子[p]
[sp][r][r][r]
追伸　息子は型にはまる事を嫌い、周囲と衝突しています。[r]
私は息子が貴方との婚約で変わるように望んでいます。[p]
[手紙読了]
[resetfont]

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
「きっとお役にたてますよ。[r]
[sp]お稽古に加え、新聞や洋書にも目を通すようになりましたし」[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=1000]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】仲人庭園 （裏で画面構成）
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/nakoudoteiniwa.jpg" time=50 wait=true]
[表示準備 storage="bg/I9IhvvVdPo/nakoudoteiniwa.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=======================================================
両家の顔合わせは皇室縁のある三宮家で[r]
行う事になった。[r]
[r]
両家の家族を紹介した後、[r]
私は葛城宮妃殿下が[r]
二人で話があるから と庭園に出た。[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen1
[主人公目パチ1回]
[whosay name="葛城宮妃" color=%mp.color]
「振袖が、とても似合っておられて、仕立てた[ruby text=か]甲[ruby text=い]斐がありましたわ」[p]

;【立ち絵】主人公照れ目普通
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
 [主人公口開]
「お手紙と振袖、とてもうれしく思っております。[r]
[sp]葛城宮妃殿下」[p]

[whosay name="葛城宮妃" color=%mp.color]
「喜んでくれて嬉しいわ。[r]
[sp]つつましいことは好ましいけれど、他人行儀なのは少し寂しいわ」[p]
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
妃殿下は嬉しそうに微笑み、振り向くと軍服姿の殿下がいた。[p]
;=========================================================================================
;背景仲人庭園(道)振り向くという言葉に合わせて背景も変化させてみました。この後語りながら歩くのに良さそうな道の見える池に(スクリプト担
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/nakoudoteiniwa_michi1.jpg" wait=true]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;=========================================================================================

;====================
;【立ち絵】葛城宮　通常
[葛城宮ベース軍服]
[葛城宮通常]
[表示開始 time=300]
;パッとふりむいて表示・準備は幕間にて済
;====================

[whosay name="葛城宮　晴仁" color=%mp.color]
「……」[p]

[whosay name="葛城宮妃" color=%mp.color]
「クスッ。よほどあの子は貴方のことが大切なのね。[r]
[sp]沢山の縁談を断ってきたけれど、恋をすると一途になるのかしらね」[p]
[葛城宮目パチ1回]

;【立ち絵】主人公　困り
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あのでもお話しは……」[p]

[whosay name="葛城宮妃" color=%mp.color]
「私が言いたいことは息子からあなたに話すでしょう。[r]
[sp]いいわ……息子のこと頼みます。 あの子のところに[r]
[sp]行ってらっしゃい」[p]

#
妃殿下は見守るような優しい微笑みを浮かべ、私を送り出す。[p]

;【立ち絵】主人公　瞬き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公伏目パチ1回]
「はい。妃殿下のご期待に応えられる様に努力したしと思っております」[p]
[主人公目閉じ]
「それでは御前を失礼いたします」[p]

#
私は葛城宮妃に一礼し、葛城宮の元に歩いた。[p]

;【立ち絵】葛城宮　通常
[葛城宮口ムッ]
[葛城宮汗]
[葛城宮横目]
[whosay name="葛城宮　晴仁" color=%mp.color]
「母宮の言いそうなことは想像がつく」[p]

「手に負えない息子である私を頼みます、とか[r]
[sp]そんな内容だったのではないか？[r]
[sp]結婚をして私が丸くなるのを期待してるのだろう」[p]

[葛城宮効果消]
#
殿下はため息をついて、妃殿下の去った方に視線を送る。[p]

;【立ち絵】主人公　困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困りほほえみ]
「何か仰る前に殿下が来られたので、分かりませんが、[r]
[sp]多分そのことだと思います」[p]

;【立ち絵】葛城宮通常
[葛城宮通常]
[whosay name="葛城宮　晴仁" color=%mp.color]
「母宮は世話好きでな。[r]
[sp]あれこれ余計な事まで手をだそうとする。 君の負担に[r]
[sp]ならないといいのだが」[p]

;【立ち絵】主人公 ほほえみ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「いえ、負担ではありませんわ。[r]
[sp]優しく話して頂いて感謝しております」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「それにしても私のお父様やお母さまも、[r]
[sp]私の事を大切に思って下さるのですが、離れて暮らしているせいか[r]
[sp]意思の疎通が、あまり出来てないので少し羨ましく思います」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮眉困り]
「君の父君は長く外国にいたと聞いた。[r]
[sp]そして皇族や華族は子供は女中などに任せる事が多い、[r]
[sp]……寂しいものだな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉じ]
「ええ、少し寂しいけれど今は慣れました。[r]
[主人公伏目]
[主人公口ほほえみ]
[sp]……それよりも殿下のお話を聞かせてくださいませんか？[r]
[sp]今は殿下とゆっくり、話せるのですから」[p]
;以降のセリフと重なっているので　夢を→話を

;【立ち絵】葛城宮　通常
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「そうだな。 私も君とゆっくり話したかった」[p]

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
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/nakoudoteiniwa_michi2.jpg" wait=true]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
;[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[主人公ポーズ通常]
;【立ち絵】主人公　主人公照れ目普通
[主人公照れ目普通]
;=========================================================================================
;【立ち絵】主人公　主人公照れ目普通
[主人公照れ目普通]
[主人公口開]
「殿下は、御身分がとても高いですが、庶民にも分け隔てなく接して[r]
[sp]いらっしゃいます」[p]
「それに物の味方や考え方が他の方と違っていらして、[r]
[sp]もっと知りたいと思いました」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下の夢についてお話ししてくださいませんか？」[p]
;【立ち絵】葛城宮　驚き
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮効果消]
[葛城宮驚き]
「私の夢について、でいいのか？」[p]
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
「ありがとう。本当に君は私の欲しい言葉をくれる。[r]
[sp]他の華族令嬢達は、私の話に興味を示さずに退屈そうにしていたのに」[p]
[fadeoutbgm time=2000]
;【立ち絵】主人公　通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公効果消]
「人それぞれなので、比較はよくありませんわ」[p]
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
[sp]幼いころから私は彼の話を聞いた、目まぐるしく変わった。[r]
[sp]フランス情勢に…… 」[p]
;=========================================================================================
;呉服屋的な背景 全画面文字のみ表示
[テキスト全画面白文字無背景]
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/yo-roppa.jpg" time=600 wait=true]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[sp]殿下は[ruby text=じゅう]十[ruby text=に]二歳
でイギリスに留学し、[r]
イギリス国王から立憲君主制について学ばれた[r]
そうだ。[r]
[sp]民主化が進むヨーロッパの国について[r]
私にもわかるように沢山話してくださった。[p]
[r]
[sp]私の知らない世界の事それは、[r]
私にとっても興味深いものだった。[r]
何よりも殿下が朗らかに楽しそうに[r]
話されるご様子は私の心を暖かくした。[p]
[sp]その後、殿下はヨーロッパでの話を[r]
踏まえて、これからの殿下の夢、[r]
「平和国家・民主化への未来 」について語られた。[r]
夢を語られる殿下の横顔は、眩しく感じられ、[r]
私は、殿下の強い意思を秘めた瞳を見つめながら[r]
沢山、勉強しようと思った。[p]
[r]
[sp]私は時間が許すまで殿下のお話を聞いた。[p]
[cm]
;切り替えまで時間がかかるのでSE
;【SE】秋の虫複数
[playse storage=musi_aki.ogg loop=false ]
;=========================================================================================
;背景切り替わりでセーブ等はさせない
[layopt layer=fix visible=false]
;背景切り替わってないときにメッセージ表示防止・次画像↓
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg" time=500 visible=true]
[wait time=500]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[mtext name=".junbi_girl" text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg" time=50 wait=true]
;メッセージをもどします↓
[イベントシーン構築ボタン無し版]
;背景仲人庭園(話しながらの移動や時間経過を表現するために、庭園の門を夕方っぽく加工してみました：スクリプト担)
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[主人公ポーズ通常]
[wait time=10]
[主人公伏目]
;【立ち絵】葛城宮 微笑み
[葛城宮ベース軍服]
[葛城宮笑顔大]
[freeimage layer=29 time=500]
[wait time=500]
;ボタン表示
[layopt layer=fix visible=true]
;[メッセージウィンドウ上ボタン表示]
;=========================================================================================
[主人公目パチ1回]
[whosay name="葛城宮　晴仁" color=%mp.color]
「今日は楽しかった。また近いうちに会おう」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公　微笑み[p]
[主人公ほほえみ]
[主人公頬染め]
「ええ、お会いしましょう。[r]
[葛城宮口微笑み]
;主人公の返事をきいて葛城宮さんも微変更
[sp]今日は、沢山話して頂いてありがとうございました。[r]
[sp]私も、とても楽しかったです」[p]
[fadeoutbgm time=3000]
;メッセージ＆ボタンを消してから余韻をもって二人同時に消えてください
[イベントシーン終了]
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/nakoudoteiniwa_mon_yuu.jpg" time=1000 visible=true]
[wait time=1000]
[葛城宮退場]
[wait time=20]
[stopbgm]
#
[freeimage layer=29 time=10]
[wait time=10]
[eval exp="sf.event_katuragi_9_3 = 1"]

[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]

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
