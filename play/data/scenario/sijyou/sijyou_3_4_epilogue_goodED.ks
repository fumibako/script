;/////////////////エピローグ追加分（good_end差分です)//////////
[setreplay name="replay_sijyou_3_4_goodED_scene" storage="sijyou/sijyou_3_4_epilogue_goodED.ks" target="start"]
*replay_sijyou_3_4_goodED
[ct]
[clearfix]
[clearstack]
[iscript]
$('rp_bt').remove();
$('.list').remove();
*replay_sijyou_3_4_epilogue_goodED
[endscript]
*replay_sijyou_3_4_good
*start
[freeimage layer = 1]
[if exp="tf.test_sijyou == true"]
[eval exp="f.okeiko_gamen=true"]
[eval exp="f.sijyou_au=1"]
[endif]
[stopbgm]
[call target=*3_4_ep storage="sijyou/preload_sijyou.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】ﾌﾟﾛﾛーｸﾞ　一瞬見える
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
[eval exp="f.haikei_credit=' '"]
[プリロード画面消去]
;====================================================
;テストは一時的にイベントシーン構築つけてます
*ep
[fadeoutbgm time=3000]
;==========================スクリプト・全画面表示の間に設定===============================
;【テキスト全画面】 裏で画面構成 ;[新聞] test_bg_sinbun.jpg bg_prologue_dark.jpg　bg_prologue.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風 bg_prologue.jpg
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
[call target=*start storage="macro_tati_sijyou.ks"]
;【登場】四条
[四条ベース着物]
[四条通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

[sp]――その数年後、
[sp]秋の輝きが風になびくころ。[p]
;輝花が　輝きが　幸せな思い出が
;タイトルの曲のほうがいいかも20090303yukidoke

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;ｸﾘｯｸがみえる場合は追加↓
;[layopt layer=message0 visible=false]
;【背景】ｴﾋﾟﾛｰｸﾞ部屋　昔の華族の家は和と洋が隣接しているので？
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_sijyou_ep_wasitu.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_ep_wasitu.jpg"]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[イベントシーン構築ボタン無し版枠茶色]
[freeimage layer = 29 time=1000]
[wait time=1000]
;ｸﾘｯｸがみえる場合は追加↓
;[layopt layer=message0 visible=true]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備========================================
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
;[四条口驚き]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ふぅ……
;[四条口ムッ]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
なかなか決まりませんね」[p]

[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_futuu_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公通常]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]
[if exp="f.skip == false"]
[主人公目パチ1回]
[wait time=10]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうされましたか？ 」[p]
[主人公口ほほえみ]
[wait time=10]

;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「華道祭で玄関先に飾る御所花車の構図が決まらなくて……」[p]

[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「少し、休まれませんか？ [華衣]さんからのお手紙も来たので」[p]
[主人公目パチ1回]
[wait time=10]
;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]
[四条驚き]
[whosay name="華織" color="olivedrab"]
「[華衣]から手紙ですか！ なかなか手紙さえ返してくれなかったのに。[r]
[四条困り微笑み]
[sp]一体、何をしてるのでしょうか……」[p]
[if exp="f.skip == false"]
[主人公目パチ1回]
[wait time=10]
[endif]
[主人公ポーズ指]
[wait time=10]
;なにかしらと読み

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「手紙によりますと……[r]
[sp][華衣]さんは結納式の後に出会った方と四条家の鉱山[r]
[sp]事業を生かした、発電事業をはじめ……」[p]
[if exp="f.skip == false"]
[主人公目パチ1回]
[wait time=10]
[endif]
「事故の少ない交通機関の発展にも貢献しているそうですよ」[p]
[主人公ポーズ通常]

;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「そうですか、風の噂で少なからず聞いてましたが、元気にやっているよう[r]
[sp]ですね」[p]
[四条憂い]
[whosay name="華織" color="olivedrab"]
（そのうち、訪ねてくるような仲になれるだろうか？）[p]

[主人公口笑顔]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私達も、負けていられませんね」[p]
[四条通常]
[whosay name="華織" color="olivedrab"]
「！ [r]
;[四条微笑み]
[四条困り微笑み]
[sp]そうですね。 休憩はこのあたりにしておきましょうか」[p]

[主人公通常]
[wait time=10]

[if exp="f.skip == false"]
[主人公目パチ1回]
[wait time=10]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「いいのですか？」[p]
[四条笑顔]
[whosay name="華織" color="olivedrab"]
「ちょうど[名前]さんの愛らしい顔をみたら、[r]
[sp]いい構図を思いつきましたから」[p]

[主人公ほほえみ]
[wait time=10]
;止まるの回避
#
[名前]は華織に微笑み返すと、縁側で揺れるネリネの花を見つめた。[p]
;主語が決まってません↑
[主人公退場]
[whosay name="華織" color="olivedrab"]
[四条真剣]
（手紙の代わりに、華で想いを綴っていくと決めたのだから、[r]
[四条口微笑み]
[sp]もっと精進しなくては）[p]
#
[wait time=10]
;メッセージレイヤを消去
@layopt layer=message0 visible=false
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
;メッセージレイヤを表示
@layopt layer=message0 visible=true
;一時的に行間多く
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '15';
[endscript]
その後、華道家として祖母以上に認められ華織は、[r]
四条御流として更に名が知れ渡るほどに国の文化に[r]
貢献することとなった。[p]
;【退場】四条
[四条退場]
その陰には、彼を支える[名前]の姿があったという。[p]
[bg wait=true method='crossfade' storage="../fgimage/bg/sijyou_ed_tegami0.jpg" time=1000"]
[wait time=10]
;[chara_mod name="bg" storage="bg/sijyou_ed_tegami0.jpg" time=1000]
[freeimage layer = 29 time=1000]
[wait time=1000]
;背景仮でおいてみる　いつもの手紙の背景に和花でも？？
[font color="000000"]
[position left=200 width=700 height=500 top=110 page=fore margint="50"]
[wait time=50]
想いを繋げて綴っていく手紙は、[r]
いつしか恋を綴り、[r]
[r]
人々を幸せにする愛に変わっていく。[p]

[fadeoutbgm time=3000]
[position left=290 width=700 height=500 top=110 page=fore margint="50"]
[wait time=50]
その手紙は――[p]


[position left=300 width=400 height=300 top=200 page=fore margint="50"]
[wait time=50]
恋綴り　と呼ばれたという。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用)
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '6';
[endscript]

;手紙によって大きく変わった四条兄弟が人々に貢献する・・・にもつながる？
;===============================================================
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position left=300 width=300 height=300 top=200 page=fore margint="50"]
[font size=35]
;===============================================================
;画面中央に「完」の文字
[sp]　　　　完[p]

[if exp="f.flag_replay == true || f.event_replay == 'sijyou'"]
@layopt layer=29 visible=true
[イベントシーン終了]
[iscript]
$('.1_fore').empty();
[endscript]
@layopt layer=1 visible=true
[endif]

;回想記録終了ifからだしておいてください
[endreplay] 

[if exp="f.flag_replay == true"]
[イベントシーン終了]
;web版はendreplayの下にするexe版はendreplayで戻る
;【背景】セピア背景
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sepia.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/plane_sepia.jpg"]
[eval exp="f.haikei_credit=''"]

@jump storage="replay2.ks"
[endif]

[イベントシーン終了・ＢＧＭ有]
;テストでもみれるように↑
[if exp="f.okeiko_gamen == true"]
;ending処理
;goodエンディング時
[eval exp="sf.ED_sijyou_good=1"]
;四条ルートをクリアした
[eval exp="tf.ED_sijyou = 1"]

[call storage="sijyou/test_ed_credit.ks" target=*test_haikei]

;tweet表示
[call storage="sijyou/01_tweet.ks"]

@jump storage="event.ks" target=*event_ED
[else]
[四条ルート終了 end=good]
[endif]


@jump storage="test_sijyou.ks"
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
[メッセージウィンドウ上ボタン表示]
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
