;=============================================
;イベント２回目【両家顔合わせ】9月3週、
;=============================================
;【背景】主人公邸_庭
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]


[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
――ついに、顔合せ当日となった。[p]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]

;【立ち絵】主人公：横目頬染め、片手を上げている　
[主人公頬染め]
[wait time=10]
[主人公横目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]

[whosay name="ばあや" color="#916565"]

「そんなに鏡を何度も確かめなくとも[r]
[sp] お嬢様はどこもおかしくありません、[r]
[sp] まるで［淑女称号］のようです」[p]

;【立ち絵】主人公：目閉じ頬染め、両手を頬に
[主人公ポーズ両手]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……まあ！　」[p]
[主人公口通常]
[whosay name="磯野" color="dimgray"]
「お嬢様、ご準備はよろしいですか？」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]や、入って良いかね？」[p]

;【立ち絵】主人公：あせり頬染め
[主人公ポーズ通常]
[wait time=10]
[主人公驚]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あっ、お父様たち……[r]
[sp]いま、参ります」[p]

[stopse]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
;【背景】庭を明るめ加工（ふすまが開いて廊下の光が入る演出的な）
[chara_mod name="bg" storage="bg/room_niwa_akarui.jpg" time=500]
[preload storage="data/fgimage/kuroda/base_haori.png"]
[preload storage="data/fgimage/kuroda/base_haori_hohosome.png"]
[wait time=200]
;【立ち絵】主人公：通常頬染め
[主人公ポーズ通常]
[主人公通常]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほう、[名前]。なかなかの淑女に見えるぞ」[p]

;【立ち絵】主人公：目閉じ頬染め
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お恥ずかしゅうございます」[p]
[主人公目を開く]
[主人公伏目パチ1回]
;[主人公閉目パチ1回]

[whosay name="磯野" color="dimgray"]
「では、参りましょうか」[p]

;【立ち絵】主人公：下がり眉、ほほえみ
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]

;【背景】暗転黒背景、会話ウィンドウは残る
[chara_mod name="bg" storage="toumei.gif" time=500]
;【立ち絵】主人公：下がり眉伏目（不安）
[主人公困り]
（はやる気持ちを抑えて深呼吸する[r]
[sp] いよいよ財前様にお会いするのだわ[r]
[sp] 粗相をしてしまわないかしら……不安だわ）[p]

;【SE】足音3人石畳（フェードインアウト）
[playse storage=asioto_isidatami_3nin.ogg loop=false ]
[テキスト全画面白文字無背景]
[font color=lightcyan size=27]
料亭の門をくぐり、石畳を歩むうちに[r]
一歩一歩、緊張が高まってゆく。[l][r]
[r]
周囲の景色はまるで目に入らない。[r]
私はひたすら父の背中を見つめて、足を進めた。[p]
[autosave]
[p]
[fadeoutse]
;テキスト褪せたベージュ色文字（レトロな暖か味）or 明るめ抹茶色文字（料亭イメージ）
[font color=palegoldenrod size=27]
【料亭の主人】[r]
「――これは[名字]様、いらっしゃいませ。[r]
[sp]財前様はこちらのお座敷で、お待ちでございますよ」[p]

;【SE】足音複数廊下
[playse storage=asioto_rouka_3nin.ogg loop=false ]
;テキスト、褪せた灰青色
[font color=lightcyan size=27]
歩むうちに襖が目に映る。[r]
[r]
（この奥に、財前様がいらっしゃるのね）[p]
[r]
胸がドキドキと高鳴った――[p]


[resetfont]
[fadeoutse]
;メッセージの位置をもどします
[cm]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

[主人公伏目]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
;【背景】料亭風の屋内（昼）
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

;【立ち絵】財前：通常
;[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「……」[p]

;【立ち絵】主人公：伏目
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
襖を開けるとお二方の男性が座っている[r]
一人は財前のお父様でもう一人はお手紙を交わしている財前様だわ[r]
私は恥ずかしさに父の背に隠れながら、チラリと財前様を見た。[p]

;【立ち絵】主人公：通常頬染め
[主人公通常]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（この方が、財前様……）[p]




（彫の深い顔立ちに、なんて綺麗な碧い瞳！　[r]
[sp] お父様からちらりとお母様が独逸の方だと聞いたけれど[r]
[sp] 異国の血が流れているのね）[p]

;[財前目パチ1回]
[whosay name="財前美彬" color="#7a65b2"]
「[名字]様、お久しぶりです[r]
[sp] この度はご息女との縁談の機会を与えて頂き[r]
[sp] 深くお礼を申し上げます」 [p]

#
耳に響く落ち着いた低い声――[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（想像していたよりも、ずっと落ち着いた方なのだわ。[r]
[sp]お姿を見てお声を聞けるだけでも、
[主人公口ほほえみ]
嬉しい……）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「美彬君、それに財前、お久しぶりですなぁ。[r]
[sp]美彬君、祖父君や祖母君もお元気ですかな？」[p]

[主人公口通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「体調を崩す日もありますが元気です[r]
[sp] 祖父、祖母共に[名字]様によろしく、と申しておりました」[p]

#
財前様が頭を下げ、そして私に視線を向ける[r]
ー視線が合った……けれど碧い瞳はどこか醒めていた[p]

;【立ち絵】主人公：下がり眉伏目（不安）
[主人公効果消]
[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（冷たいとまでは感じない、礼儀正しく、[r]
[sp] 真っ直ぐに見えるけれど、[r]
[sp] 値踏みされている気がするわ）[p]


;【立ち絵】財前：通常
「ご息女を紹介頂いてもよろしいでしょうか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、ご挨拶なさい」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[名前]でございます。[r]
（精一杯、礼儀正しく答え、頭を下げる[r]
[主人公憂い]
[sp] 財前様のやや冷ややかな視線で[r]
[sp] 浮かれた気持ちが沈んでいく）[p]


#
料理が運び終わり、[r]
乾杯をしお父様や財前様達の話が弾んでいく[r]
ー私は失礼のないように[r]
相づちを打ち一生懸命にこやかにしていた[p]

[主人公ほほえみ]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「父上、[名字]様 、[名前] さんが[r]
[sp] ついていけないような[r]
[sp] 思い出話までするのは[r]
[sp] [名前] さん に失礼です」[p]

;【立ち絵】主人公：驚き
[主人公驚き]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様は気遣いや礼儀正しさを忘れない人なんだわ）[p]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「財前様、お気遣いをありがとうございます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「すまないな、[r]
[sp] それにしても[名前]を美彬くんに任せたら安心だ 」 [p]

[主人公通常]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"] 
「いえ、[名前]さんが控えめな女性で[r]
[sp] 私は好ましいと思っています[r]
[sp] [名前]さんは将来性のある方だと印象を受けました[r]
[sp] 貴方は私にどういった印象を持たれましたか？」[p]

;【立ち絵】主人公：目伏せ思案
[主人公伏目]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私を試しているのだわ……[r]
[sp] 財前様の冷静な様子からそう伺える[r]
[sp] 初対面同士だから仕方ないのかしら？）[p]

;【立ち絵】主人公：憂い微笑み
[主人公目通常]
[主人公口ほほえみ]
「礼儀正しく真面目で、[r]
[sp] とても冷静な方だと思いました」[p]
[主人公憂い]
;【立ち絵】主人公：目伏せ思案
（今はそれだけだわ……）[p]

#
すると財前様は一応満足したように頷く[p]

;【立ち絵】主人公：目伏せ困り
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（やはり値踏みされている気がしてならないわ）[p]

;【立ち絵】財前：社交的な微笑み
[whosay name="財前美彬" color="#7a65b2"]
「そうでしょうね、[r]
[sp] 私は礼節を守ることを[r]
[sp] いつも心掛けていますから」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「[名字]様 、少し[名前]さんと[r]
[sp] 庭を歩いてもいいでしょうか？」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「まだ明るいし構わない、[r]
[sp] ゆっくりしてくるといいだろう」[p]

#
私は一抹の不安を抱えながら[r]
財前様の後に続いた[r]
こうして並ぶと背の高さの違いに改めて驚く[r]
けれど私に歩幅をあわせてくれている[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（気遣って下さっている）[p]
;【立ち絵】主人公：目伏せ微笑み
[主人公目通常]
[主人公口ほほえみ]
[主人公頬染め]
（やはり悪い方ではないわ）[p]

;【SE】足音複数廊下
;[playse storage=""]
;［背景庭］
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

#
庭に着くとまだ緑の美しい日本庭園が広がり[r]
財前様が自分の隣に招く[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん 、こちらに[r]
[sp] ここの紅葉は美しいのですがまだのようですね」[p]

#
招かれた位置は庭が丁度よく見渡せる位置だった[p]

;【立ち絵】主人公：通常
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私はこの料亭は初めてなので知りませんが、[r]
[sp] 財前様はよくいらっしゃるのですか？」[p]

;【立ち絵】財前：通常
「ええ、銀行のお得意様の商談の時に[r]
[sp] よくこの料亭を利用しますね」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「言っておきたいことがあります[r]
[sp] 私との縁談に恋愛などを期待はしないで頂きたい」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[主人公眉困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（！　）[p]
;【立ち絵】主人公：傷つき
[主人公憂い]
「何故ですか？　[r]
[sp] 私は財前様と縁談を進めるつもりです[r]
[sp] お互いに理解し合い、[r]
[sp] 結婚をしたいと思っています！」[p]

;【立ち絵】財前：眉ひそめ
[whosay name="財前美彬" color="#7a65b2"] 
「貴方はまだ若く恋に夢見る年頃でしょう[r]
[sp] ですが私は妻となる方は華族である地位、[r]
[sp] 器量、貞淑さしか求めてません[r]
[sp] それ以外の好意もわずらわしい」[p]

;【立ち絵】主人公：傷つき
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私の今の気持ちさえ[r]
[sp] わずらわしいとおっしゃるのですか？」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「ええ、申し訳ありませんが[r]
[sp] 最初に話しておくべきと思ったので」[p]

#
冷たい風が吹く、[r]
どこまでも淡々と告げる[r]
財前様の様子に、[r]
取りつく島もなく私は茫然とした[p]

;【立ち絵】財前：目伏せ
[whosay name="財前美彬" color="#7a65b2"]
「傷ついた顔をされて……[r]
[sp] ですが貴方は私が出会った婚約者候補の中でも[r]
[sp] とても理想的な方だとは思っています」[p]

;【立ち絵】主人公：傷つき
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様にもお考えはあるのでしょうけど[r]
[sp] 私はそんなの……）[p]
[主人公目伏]
;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「割り切って結婚した方が[r]
[sp] 恋愛で結婚するより長続きします[r]
[sp] 貴方も大人になられるとよいでしょう」[p]

;【立ち絵】財前：通常
「この話はここまでにします[r]
[sp] いずれ私の言っていることも理解頂きたい、[r]
[sp] そろそろ戻りましょう」[p]

#
私の気持ちも気遣うけれど[r]
あくまで冷静に拒絶する言葉を伝える[r]
財前様に私は悲しみを覚えた[p]

;【背景】料亭風の屋内（昼）
[chara_mod name="bg" storage="bg/bg_ryoutei.jpg" time=1000]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
個室に戻るとお父様と[r]
財前様のお父様との会話は弾んでいるようで[r]
お酒も入り楽しそうだった[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（場を壊してはいけないわ）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「美彬君、[名前]お帰り、[r]
[sp] ん？　[名前]顔色が優れないが、[r]
[sp] 気分でも悪いのか？」[p]

;【立ち絵】主人公：憂い微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「少し慣れない場で疲れただけですわ[r]
[sp] ……お父様そろそろおいとまとしませんか？」[r]
（もうここにいるのは辛い）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「少し早いが[名前]が疲れても無理もない、[r]
[sp] [名前]は料亭も初めてだったな[r]
[sp] 財前には少し失礼だが[r]
[sp] ここでお開きにさせて頂こう」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「だが、美彬君は立場上[r]
[sp] 夜会やパーティに呼ばれることも多い、[r]
[sp] 今から慣れておく方がよかろう、[r]
[sp] 美彬君、[名前]をそういった機会に[r]
[whosay name=&sf.father_name color="DarkSlateBlue"]
なるべく同伴させてくれないかね？」[p]

;【立ち絵】財前：微笑み
[whosay name="財前美彬" color="#7a65b2"]
「ええ、そうします[r]
[sp] お気遣い痛み入ります」[p]

;【立ち絵】主人公：目伏せ憂い
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（憧れていたデエトができるのに[r]
[sp] こんな気持ちになるなんて）[p]

;見合い編終了
;[財前退場]
[wait time=10]





;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_zaizen.ks"
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
