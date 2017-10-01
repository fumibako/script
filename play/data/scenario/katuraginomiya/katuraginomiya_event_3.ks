;イベント3回目
;一定の淑女度、葛城宮一定の好感度
*replay_katuraginomiya_event_3
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*event_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公部屋昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]

;=====================ここからお芝居の幕引きです===============================
[主人公目パチ1回]
#
皇后陛下のお印入りの簡単な挨拶と日時の書いてあるお茶事の招待状に[r]
目を通し、葛城宮殿下の手紙を丁寧に開いた。[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[stopbgm]
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
*fumi_toutyaku_katuraginomiya_28
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お茶事について」葛城宮 晴仁";//←仮タイトルです。お好みに変更してください
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「お茶事について」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi26");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_katuraginomiya_location_fumi.push(27);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi26");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[28]=1;
f.katuraginomiya_fumi_toutyakumachi_shumi=-1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_katuraginomiya_number=f.fumi_katuraginomiya_number + 1;
f.hensin_list_hairetsu[3][27] = 1;
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.katuraginomiya_koukando_up_event_fumi;
[endscript]
[endif]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
　時に皇后陛下からのお茶事の招待状は、もう届いたで[r]
あろうか？[r]
[r]
[sp]残暑厳しき折、今上、皇后両陛下に[r]
君を婚約者候補として認めて頂くように交渉を行い、[r]
結果、皇后陛下自ら君を未来の親王妃として[r]
ふさわしいか確かめると言われ、直接会われるという[r]
 運びとなった。[r]
[r]
[sp]　　　少々大事になってしまったと反省している。[p]
;アイコンに被ってしまう
[sp]だが皇后陛下は誰にでも分け隔てなく接する方で[r]
純粋に君に興味を持たれたようだ。[r]
[r]
[sp]君が私との結婚を考えられないなら断って構わない。[r]
[sp]だが私の婚約者候補として挙げられるのが、[r]
嫌でなければ受けて欲しい。[r]
[r]
[sp]いや、心から君が受けてくれるのを望んでいる。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[3][27] = 0"]
[endif]
 [手紙葛城宮読了 fumi_number=]
 [resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;==============================================================================
[if exp="tf.test_gamen == true"]
テストページからプレイしています。侍従の手紙まで移動しますか？[r]

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
移動します。[p]
[cm]
@jump target=*fumi_toutyaku_jijyuu_1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]

*seen0
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公伏目]
[主人公口ほほえみ]
「……」[p]
[主人公目閉]
（殿下は率直な方で……私に好意を寄せ下さっている。[r]
[主人公伏目]
[sp]それがとても嬉しい）[p]

[whosay name=磯野 color="dimgray"]
「お嬢様どうされますか？」[p]
#
磯野は、心配そうに問い掛ける。[p]

#
[主人公目閉じ]
私は、静かに[ruby text=うなづ]頷くと、承諾の言葉を口にした。[p]
;神妙に　気持ちを定めるように

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「招待をお受けしますわ」[p]


;【立ち絵】主人公 照れ目普通
[主人公口ほほえみ]
[主人公眉下げ下]
[主人公目伏柔]
[主人公頬染め]
「殿下がどんなに苦労して、私を婚約者候補の一人にしようと[r]
[sp]して下さっているか分かります」[p]

「私も期待に応えたいと思います」[p]

#
私の微笑んだ様子に、磯野も安心したように微笑む。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様なら大丈夫です。[r]
[sp]お稽古でのお茶立てもお作法も、身についておられますから」[p]
[autosave]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字 [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[主人公憂い]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;3.5回目イベント
;【テキスト全画面】黒茶・和紙風背景に白文字 

五日後[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[layopt layer=fix visible=true]
;==========================スクリプト・全画面表示からの復帰準備========================================
*seen1
[主人公憂い]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「お迎えの車が到着しました。　支度は整っておられるようですね」[p]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

;【立ち絵】主人公 憂い
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どこか変なところはないかしら？」[p]

[whosay name=磯野 color="dimgray"]
「変なところなどどこにもございません。 着物もお似合いです」[p]

;【立ち絵】主人公 困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「そう……直前になると緊張するわ。[r]
[sp]なかなか落ち着かなくて……粗相をしてしまわないといいのだけれど」[p]

[whosay name=磯野 color="dimgray"]
「いつもの調子でなされば心配はございません。[r]
[sp]平常心ですよ、お嬢様」[p]

#
;ここに車にのる地の文があったがなくなったので暫定対処
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景(暗)に白文字[テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/gosyo.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
#
;場面転換がわかりにくいので全画面　車にのる地の文があったがなくなったので暫定対処
皇后陛下に招待された離宮に近づくにつれて、[r]
ますます緊張が高まり、不安な気持ちで[r]
いっぱいになった。[p]
;[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/gosyo.jpg" time=1000 visible=true]
;[wait time=10]

;【侍従】[名前]姫様、～(労いの言葉)です。　謹んでご案内奉ります。

二人の侍従に案内されて離宮の広い敷地に入る。[r]
私は、緊張で足が少し[ruby text=すく]竦みそうだった。[p]

;【SE】足音3人石畳（フェードインアウト）
[playse storage=asioto_isidatami_3nin.ogg loop=false ]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;ｸﾘｯｸがみえる場合は追加↓
;[layopt layer=message0 visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[主人公憂い]
[freeimage layer = 29 time=1000]
[wait time=1000]
;ｸﾘｯｸがみえる場合は追加↓
;[layopt layer=message0 visible=true]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
（……宮中の方は私の事をどう思われているのかしら）[p]
[主人公目伏]
#
[bg wait=true storage="toumei.gif" time=1500]
[wait time=10]
[eval exp="f.haikei_credit=''"]
[whosay name="侍従"]
「[名字]様に事前にお会いしたいとのことで、こちらに親王殿下が[r]
[sp]いらっしゃいます」[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[主人公目閉]
[autosave]
#
;==============================================================================
[bg method='crossfade' storage="../fgimage/bg/bg_katuraginomiya_gosyo_in.jpg" time=1500 wait=true]
[wait time=10]
[表示準備 storage="bg/bg_katuraginomiya_gosyo_in.jpg"]
[wait time=10]
[eval exp="f.haikei_credit=''"]
[主人公目伏]
;==============================================================================
*seen2
#
;見えてないので位置変更します
;====================
;【立ち絵】葛城宮 微笑み
[葛城宮ベース軍服]
[葛城宮微笑み]
[表示開始 time=200]
;====================
;【立ち絵】主人公 困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
[主人公口ほほえみ]
「……殿下」[p]
[主人公目閉]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（殿下の姿が見えて嬉しいけれど、緊張で顔がこわばって[r]
[sp]笑みが浮かべられないわ）[p]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
#
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮口笑顔]
「よく来てくれた」[p]
[葛城宮口通常]
[葛城宮眉困り]
;【立ち絵】葛城宮 困り顔
「……表情がいつもより硬い。[sp]緊張しているのだな？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り 
[主人公目閉じ]
「ええ……殿下。 少し緊張しておりますわ」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「君はいつもの様に微笑んでいれば問題はない。[r]
[sp]今回の茶会の参加者は、君を客観的に判断できると判断した、[r]
[sp]皇后陛下の人選だ」[p]

[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

;困ったままで地の文が流れてしまうので変更
#
[葛城宮眉下げ]
[主人公眉下げ下]
[主人公目伏柔]
安心させるような葛城宮殿下の優しい微笑みにつられて[r]
自然に笑みがこぼれ、緊張がほぐれていく。
[主人公口ほほえみ][p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み[r]
[主人公ほほえみ]
[主人公頬染め]
「ふふ、気持ちが落ち着きました。　殿下、ありがとうございます」[p]

;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮真剣]
「……ああ君なら大丈夫だ。　いつもの笑顔が見られて、[r]
[sp]私も安心した」[p]

#
殿下は力強く頷き、私は応えるように微笑んだ。[p]
;

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 微笑み[r]
[主人公目閉]
（私は、いつもの様に自分らしく振る舞おう。殿下が好意を寄せて[r] 
[sp]下さったことに自信を持ちましょう）[p] 
#
;[葛城宮退場]
[葛城宮退場準備 storage="bg/bg_katuraginomiya_gosyo_in.jpg" time=300]
[暗転]
[fadeoutbgm time=3000]
#
殿下の優しさを胸に抱き、私は茶室へと向かった。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;==============================================================================
;【テキスト全画面】　茶室 [テキスト全画面白文字無背景]　裏で画面構成
[layopt layer=fix visible=false]
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/tyasitu.jpg" time=1200 visible=true]
[wait time=1200]
[eval exp="f.haikei_credit='illustration　by　◆I9IhvvVdPo'"]
;[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==============================================================================
[sp]茶事の亭主に、皇后陛下、正客に晴仁殿下の[r]
母である葛城宮妃殿下、次客に縁子殿下、[r]
三客に私、[r]
半東にに皇后陛下の侍従である桂伯爵夫人。[p]
[r]
[sp]今まで習って身につけた作法と流派の違いは[r]
事前に調べてあり、落ち着いて対処出来た。[r]
[r]
[sp]殿下の「君なら大丈夫だ」という言葉が[r]
魔法の言葉ように私に力を与え、[r]
自然に微笑みが浮かんでくる。[r]
;魔法の言葉　言葉　で連続ですが難しいのでそのままにします。
[r]
[sp]茶道での会話は、基本的に亭主と正客がして[r]
その趣をくみ取り、[r]
言葉を選びながら場にあった受け答えをする。[r]
[r]
[sp]皇后陛下と葛城宮妃様の会話は品があり、[r]
興味深く場を和ませるもので、私もその雰囲気に[r]
合わせていった。[p]
そして、茶事が終わり、追って沙汰を報せると[r]
伝えられた。[p]

;===================スクリプト・全画面表示からの復帰準備=================================
[resetfont]
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/gosyo.jpg" time=600 wait=true]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[freeimage layer = 29 time=1000]
[wait time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;======================スクリプトここまで=========================================
*seen3
[主人公伏目]
[主人公眉下げ下]
[主人公伏目パチ1回]

[whosay name="桂伯爵夫人" color=%mp.color]
「皇后陛下が、楽しかったとおっしゃられておりましたわ」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
[主人公口開]
「私などに勿体ないお言葉でございます」[p]
;【立ち絵】主人公 目閉じ
[主人公口通常]
[主人公目閉じ]
（良かったわ、嬉しい……）[p]
#
[主人公退場]
;==============================================================================
[暗転２]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=1000 wait=true]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]
[暗転２終了]
;==============================================================================
*seen4
[whosay name=磯野 color="dimgray"]
「お嬢様お疲れ様でした。　いかがだったでしょうか？」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ。分らないけれど、悪い雰囲気ではなかったの」[p]

;【立ち絵】主人公 目閉じ
[主人公眉下げ下]
[主人公伏目]
[主人公口ほほえみ]
（それにしても殿下の微笑みで安心できたわ。[r]
[sp]不思議ね……きっと、いつのまにか殿下の存在が、[r]
[sp]私の中で大きくなっているのだわ）[p]

[主人公退場]
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】黒茶・和紙風背景に白文字 [テキスト全画面白文字] 裏で画面構成
;機能ボタン消去
#
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;一瞬手紙の後ろがみえるので　手紙皇后さま→侍従
[bg method='crossfade' storage="../fgimage/bg/bg_tegami_kousitsu_jijyuu.jpg" time=50 wait=true]
[wait time=10]
;一瞬見えるメッセージ枠を消したい
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================


数日後、正式に皇室からの手紙を頂いた。[p]

;===================スクリプト・全画面表示からの復帰準備=================================
[resetfont]
[freeimage layer = 29 time=1000]
[wait time=1000]
;一瞬手紙の後ろがみえるので　手紙皇后さま→侍従
[image layer=29 x=0 y=0 storage="bg/bg_tegami_kousitsu_jijyuu.jpg" time=50]
[wait time=50]
;機能ボタン表示
[layopt layer=fix visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;=========================スクリプトここまで=======================================
*fumi_toutyaku_jijyuu_1
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「先日のお茶事について」桂伯爵夫人";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*jijyuu_fumi1");
f.fumi_list_all_location_taishou.push(8);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
[endscript]
[endif]

[手紙侍従]
[font color=navy size=20]
[名字]　[名前]殿へ[l][r]
[r]
　降るような蝉しぐれ、[r]
貴方におかれましては、ますます、ご清祥のことと[r]
拝察いたしております。[r]
[r]
[sp]先日のお茶事により、皇后陛下又、同席した葛城宮妃殿下と[r]
縁子内親王殿下は、貴方を晴仁殿下の婚約者候補として、[r]
容認する意向をお示しになりました。[p]
[sp][r][r][r]
[sp]ですが、他にも何人か晴仁親王殿下の婚約者候補は挙がっており、
[r]その何人かの方は、皇族又は皇族に連なる方です。[r]
[sp]貴方や晴仁親王殿下もそれを[ruby text=わきま]弁えた上で[r]
今後も節度をもってお手紙を交わすようにされますように。[r]
[r]
[sp]　　　　　　　　　　　　皇后陛下侍従　桂伯爵夫人　範子[p]
[手紙読了]
[resetfont]
[stopbgm]

;キャラ性がないと言われたときのための保護
;[r]
;[sp]先日のお茶事はとても楽しませてもらいました。[r]
;[sp]流石、あの晴仁親王の選んだ方だと感服いたして[r]
;おりますの。[r]
;[sp][r][r]
;[sp]お茶事に立ち会った者や、一族の者と話し合った結果、[r]
;貴方を晴仁親王の婚約者候補として認めることになりました。[p]
;[r]
;[sp]ですが、他に何人か晴仁親王の婚約者候補は挙がっており、[r]
;その何人かは、皆家柄や血統が上位のものです。[r]
;[sp]貴方の為にも貴方と晴仁親王は今後も節度をもって[r]
;手紙を交わすようにお願いしますわ[r]
;[r]
;[sp]　　　　　　　　　　　　　　　　　　　皇后　薫子[p]
;=========================スクリプトここまで=======================================
[layopt layer=fix visible=true]
;枠消ししておわりたい
;一瞬見えるメッセージ枠を消したいので上で変更しています
;[chara_mod name="message_bg" storage="toumei.gif" time=1]
[eval exp="sf.event_katuragi_event_3 = 1"]
;=========================スクリプトここまで=======================================
#
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
[イベントシーン終了４]
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
