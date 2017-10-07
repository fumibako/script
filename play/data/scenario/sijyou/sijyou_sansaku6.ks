;散策案 花火 どんなイベント？ 散策しようとして思い出に浸る 期間 夏　夕前(イメージ15時〜16時くらい？)
;==========================================================================
*sansaku
[stopbgm]
;個別ルート前の個別イベントなので四条プリロード画面表示
[call target=*sansaku6 storage="sijyou/preload_sijyou.ks"]
;==========================================================================
;【背景】主人公邸 庭の見える部屋：夏
[freeimage layer = 1]
[wait time=10]
[背景_庭_夏]
[四条イベントシーン構築]
;前半はBGM無しでいい、同系統の音楽だと切り替えに違和感あると感じた
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[四条ボタン表示]
;==========================================================================
#
昼過ぎ、暑さも落ち着く頃合い。私は、散策に出かけようとした。[p]
[whosay name="磯野"]
「お嬢様、今日は"人通りが多い"と思います。散策に出られるのは、[r]
[sp]お控えした方がよろしいかと」[p]
;して頂いたほうが？　どっちが正しいのやら？
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「何かあるのですか？」[p]
#
――  人通りが多い。[r]
[sp]私は、磯野の言葉を問い返した。[p]
#
「今日は夏祭りの日でございます。[r]
[sp]夕刻をすぎますと、町の中は、大変、混雑してしまいます」[p]
;◎その言葉に主人公は、今日が祭りの日であったことを思い出す。
[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ぁ……」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
#
磯野の言葉にハッとした私はカレンダーを見つめる。[p]
[主人公伏目]
[wait time=10]
#
家に入ってからというものの、ついに忘れてしまったのかと、[r]
時の流れに想いを馳せる。[p]
[主人公目閉じ]
[whosay name="磯野"]
「よろしければ、中庭の縁側にて花火をご覧になられては、[r]
[sp]如何でしょうか？」[p]
[主人公通常]
[wait time=10]
#
どうしてか磯野は、仄かに微笑んだ。[p]
;もちろん？
#
無論。 悪い気は、しなかった為、[r]
私は、裾を直して立ち上がると中庭へと向かうことにした。[p]
;【SE】ヒグラシ（カナカナカナ）
[playse storage=semi_higurasi.ogg loop=false ]
;せっかくなのでセミSEにしてみました。ヒグラシは夏の終わりですが夕方感が出るかと選択。他のセミに変えてくださっても大丈夫です(スクリプト担
;◎縁側でたまたま居合わせた父と花火を見ながら夕涼みする。
[主人公目閉じ]
#
……[p]
;移動中、なくてもいいけど
[主人公退場]
[背景_庭_縁側(夕)]
#
中庭へと向かってみると、既に先客が団扇を仰ぎながら縁側で寛いでいた。 [r]
その相手は[p]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]

[主人公驚]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様！」[p]
[主人公目パチ1回]
[wait time=10]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]。丁度、帰ってきて休んでいたところだ。[r]
[sp]お前も、隣に座って夕涼みをしようじゃないか」[p]
;お前呼びだっけ？ しようではないか？どっちだろう
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そう、
[主人公口ほほえみ]
[wait time=10]
[主人公目通常]
[wait time=10]
ですね」[p]
#
私は、磯野の微笑みが、このことか。と、[r]
合点がつき、微笑って父の隣にすわってみせた。[p]
[主人公ほほえみ]
[wait time=30]
[主人公退場]
;背景 縁側　夕方か夜 時間がたつ。
[背景_庭_縁側(夜)]
;[chara_mod name="bg" storage="bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[image name="hababi" storage="bg/sijyou_engawa2_1.png" layer=1 zindex=2 left=0 time=2000]
#
黄昏に近づいてくる頃、花火が、ひゅるりと舞い上がり、散っていく。[p]
;【SE】花火(打ち上げ：中)
[playse storage=hanabi_utiage_m.ogg loop=false ]
;アニメーション実行
[kanim name="hababi" keyframe="opcy" time="6000" count=infinite]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]

[主人公目パチ1回]
[wait time=10]
;黄昏って夏は19時らしい
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、知ってるか？ 『かぎや』と言うのはだな、[r]
[sp]代表的な花火師の屋号なんだぞ」[p]
[主人公口ほほえみ]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうなのですか？」[p]
;【SE】花火(打ち上げ：小)
[playse storage=hanabi_utiage_s.ogg loop=false ]
[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「たまや も、同じく」[p]
;磯野二人の為に一口に切り分けたスイカと水羊羹を持ってくる。
[whosay name="？？？"]
「旦那様、お嬢様」[p]
[主人公ポーズ通常]
[wait time=10]
[主人公横目]
[wait time=10]
[主人公口開]
[wait time=10]
#
後ろから聞き覚えのある声がして振り向くと、お盆を手にした磯野が佇んでいた。[p]
;【SE】花火(打ち上げ：小)
[playse storage=hanabi_utiage_s.ogg loop=false ]

[主人公口ほほえみ]
[wait time=10]
#
そうして、磯野は、素早くも精査な動きで、膝をつく。[p]
[主人公目パチ1回]
[wait time=10]

すると、小さく切り分けられたスイカと、瑞々しい水羊羹をのせた小皿を[r]私達の傍に置いて後ろへと下がる。[p]
;長いからきってみた

#
磯野の細やかな動きには、いつも目を見張るものがある。[r]
ただ、淑女の躾としては、それを大っぴらに褒めることは許されない。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、磯野」[p]
[主人公ほほえみ]
[wait time=10]
#
私は、出来うる限りの素直さで、いつも感謝を述べるのだ。[p]
;のだ！って使っていいのかな
;◎父、華織と上手くいっているか気になり話かけたが、
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ところで、[名前]よ。[r]
[sp]華織くんとは、上手くいってるのかね？」[p]
;【SE】花火(打ち上げ：小)
[playse storage=hanabi_utiage_s.ogg loop=false ]
[主人公驚]
[wait time=10]
;◎主人公、華織との思い出にひたる。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様、ですか？ 
[主人公ポーズ片手]
[wait time=10]
[sp]えぇ、お手紙も頂いてますし……」[p]
[主人公通常]
[wait time=10]
;アニメーション停止
[kanim keyframe="opcy" name="hababi" cunt=0]
;透明化
[kanim keyframe="not_opcy" name="hababi" time=5000]
#
とは言っても、憧れだった華織お兄様との[r]
特別な意味を含んだ、文通。[r]
幼い頃に無邪気に渡した、お手紙とは事情が異なる。[p]
[iscript]
$('.hababi').remove();
[endscript]
[主人公ふぅ閉]
[wait time=10]
#
;昔の記憶と今の事情について、どう思っていられるのか[r]
だから、はっきりとした自信は、もてない。[p]
[主人公ポーズ通常]
[wait time=10]
[主人公口通常]
[wait time=10]
[主人公眉通常]
[wait time=10]

;夢見がちに目を閉じて回想
#
憧れの人が、今は婚約者候補として、身近にいる……。[p]
;候補？？
#
私は、兄と華織様に挟まれ、縁側で線香花火に興じたことを思い出した。[p]
;【SE】花火(線香花火)
[playse storage=hanabi_senkou.ogg loop=false ]

[テキスト全画面白文字無背景]
;背景 線香花火
[背景_線香花火]
#
;黒い背景に全面文字
#
――闇に落ちいく火華は、松葉のように開き、[r]
[r]
散り際には、彼岸花のように[r]
[r]
[sp]             一気に艶をみせる線香花火。[p]
[r]
華織"お兄様"は、[r]
[r]
[sp]                ――綺麗だね。[r]
[r]
と呟く。[p]
#
[r]
私は、その言葉に目を向けると、[r]
[r]
微かに華織お兄様の横顔を照らして、[r]
;背景 線香花火落ちた ただの暗闇?
[暗転 time=1000]
[r]
玉火は、ポトリと落ちた。[p]
[stopse]
;メッセージ戻る？タイミングは適☆当
#
――今でも覚えています。あの日見た、花火の儚さ。[p]
はじめて間近で見た貴方の横顔は、忘れない。[p]
[四条イベントシーン構築]
[四条ボタン表示]

;【背景】 主人公部屋 夜。もどる
[背景_庭_縁側(夜)]
;[chara_mod name="bg" storage="bg/sijyou_engawa2.jpg" time=1000]
;[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[wait time=10]
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[iscript]
$('.junbi_girl').remove();
[endscript]
[主人公目閉じ]
[wait time=10]
花火のような 貴方は、とても綺麗で[p]
私も、そうなりたいと花火に願った――[p]

;◎主人公の名を呼び、話を切り出す父。
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、」[p]

[主人公驚]
[wait time=10]
;◎主人公は、父の声に我に帰る。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい」[p]
[主人公口ほほえみ]
私は、お父様の声で我に返った。[r]
父は、水羊羹を爪楊枝に刺したまま、真剣な表情をして私を見つめていた。[p]

[主人公憂い]
[wait time=10]
;適当な表情が浮かばない　
;ん？ なんや？といった表情
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうかされましたか？」[p]
#
普段、朗らかなお父様が、[r]
珍しい表情をしていたので私は眉を寄せてしまった。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「しっかりと、華織くんを結納相手として決めたなら、応援するが」[p]

[主人公通常]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？　はい。 ありがとうございます」[p]
[image name="hababi" storage="bg/sijyou_engawa2_1.png" layer=1 zindex=2 left=0 time=2000]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「たまには家には帰ってくるんだぞ」[p]

;主人公 困った笑顔

[主人公照れ]
[wait time=10]
[主人公ポーズ片手]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「それから、もしも何かあったら直ぐに文矢か磯野に相談するんだぞ」[p]
#
そんなことを口早に言って、[r]
お父様は、少しばかり寂しい気な表情を浮かべた。[p]
;【SE】花火(打ち上げ：小)
[playse storage=hanabi_utiage_s.ogg loop=false ]
[kanim name="hababi" keyframe="opcy" time="6000" ]

;◎主人公は大丈夫だからと窘めた。
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様、その様に心配されなくても大丈夫です」[p]
[主人公ポーズ通常]
[wait time=10]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「そ、そうか」[p]
#
お父様は、ようやく手にしていた水羊羹を口に含むと、[r]
慌てたようにお茶を飲み干す。[p]

;ふぅ 嫌ではない溜息？
;[whosay name=&sf.girl_namae color="#cf5a7f"]
;(本格的に決まるのはまだ先だと言うのに)
;このセリフがないと、決まったの？と思うかも？でも、あると繋がりはよくない
[iscript]
$('.hababi').remove();
[endscript]
;ほほえみ
[主人公ほほえみ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お父様は、いつか私が嫁いで[r]
[sp]いなくなってしまうと思われて寂しいのですね）[p]
(大丈夫です。[r]
[sp]いつか、また皆で花火を見ようと思っていますから）[p]
[主人公目伏]
[wait time=10]
[主人公目閉じ]
[wait time=10]
#
私は、身近にある幸せを大切にしようと思う。[p]
;【SE】花火(打ち上げ：大)
[playse storage=hanabi_utiage_big.ogg loop=false ]
;このモノローグはフラグ回収
[主人公目伏柔]
[wait time=10]
;背景花火
[背景_花火2]
;ウェイト入ると止まる他ないのでイメージで重ねる
[image name="hababi_2" storage="bg/sijyou_hanabi2_1.jpg" layer=1 zindex=2 left=0 time=5000]
[eval exp="f.haikei_credit='photo　by　YUKI　http://photo.v-colors.com/329.html'"]
#
花火が華開き、儚く落ちていく。[p]
;今が思い出になっていく時間の儚さ(と華織)
#
後ろに控えていた磯野が、口に手を当てて咳払いをしたが、[r]
本当のところは、微笑んだのではないかと、私はそんな気がしたのだった。[p]
;本当のところは、微笑んだのではないかもしれない。[p]
[主人公目閉じ]
[wait time=10]
燁が夏を織りなす、幸せな思い出。[p]
[iscript]
$('.hababi_2').remove();
[endscript]
[eval exp="sf.event_sijyou_sansaku_6 = 1"]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
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
