;=============================================
;◆チャリティーバザー◆２月3週から３月４週までお茶事が高い葛城宮ルート
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_bazaar
[stopbgm]
[call target=*sansaku storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：春
[bg method='crossfade' storage="../fgimage/bg/room_niwa_haru.jpg" time=1000 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
殿下からのお誘いの手紙を読み、私の心は期待で一杯になる。[p]
;二重主語になっていましたので、最初の「心は」のみに絞らせていただき述語を合わせました(◆jsYiJcqRkk
;原文)殿下からのお誘いの手紙を読み、私の心は期待で胸が膨らむ。[p]
;殿下からのお誘いの手紙を読み、私は期待で胸一杯になる。 ;一杯は胸にかかるのでこちらは如何でしょうか
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（憧れのデエトのようなものになるのかしら）[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_katuraginomiya_32
[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 バザーへのお誘い 」　葛城宮 晴仁";//←仮タイトルです。お好みに変更してください
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「 バザーへのお誘い 」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi30");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(31);
f.fumi_list_katuraginomiya_location_fumi.push(31);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi30");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[32]=1;
f.katuraginomiya_fumi_toutyakumachi_shumi=-1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_katuraginomiya_number=f.fumi_katuraginomiya_number + 1;
f.hensin_list_hairetsu[3][31] = 1;
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.katuraginomiya_koukando_up_event_fumi;
[endscript]
[endif]
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
　日差しが暖かく春の訪れを感じる頃、[r]
[名前]殿には穏やかにお過ごしのことと存じている。[r]
[r]
[sp]さて、君も今年もチャリティバザーが無事に[r]
開催されることを存じているだろうか。[r]
[r]
[sp]母宮が お茶を点てて和菓子を出し、[r]
野点のような場を設けようと張り切っていた。[p]
;アイコンにかかるためp
[sp] 私もその頃には時間に余裕ができそうなので[r]
少し立ち寄り、バザーの様子を見に行きたい。[r]
[r]
[sp]君も一緒にチャリティーバザーに参加しないだろうか 。[r]
[sp] それでは返事を待っている。[r]
[sp] 　　　　　　　　　　　　　　　　　　　　　　　　　[r]
[sp]　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
追伸[r]
色々ある中で沢山の手紙を感謝する。君にとても[r]
励まされた。[p]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[3][31] = 0"]
[endif]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、[r]
[sp]私もチャリティーバザーに参加していいかしら？」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;========================================================
;茶道分岐
[if exp="f.para_shujinkou_j_sadou >= 100"]
;========================================================
;茶道が高い
[whosay name=磯野]
「チャリティーバザーは、華族の夫人を中心に皇族の方も参加されています」[p]
「今後の為にもいいでしょうね、反対する理由はございませんよ」[p]
;========================================================
[else]
;茶道が高くない
[whosay name=磯野]
「今後の為にもいいでしょうし、反対する理由はありません」[p]
;====================
[endif]
;=====================
*kyoutu|共通
#
磯野は頷いて優しく微笑む。[p]

[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

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
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「ええ、それにやっと殿下に会えますわ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（……やっとお会いできる）[p]

;【テキスト全画面】黒茶・和紙風背景に白文字
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=1000]
;裏で表情リセット
[主人公通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】;野点傘と縁談の背景
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/katuraginomiya_yaten.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[表示準備 storage="bg/B4nFWraU42/katuraginomiya_yaten.jpg"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
*seen1
チャリティバザー当日[p]

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
*seen3
[主人公目パチ1回]

#
チャリティーバザー会場の館のお庭には野点傘が立てられ、[r]
[ruby text=じゅう]十あまりの[ruby text=しょう]床[ruby text=ぎ]几[ruby text=だい]台に赤[ruby text=もう]毛[ruby text=せん]氈が敷かれている。[p]

中央には梅の盆栽が置かれ、梅の花の香りがする。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
（野点会場で待ち合わせしようと提案してみたけれど、[r]
[sp]殿下はどこかしら？）[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿！ こちらだ」
[葛城宮ベース私服]
[葛城宮微笑み]
[表示開始 time=300]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ通常]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「……殿下」
[主人公頬染め]
[p]
;エモあって文字表示が遅いので優先順位が低いものはクリック直前に
#
私は、殿下の方へ歩いて言った。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
「ずっと……ずっと、お会いしたく思っておりました」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮ため息]
「……本当に君にはずっと待たせてしまったな。[r]
[sp]どう詫びればいいのだろうか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公頬染め]
「もうそのことは、良いのです……殿下が私の前にいらっしゃる。[r]
[sp]それだけで幸せです」[p]
;もうが多いので一個にします　だけでも幸せ　だけで幸せ

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏せ照れ]
「君と会うのはあの薔薇園以来か。[r]
[sp]自分のけじめとして君に手紙で励まされながらも、[r]
[sp]それでも落ち着くまで君に手紙を書かなかった」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
[主人公効果消]
「ええ。 ずっと殿下を信じていました」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
[葛城宮効果消]
「ありがとう」[p]

[whosay name=葛城宮妃]
「二人とも、仲が良い事は嬉しいけれど、感動の再会は[r]
[sp]また今度ゆっくりするといいわ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮眉通常]
[葛城宮横目]
「母宮」
[葛城宮口通常]
[p]
;エモあって文字表示が遅いので優先順位が低いものはクリック直前に

[whosay name=葛城宮妃]
「ねえ、[名前]さんは、お茶[ruby text=た]点ては得意かしら？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「いえ、お恥ずかしながら、まだまだでございます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（お茶道の先生は厳しく、褒められた事は数えるほど）[p]

[whosay name=葛城宮妃]
「会場時間までまだ時間がある事ですし[r]
[sp]私と息子にお茶を[ruby text=た]点てて頂けないかしら？」[p]

[whosay name=葛城宮妃]
「以前のお茶事で貴方には心得が十分にあると察していますわ。[r]
;貴方には茶道の心得がある→左記文から"茶道の"を略した状態と思いますので、そのように調整しました(◆jsYiJcqRkk
;原文)「以前のお茶事で貴方の心得は十分にあると察していますわ。[r]

[sp]お茶事は、心構えが一番大事なのですよ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「母宮、[名前]殿に無理強いはしないで頂きたい」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「いえ、殿下。 恐れ多いことですけれど、[r]
[sp]私も精一杯心を込めてお茶を[ruby text=た]点てて、殿下や妃殿下を[r]
[sp]もてなしたいですわ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「[名前]殿！」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
「私も美味しいお茶を[ruby text=た]点てて[r]
[sp]和やかな雰囲気を作っていけるようになりたいです」
[葛城宮口微笑み]
[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（お点前を披露するのは初めて。[r]
[sp]……けれど大切な人に[ruby text=た]点ててみたい）[p]

[whosay name=葛城宮妃]
「ええ、[名前]さんは作法はできていますから、[r]
[sp]自信をもって茶を[ruby text=た]点てごらんなさい。[r]
[sp]野点なのでそんなに作法を気にしなくていいわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]
[葛城宮通常]
#
;=================================================================
[暗転２]
[葛城宮退場]
[bg method='crossfade' storage="../fgimage/bg/katuraginomiya_Japan_Tea.jpg" time=50 wait=true]
[eval exp="f.haikei_credit=''"]
[暗転２終了]
;=================================================================
#
私は殿下と妃殿下の前で少し緊張しながら、[r]
「お薄一服差し上げます」と一礼して湯を沸かした。[p]
;時間経過のある文章をそれぞれ別の文章かつ別頁に分けてわかりやすく調整しました(◆jsYiJcqRkk
いつもの手順で、心をこめて丁寧にお茶を[ruby text=た]点て茶碗にそそぐ。[p]
;=================================================================
[暗転２]
;【背景】;野点傘と縁談の背景
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/katuraginomiya_yaten.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[葛城宮ベース私服]
[葛城宮微笑み]
[暗転２終了]
;=================================================================
#
殿下と妃殿下が飲み終わり、私は期待と不安交じりに問いかけた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「いかがでしたでしょうか？」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮笑顔大]
「お茶は、とても美味しかった。[r]
[sp]君は、まだまだと言っていたが、随分と流麗な動作にみえる」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ありがとうございます」[p]

[whosay name=葛城宮妃]
[葛城宮微笑み]
;笑顔から通常への切り替わりの間の表情
「心こもった温かく美味しいお茶でしたわ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
「褒めて頂き嬉しゅうございます」[p]

[whosay name=葛城宮妃]
[主人公目伏]
「そろそろ会場時間ですわ。 貴方は何時まで居られるのかしら？」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「正午までです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「あまり長くはいらっしゃれないのですね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「ああ。 でも、またゆっくり会う機会を設けるつもりだ。[r]
[sp][名前]殿、少しだがバザーを見回ろう」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]
#
;=================================================================
[cm]
[暗転２]
[主人公通常]
;[バザー背景] まだないので暗転
;【背景】背景バザー出店（入り口）
;[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity3.jpg" time=50 wait=true]
;【背景】背景バザー出店(遠景)
[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity.jpg" time=50 wait=true]
;【背景】バザー会場（近景）
;[bg method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_cyarity2.jpg" time=50 wait=true]
[暗転２終了]
バザー出店会場[p]
;=================================================================

[葛城宮通常]
「何から見ていこうか」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「殿下は欲しいものはございませんか？」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮微笑み]
「いや、[r]
[sp]特に不自由はしていないから、欲しいものが思いつかないな。[r]
[sp]君は？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「そうですね……」[p]

[fadeoutbgm time=3000]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「あれは！」[p]

[whosay name="？？？"]
「……お久しぶりですわね」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

#
美しく華やかな女性は気まずそうに殿下に挨拶をした。[r]
歳の頃は[ruby text=に]二[ruby text=じゅう]十前後ぐらいに見える。[p]

;他シナリオ数字を漢数字で統一　はたちか迷いましたがそのままで。


[葛城宮怒り]
「自宅で謹慎しているはずが、何故ここに？」[p]

[whosay name=？？？]
「いくら皇后陛下でもいつまでも、私を謹慎は出来ないでしょう。[r]
[sp]慈善活動に参加したいと申し出て謹慎を解いてもらったのですわ」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏]
「あの一件の事、反省しているんだろうな？[r]
[sp]志津子女王！」[p]

[主人公驚]
[主人公ポーズ片手]
（志津子女王様！？[r]
[sp]まさか私の醜聞を作るように指示した方なの？）[p]

[whosay name=志津子女王]
「……やり方は汚かったと思いますわ。 そちらの方が[名字]殿ね」[p]

#
ジロジロと値踏みするように、睨むように冷たい視線を向ける。[p]

[主人公憂い]
[葛城宮怒り]
「不躾に……失礼だろう」[p]

#
[葛城宮口ムッ]
殿下はかばうように私の前に出た。[p]
;「私」が続くので一つに絞りました(◆jsYiJcqRkk

[whosay name=志津子女王]
「[名字]殿はもっと美しい方だと思っていましたわ。[r]
[sp]晴仁親王殿下はこういう方がお好みなのね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「ああ、[r]
[sp]自分の考え方を押し付けようとする、傲慢な君とは違う」[p]

[whosay name=志津子女王]
「まあ。随分な言われよう。[r]
[sp]私、貴方のこと、元はよいとは思っておりますのよ」[p]

「貴方は自身が尊い存在という事を自覚し、[r]
[sp]政界で私の父宮と衝突するのもお止めになればよろしいのに」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目伏]
「叔父宮や君は、親子してあざとく私にしてみれば不快だ！」[p]

[whosay name=志津子女王]
「今日は、やけにハッキリ言いますわね。[r]
[sp]その子を傷つけたことが、よっぽど許せないのかしら……」[p]

#
彼女は苦笑いをし、そして私に視線を向けて言った。[p]

[fadeoutbgm time=3000]

[whosay name=志津子女王]
「私は[名字]殿を認めませんわ。[r]
[sp]いきなり現れて晴仁親王をたぶらかした、下賤な方なんて！！」[p]

#
声を荒げて言う彼女は、どこか痛々しくて[r]
私は殿下が何か言いかける前に彼女の前に出て言った。[p]

[主人公ポーズ通常]
[主人公憂い]
「貴方は殿下をお慕いしていらっしゃるのですね」[p]
（たしか志津子様は殿下の元婚約者候補だった）[p]

[whosay name=志津子女王]
「……どうかしらね。[r]
[sp]けれど私の夫になる方だと思っていましたわ」[p]

#
志津子様は悲し気な顔をして言った。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉困り]
[主人公目閉]
（きっとお慕いしていらっしゃったのだわ）[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口開]
「心に決まった方が、急に別の方と婚約してしまわれたら……。
[sp]それが私だったのですね」[p]

;相手の気持ちを引き出すためのセリフだと思いますので、嫌がらせをした相手だとしても、あまり相手の傷に触れるような言葉を重ねることは避ける方がより淑女的だと思いますので調整してみました。もっと良い表現があればご変更ください(◆jsYiJcqRkk
;原文：「私も心に決まった方がいて、いきなり別の方と[r]
;[sp]婚約されたら悲しいですわ。[r]
;[sp]貴方には悪い事をしたと思います」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[whosay name=志津子女王]
[主人公口通常]
「ええ、そうですわね！[r]
[sp]晴仁殿下がまだ独身だったら許せたわ。 けれど貴方なんかに[r]
[sp]奪われたなんて、悔しくて仕方ありませんの」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「志津子様……今すぐに私を許してもらおうとは思いません。[r]
[sp]けれど私も殿下をお慕いしているのです」[p]

「いつか志津子様や皇族の方々にも認めてもらうように[r]
[sp]努力するつもりです」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「私、殿下を誰よりも理解し、殿下を助けられる、[r]
[sp]賢く強い妃になろうと思います」[p]
;「～つもりです」が続くので表現を変更しました(◆jsYiJcqRkk

[whosay name=志津子女王]
「そう……けれど現実は違いますわ。[r]
[sp]反感を持っているのは私だけではありません」[p]

「他の方の風当たりは厳しく、貴方は傷ついて、[r]
[sp]きっと嫁いだことを後悔しますわよ」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目伏]
[主人公口ほほえみ]
「未来なんてわかりませんわ。[r]
[sp]努力すれば報われることもあります」[p]

[whosay name=志津子女王]
「自信があるのね。[r]
[sp]まあ、私は軽率に事を起こし、皇后陛下にも叱責を受けました」[p]

「貴方には、もう何もする気もありませんわ。[r]
[sp]黙って貴方が失望する時を待つことにします」[p]

;原文：「自信があるのね、[r]
;[sp]まあ私は軽率に事を起こし、皇后陛下にも叱責を受け、[r]
;[sp]私は貴方にもう何もする気もありませんわ。[r]
;[sp]黙って貴方が失望する時を待つことにします」[p]

#
そして志津子様は立ち去って行かれた。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮ため息]
「君に嫌な思いをさせてしまったな」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「いえ、私は彼女を犠牲にしているのです。[r]
[sp]この事実を正面から受け止めるつもりですわ」[p]

（今はそれしか出来ないけれど……）[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「私が至らなかったせいもあるとは思っている。[r]
[sp]苦手な女性だが、傷つければいいというものでもなかった」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏]
「私も嫉妬や羨望と無縁ではありませんから、志津子様の気持ちも少しは、[r]
[sp]わかるつもりです。 心というのは難しいですね」[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮驚き]
「君が嫉妬を？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「似たような気持ちですわ。 [r]
[sp]殿下は女性にあんなきつい物言いをしませんもの」[p]

[葛城宮口通常]
「私の事であんな風に怒って下さった事が嬉しいと思って[r]
[sp]しまいましたの……醜いですわ」[p]


[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮目閉じ]
「そうか。だが醜くてもいい。[r]
[sp]……君を誰よりも愛おしく思っているのだ」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公頬染め]
「……殿下」[p]

[葛城宮口微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（言葉にならないほどの嬉しく優しい気持ちが胸で一杯だわ。[r]
[sp]きっとこれが愛おしい気持ち）[p]

;【SE】時計の鐘（ボーン）
[playse storage=tokei_tokei_kane.ogg loop=false ]
#
正午の鐘の音が鳴った。[p]
;原文：けれど、正午の鐘の音が鳴った。[p]

[whosay name="葛城宮　晴仁" color=%mp.color]
[葛城宮通常]
「……名残惜しいな」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ。けれど、またゆっくりお会いしましょう」[p]

[主人公目閉]
[主人公ポーズ通常]
#
――また今度。[r]
それはきっと近いうちに来る。[r]
春が、訪れる。[p]
*seen_end1
;@jump storage="event.ks" target=*event_owari

[eval exp="sf.event_katuragi_bazar = 1"]

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
