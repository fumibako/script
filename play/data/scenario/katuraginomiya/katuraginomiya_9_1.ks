;4回目イベント　葛城宮の好感度が一番高い、一定の淑女度　
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*9_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公伏目]
[主人公眉下げ下]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[主人公伏目パチ1回]
[whosay name=磯野 color="dimgray"]
「お嬢様、文矢様からの手紙が届いております」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ええ、ありがとう」[p]

#
磯野から手紙を受け取り、お兄様からの手紙を読んだ[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[手紙文矢 fumi_number=]
[名前]へ[l][r]
拝啓[r]
[sp] そちらは風がススキに揺れる涼しい頃でしょうか？[r]
[sp][名前] は穏やかに過ごしていますか？ [r]
[sp] こちらの仕事もひと段落落ち着き、[r]
僕達夫婦も元気に過ごしています。[r]
[r]
[sp] 先日、父からの手紙を読み、[r]
[名前]が、親王様に見初められ、[r]
婚約者候補としてあげられた事を知りました。[r]
[sp] あのお転婆だった[名前] もすっかり一人前の淑女に[r]
なったとも書かれてあり驚きを隠せません。[r]
[r]
[sp] また[名前] が嫁ぐ前に会いたいと思っています。[p]
[sp][r]
[sp] まだ候補だと聞きましたが[名前]が親王妃となる[r]
のでしょうか？[r]
[sp] 恐れ多く、誉れ高いことですがとても苦労すると[r]
思ってしまします。[r]
[sp]父や磯野ともよく相談して決めてるといいでしょう。[r]
皆、[名前]の意思を尊重してくれると思います。[r]
[r]
[sp]それでは皆が健やかに過ごせることを祈っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　敬具[r]
[sp]　　　　　　　　　　　　　　　　　　　　　鷹司　文矢 [p]
[手紙読了]

[whosay name=磯野 color="dimgray"]
「文矢様は、お元気にされていますか？」[p]
;お元気にされていらっしゃいますか？
#
磯野は懐かしそうに微笑んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、元気に過ごしていると書かれているわ。[r]
[sp]それにしても内容はここ数日悩んでいる事でした」[p]
;[主人公伏目パチ1回]
（……皆、心配してくれているのね）[p]

#
そして私は文箱にお兄様の手紙を仕舞い、[r]
ここ数日、読み返した手紙を手に取って再び読んだ。[p]
[主人公目閉]
……私の心は決まりつつある[p]
[主人公伏目パチ1回]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l]
[r]
[r]
[sp]拝呈　初秋の候　[名前]殿にはお変わりなく[r]
元気でいるだろうか？[r]
[r]
[sp]先日のお茶事からそうたってないが[r]
君が正式に皇室で認められたことで周囲の者たちが[r]
色めき立ち正式な婚約者を決めようという事になった[r]
[r]
[sp][sp]私は君と正式に婚約したいと思っている[r]
[sp][sp]だが君はどうだろうか？　[p]
[sp][r]
[r][r]
[sp]勿論私は君に無理意地はしたくない[r]
[sp]重要な事なので君も周囲の者たちと[r]
よく話し合って決めてくれるとよい[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　謹言[r]
[sp]　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公 通常　
[主人公通常]
私は、葛城宮様と
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
;背景変更:和紙風 水色
;[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=100]
[eval exp="f.haikei_credit=''"]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;文字が先に表示されるの防止
[wait time=50]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*yes]婚約する意思を固める。[endlink][r]
[r][r][r]
[link target=*no]婚約しない。[endlink][r]
[resetfont]
[s]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*yes
[er]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
;＝＝＝＝＝＝＝＝＝＝＝＝＝
;システム地の文。変更してください
婚約する意思を固めた。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝
;フラグA
[eval exp="f.katuraginomiya_konyaku=true"]
@jump target=*common
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
*no
[er]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[暗転]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;システム地の文。変更してください
婚約をしないことにした。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝
;フラグB
[eval exp="f.katuraginomiya_konyaku=false"]
@jump target=*common
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*common
;共通 で背景をもどします。
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]　
;フラグBのときは違うシナリオにジャンプします。フラグAの時は無視して下のシナリオに行きます。
[if exp="f.katuraginomiya_konyaku==false"]
;まだ次のシナリオを把握してないので、次に追加します
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;フラグA
;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「磯野、[r]
[sp]お父様に 今日時間がある時にお話しがしたい と伝えて下さい」[p]

[whosay name=磯野 color="dimgray"]
「かしこまりました。[r]
[sp]お話しとは、やはり葛城宮殿下の事でございますか？」[p]
#
;【立ち絵】主人公 主人公照れ目普通 セリフ表示までの間があるのでmodで
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓眉：下がり眉下[主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、心が決まりました。[r]
[sp]皆、そして私の意思を尊重してくれる事も、感謝しています」[p]
;大事なセリフはわけて
[whosay name=&sf.girl_namae color="#cf5a7f"]
「殿下と
[主人公伏目パチ1回]
婚約いたしますわ」[p]
[whosay name=磯野 color="dimgray"]
「！[sp]お嬢様がお決めになったことは、私は反対いたしませんが、[r]
[sp]苦労されることをご承知の上ですね？」[p]
;名前変化してから
;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、身分が高くなるのは[r]
[sp]それだけ自由がなくなる事も承知の上です」[p]
[主人公通常]
[主人公口開]
「ましてや、殿下は、周囲の反対を押し切って新しいことをされようと[r]
[sp]しているわ。[r]
[sp]うまくいかないときのほうが多いでしょう」[p]
;大事なセリフはわけて　表情の移り変わり設定をそのまま表現
[主人公口通常]
[主人公目パチ1回]
[主人公眉下げ下]
「けれど殿下をお支えしたいのです」[p]
;が続きますので何か別の言い回しか、セリフを分割確認
;「お嬢様。念のため、お聞きしますが、もう迷いは、ないのですか？」[p]
;「ここ数日、お嬢様はずっと悩んでいらっしゃったので、御無理をなされていないか、私は心配です」[p]
[whosay name=磯野 color="dimgray"]
[主人公眉通常]
「念のため、お聞きしますが、[r]
[sp]ここ数日、悩んでいらっしゃいましたが、[r]
[sp]もう迷いは、ないのですか？」[p]
[主人公伏目]
[主人公眉下げ下]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「勿論、色々な事を考えましたわ」[p]
[主人公伏目パチ1回]
「お父様にもご迷惑がかかったりしないかとか、[r]
[sp]私が宮中でうまくやっていけるかとか、[r]
[主人公目閉じ]
[sp]けれど、強くて優しい殿下と一緒になりたいと想ったのです」
[p]
[主人公目伏]
[whosay name=磯野 color="dimgray"]
「いつのまにか、お嬢様も一人前になりましたね。[r]
[sp]それでは旦那様にお伝えしに参ります」[p]
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字]裏で画面構成
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;裏で表情リセット
[主人公通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;【テキスト全画面】黒茶・和紙風背景に白文字
数刻後[p]
;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=false]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[layopt layer=fix visible=true]
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.father_name color="DarkSlateBlue"]
「話があると聞いた。
[主人公目パチ1回]
[sp]話してごらんなさい。」[p]

;【立ち絵】主人公 真剣
;指定されていないので指定します
[主人公真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、私は葛城宮殿下と、正式に婚約したく思っています。[r]
[sp]お許し頂けますか？」[p]
[主人公眉下げ]
[主人公目伏]
（きっと許してもらえるけれど、反対されるかも知れない）[p]
#
期待と不安が入り混じった、私の眼差しを受けて、[r]
お父様は、思案するように目を閉じた。[p]
[主人公通常]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「お前は、我が家の[ruby text=ほまれ]誉だ。[r]
[sp]恐れ多くも、親王様の婚約者候補になれるとは思っていなかった」[p]

#
[主人公目大]
お父様の言葉に期待に胸が膨らむ。[p]
;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ]
[主人公頬染め]
「お父さまそれでは！」[p]

#
[主人公眉通常]
[主人公目通常]
お父様は、寂しそうで不安な表情になった[p]
[主人公効果消]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「だが葛城宮殿下の身分は高く、[r]
[sp]身分の違いは、お前を不幸にするかもしれない。[r]
[sp]我が家にも気軽に帰れることはないだろう」[p]
[主人公目パチ1回]
「[名前]はそれでもいいのかね？」[p]
;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、けれど自由がなくなることも生まれ育ったこの家に[r]
[sp]帰れなくなることも承知の上です」[p]
[主人公目通常]
[主人公口開]
「私は殿下の事をお慕いしております！[r]
[主人公口通常]
[sp]殿下のもとに嫁ぐと、もう心に決めました」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか……それでは反対すまい。[r]
[主人公目パチ1回]
[sp]しかし、葛城宮殿下は、同じく貴族院に入っている叔父宮と[r]
[sp]度々衝突していると聞く。
[sp]心しておきなさい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公眉下げ下]
[主人公頬染め]
[主人公口ほほえみ]
「お父さま！[sp]ありがとうございます。[r]
[sp]忠告も心に留めておきます」[p]

#
そしてお父様は優しく笑ってくれた。[p]
[stopbgm]
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
