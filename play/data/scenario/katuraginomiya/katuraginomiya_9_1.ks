;4回目イベント　葛城宮の好感度が一番高い、一定の淑女度　
;=======================お芝居の準備中です==================================
*replay_katuraginomiya_9_1
[stopbgm]
[call target=*9_1 storage="katuraginomiya/preload_katuraginomiya.ks"]
[freeimage layer = 1]
[wait time=10]
;リプレイフラグ監視　既にtrueの値が入っている場合(未定義ではない)場合フラグを一時保管
[if exp="f.katuraginomiya_konyaku == true && f.event_replay == 'katuraginomiya'"]
[eval exp="tf.kansi_flag = f.katuraginomiya_konyaku"]
[endif]
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
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
「お嬢様、文矢様からのお手紙が届いております」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「ええ、ありがとう」[p]

#
磯野から手紙を受け取り、お兄様からの手紙を読む。[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;シナリオのみはスキップ　一時変数が等しいは滅多に反応しない
[if exp="tf.test_katuraginomiya == true"]
@jump target=katuragi_hairetu_skip
[endif]

*fumi_toutyaku_fumiya
[if exp="f.okeiko_gamen == true"]
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「親王様との婚約について」文矢";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*fumi_fumiya");
f.fumi_list_all_location_taishou.push(5);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
[endscript]
[endif]
*katuragi_hairetu_skip
[手紙文矢 fumi_number=]
[if exp="tf.test_gamen == true || tf.test_katuraginomiya == true"]
テストモードで表示しています。[r]
[link target=*yy]手紙スキップ[endlink][r][r]
[link target=*nn]手紙を読む[endlink][s]
*nn
[er]
[endif]
[名前]へ[l][r]
[r]
[sp]そちらは風がススキに揺れる涼しい頃でしょうか？[r]
[sp][名前] は穏やかに過ごしていますか？ [r]
[sp]こちらの仕事もひと段落落ち着き、僕達夫婦も元気に[r]
過ごしています。[r]
[sp]先日、父からの手紙を読み、[r]
[名前]が、親王様に見初められて、婚約者候補としてあげられた事を[r]
知りました。[r]
[sp]あのお転婆だった[名前] もすっかり一人前の淑女になったとも[r]
書かれてあり、驚きを隠せません。[r]
[r]
[sp] また[名前] が嫁ぐ前に会いたいと思っています。[p]
[sp][r]
[sp] まだ候補だと聞きましたが[名前]が親王妃となる[r]
のでしょうか？[r]
[sp] 恐れ多く、誉れ高いことですがとても苦労すると[r]
思ってしまいます。[r]
[sp]父や磯野ともよく相談して決めるといいでしょう。[r]
皆、[名前]の意思を尊重してくれると思います。[r]
[r]
[sp]それでは皆が健やかに過ごせることを祈っています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　[r]
*yy
[sp]　　　　　　　　　　　　　　　　　　　　[名字]　文矢 [p]
[手紙読了]

[whosay name=磯野 color="dimgray"]
「文矢様は、お元気にされていらっしゃいますか？」[p]

[if exp="tf.test_gamen == true || tf.test_katuraginomiya == true"]
テストモードで表示しています[r]
[link target=*fumi_toutyaku_katuraginomiya_29]手紙までスキップ[endlink][r][r]
[link target=*nn1]スキップしない[endlink][s]
*nn1
[er]
[endif]

#
磯野は懐かしそうに微笑んだ。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、元気に過ごしていると書かれているわ。[r]
[sp]それにしても内容はここ数日悩んでいる事でした」[p]
;[主人公伏目パチ1回]
（……皆、心配してくれているのね）[p]

#
そして私は文箱にお兄様の手紙をしまい、[r]
代わりに、読み返した手紙を手に取って再び読んだ。[p]
[主人公目閉]
……私の心は決まりつつある。[p]
[主人公伏目パチ1回]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

*fumi_toutyaku_katuraginomiya_29

;シナリオのみはスキップ
[if exp="tf.test_katuraginomiya == true"]
@jump target=katuragi_hairetu_skip2
[endif]

[if exp="f.okeiko_gamen == true"]
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「婚約について」　葛城宮 晴仁";//←仮タイトルです。お好みに変更してください
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「婚約について」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi27");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(28);
f.fumi_list_katuraginomiya_location_fumi.push(28);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi27");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[29]=1;
f.katuraginomiya_fumi_toutyakumachi_shumi=-1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_katuraginomiya_number=f.fumi_katuraginomiya_number + 1;
f.hensin_list_hairetsu[3][28] = 1;
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + f.katuraginomiya_koukando_up_event_fumi;
[endscript]
[endif]
*katuragi_hairetu_skip2
[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[if exp="tf.test_gamen == true"]
テストモードで表示しています[r]
[link target=*yy2]手紙スキップ[endlink][r][r]
[link target=*nn2]手紙を読む[endlink][s]
*nn2
[er]
[endif]
[名字]　[名前]殿へ[l]
[r]
[r]
[sp][名前]殿にはお変わりなく、元気でいるだろうか？[r]
[r]
[sp]先日のお茶事からそうたってないが、君が正式に皇室で[r]
認められたことで周囲の者たちが色めき立ち、[r]
もっと身分に相応しい婚約者を決めようとしているが、[r]
私が婚約したいのは君だけだ。[r]
[sp]私は君に婚約を申し込む。[r]
[r]
[sp]　　近く、当家の主務事務官と宮内省の宗秩寮総裁が、[r]
[sp]　　 [名字]家当主に婚約の申し込みをしに訪れる。[p]
;アイコンに被るので[sp]してます。
[sp][r]
[r][r]
[sp]勿論、私は君に無理強いはしたくない。[r]
[sp]重要な事なので君も周囲の者たちと、よく話し合って決めて[r]
くれるとよい。[r]
[sp]返答がどちらにせよ私は受け止めるつもりだ。[r]
[r]
*yy2
[sp]　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[if exp="f.okeiko_gamen == true"]
;未読→既読処理
[eval exp="f.midoku_list_hairetsu[3][28] = 0"]
[endif]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公 通常　
[主人公通常]
私は、殿下との

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝葛城のみの攻略＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[if exp="f.katuraginomiya_only == 1 "]
婚約をお受けすることにした。[p]
;全画面ﾒｯｾｰｼﾞの分岐
[eval exp="f.katuraginomiya_konyaku=true"]
@jump target=*common
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝規定ｷｬﾗ３０以下エラー回避＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
[if exp=" f.para_zaizen_koukando < 30 && f.para_sijyou_koukando < 30 && f.para_kuroda_koukando < 30 "]
;３０以下エラー回避　ﾒｯｾｰｼﾞ変更してください　9_1共通とは別の動作（9_1がサポートするのは選択肢）＆テスト時にスムーズに進行するために必要
婚約をお受けすることにした。[p]
;全画面ﾒｯｾｰｼﾞの分岐
[eval exp="f.katuraginomiya_konyaku=true"]

@jump target=*common
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[bg method='crossfade' storage="../fgimage/bg/plane_sakura.jpg" time=100 wait=true]
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
[link target=*yes]婚約をお受けする。[endlink][r]
[r][r][r]
[link target=*no]婚約をお断りする。[endlink][r]
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
婚約をお受けする。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝
;フラグA 話の流れにかかわる
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
婚約を辞退する。[p]
;＝＝＝＝＝＝＝＝＝＝＝＝＝
;フラグB
[eval exp="f.katuraginomiya_konyaku=false"]
@jump target=*common
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
*common
;共通 で背景をもどします。
;【背景】主人公邸 庭の見える部屋：昼
[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]　
;フラグBのときは違うシナリオにジャンプします。フラグAの時は無視して下のシナリオにno_endに飛びます。
[if exp="f.katuraginomiya_konyaku==false"]
;no_endに飛びます
@jump target=*no_end
[endif]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;フラグA
*seen_A
;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「磯野、[r]
[sp]お父様に 今日時間がある時にお話しがしたい と伝えて下さい」[p]
;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok0]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no0]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok0
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end00
[s]

*jump_no0
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;------------------------------------------------

[whosay name=磯野 color="dimgray"]
「かしこまりました。[r]
[sp]お話とは、やはり葛城宮殿下の事でございますか？」[p]
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
[sp]皆、私の意思を尊重してくれることに、感謝しています」[p]
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
「ええ、身分が高くなるのは、それだけ自由がなくなる事も承知の上です」[p]
[主人公通常]
[主人公口開]
「殿下は、周囲の反対を押し切って新しいことをされようと[r]
[sp]しているわ。[r]
[sp]うまくいかないときのほうが多いでしょう」[p]
[主人公口通常]
[主人公目パチ1回]
[主人公眉下げ下]
「けれど、殿下をお支えしたいのです」[p]
;が続きますので何か別の言い回しか、セリフを分割確認
;「お嬢様。念のため、お聞きしますが、もう迷いは、ないのですか？」[p]
;「ここ数日、お嬢様はずっと悩んでいらっしゃったので、御無理をなされていないか、私は心配です」[p]
[whosay name=磯野 color="dimgray"]
[主人公眉通常]
「ご無理をされていないか、私は心配です。[r]
[sp]家の名誉を重んじてのことではありませんか？[r]
[sp]お嬢様は葛城宮殿下お慕いしているのですか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公伏目]
[主人公眉下げ下]
[主人公口ほほえみ]
「勿論、色々な事を考えましたわ」[p]
[主人公伏目パチ1回]
「お父様にもご迷惑がかかったりしないかとか、[r]
[sp]私が宮中の方と折り合う事ができるかとか、[r]
[主人公目閉じ]
[sp]けれど、強くて優しい殿下と一緒になりたいと想ったのです」
[p]
[主人公目伏]
[whosay name=磯野 color="dimgray"]
「いつのまにか、お嬢様も一人前になりましたね。[r]
[sp]それでは、旦那様にお伝えしに参ります」[p]
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
;【背景】主人公邸 庭の見える部屋：夜
[bg method='crossfade' storage="../fgimage/bg/room_niwa_yoru.jpg" time=1000 wait=true]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;【テキスト全画面】黒茶・和紙風背景に白文字
数刻後[p]
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
;==========================スクリプト・全画面表示からの復帰準備========================================

[whosay name=&sf.father_name color="DarkSlateBlue"]
「話があると聞いた。
[主人公目パチ1回]
[sp]話してごらんなさい」[p]

;【立ち絵】主人公 目閉じ
;指定されていないので指定します
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉]
「お父様、私は葛城宮殿下と、正式に婚約したいと思っています。[r]
[主人公眉通常]
[主人公目通常]
[sp]お許し頂けますか？」[p]
;ここの表情が真剣からの移り変わりがキツイです
[主人公眉下げ下]
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
「お父さま、それでは！」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
[主人公眉通常]
[主人公目通常]
「[名前]……」[p]
#
;しかし
喜ぶ私とは、打って変わって、お父様はどこか寂し気で不安な表情へと[r]
変わった。[p]
[主人公効果消]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「葛城宮殿下の身分は高く、身分の違いは、お前を不幸に[r]
[sp]するかもしれない。[r]
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
「私は殿下の事をお慕いしております！ 殿下のもとに嫁ぐと、[r]
[sp]もう心に決めました」
[主人公口通常][p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「そうか……それでは反対すまい。[r]
[主人公目パチ1回]
[sp]しかし、葛城宮殿下は、同じく貴族院に入っている叔父宮と[r]
[sp]度々衝突していると聞く。[sp]心しておきなさい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目伏柔]
[主人公眉下げ下]
[主人公頬染め]
[主人公口ほほえみ]
「お父さま！[sp]ありがとうございます。[r]
[sp]忠告も心に留めておきます」[p]

#
;そして、お父様は、優しく笑って下さった。[p]
お父様は、私の喜ぶ表情を見た後、優しく微笑み返した。[p]
*seen_end00
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
;【背景】主人公邸 庭の見える部屋：昼
;[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]　
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;【テキスト全画面】黒茶・和紙風背景に白文字
数日後、[r]
葛城宮家の主務事務官と宮内省の宗秩寮総裁を[r]
迎え、婚約の申し込みをお受けした。[p]
[r]
【主務事務官・宗秩寮総裁】[r]
「[ruby text=かしこ]畏き[sp]あたりの[ruby text=おぼ]思し[ruby text=め]召しにより、[r]
[sp]ご当家の長女・[名前]姫を葛城宮王妃に[r]
[sp]お[ruby text=むか]迎え申し上げたい」[r]
[r]
[r]
【[emb exp="sf.father_name"]】[r]
「まことに一家一門の名誉。 [r]
[sp]ご無沙汰の趣、謹んで[ruby text=はい]拝[ruby text=じゅ]受[ruby text=つかまつ]仕ります」[r]
[p]
お父様は、私の幸せを願い、[r]
殿下らの婚約をお受けして下さった。[r]
そして、ここから殿下と私の物語はまた新たに始まる。[r]
[p]
*seen_end0
[if exp="f.okeiko_gamen == true"]
[eval exp="f.event_common[10] = 1"]
[eval exp="f.event_oaite_mitei=0"]
[eval exp="f.katuraginomiya_au=1"]
;共通お相手決定フラグ　９＿１判定をスキップする 
[eval exp="f.omiai_kettei =1"]
[endif]
;===================================================================================
;スクリプト・全画面表示からの復帰準備へ飛ぶ 初期化
@jump target=*common_end
;========================断るイベント_ジャンプ位置===========
*no_end
;===================================
;断るイベント
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「皆、私の意思を尊重してくれることに、感謝しています。[r]
[sp]謹んで[ruby text=はい]拝[ruby text=じ]辞[ruby text=つかまつ]仕ります、とお伝えください……」[p]

;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]
[endif]
;------------------------------------------------
[whosay name=磯野 color="dimgray"]
「お嬢様のお決めになったことに反対いたしません。[r]
[sp]……後の事はお任せください」[p]

#
磯野は安心と落胆の気持ちが入りまじった[r]
複雑な表情をしている。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"] 
「ありがとう。[r]
[主人公目閉じ]
[sp]私では宮中になじめないでしょう」[p]
（きっと殿下にはもっとふさわしい方がいるわ）[p]
#
磯野は、静かに返事をすると部屋から出て行った。[p]

*seen_end1
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
;【背景】主人公邸 庭の見える部屋：昼
;[bg method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50 wait=true]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]　
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;【テキスト全画面】黒茶・和紙風背景に白文字　資料http://yourei.jp/%E7%BE%8E%E6%84%8F%E5%AD%90
翌日、[r]
葛城宮家の主務事務官と宮内省の宗秩寮総裁がみえ、[r]
恭しく辞退の意思を伝えると[r]
[r]
「葛城宮親王は、さだめしご落胆[ruby text=あそ]遊ばすことで[r]
[sp]ございましょう」[r]
[r]
と述べて静かに去っていった。[p]
[r]
――出会いは一期一会。[r]
[r]
殿下との別れを選んだけれど出会ったことは後悔はなく、[r]
殿下は時折、新聞や雑誌に載り、私は懐かしく想う事になる。[p]
;断るイベント
;==========================スクリプト・全画面表示からの復帰準備_初期化==================================
*common_end
;終了はすべてここにきます
[stopbgm]
[resetfont]
[er]
[if exp="f.katuraginomiya_konyaku == true"]
[主人公退場]
[endif]
[if exp="f.okeiko_gamen != true && f.event_replay == 'katuraginomiya' && f.katuraginomiya_konyaku == false"]
;通常の場合そのまま浩文とのイベントになる
[主人公退場]
[endif]
;背景の変更。ひとまず暗転に
[暗転]
;上に載っている画像が消えます。それまでに設定
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[freeimage layer = 29 time=1000]
[wait time=1000]
;================================以降スクリプト担当====================================================
;機能ボタン表示_スクリプト担当さまにおまかせします　
*seen_end
[eval exp="sf.event_katuragi_9_1 = 1"]
[if exp="f.okeiko_gamen == true && f.event_oaite_mitei == 1 && f.katuraginomiya_konyaku == false"]
;ジャンプ先でバッド判定あり
@jump storage="common_9_1.ks" target="*common_9_1_futatabi_oaiteerabi"
[endif]

;リプレイ時 監視フラグがtrueでない(未定義)の場合、初期値にもどす
[if exp="f.okeiko_gamen != true && f.event_replay == 'katuraginomiya' && tf.kansi_flag != true"]
[eval exp="f.katuraginomiya_konyaku = false"]
[endif]
;リプレイ時　監視フラグがtrueである(未定義ではない)場合そのまま渡す
[if exp="f.okeiko_gamen != true && f.event_replay == 'katuraginomiya' && tf.kansi_flag == true"]
[eval exp="f.katuraginomiya_konyaku = tf.kansi_flag"]
[endif]

[イベントシーン終了]

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
