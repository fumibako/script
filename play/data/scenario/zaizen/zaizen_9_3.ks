;==================================================================================
;イベント２回目【両家顔合わせ】9月3週、
*replay_zaizenzaizen_9_3
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*9_3 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 庭の見える部屋：昼
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo by ゆうあかり http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

――ついに、顔合せ当日となった。
[autosave]
[wait time=10]
[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【立ち絵】主人公：横目頬染め、片手を上げている　
[主人公頬染め]
[wait time=10]
[主人公横目パチ1回]
[wait time=10]
[主人公ポーズ指]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……）[p]

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

[whosay name="ばあや" color="#916565"]
「そんなに鏡を何度も確かめなくとも、[r]
[sp]お嬢様は、どこもおかしくありません、
[if exp="f.para_shujinkou_shukujodo > 30"]
[r][sp]まるで[淑女称号表示]のようです」[p]
;初期値を設定してないと英字がでますがテスト中は、スルーしてください
[else]
[r][sp]まるで野に咲く花のようです」[p]
[endif]

#
;【立ち絵】主人公：目閉じ頬染め、両手を頬に
[主人公ポーズ両手]
[wait time=10]
[主人公目大]
[wait time=10]
[主人公口開]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……まあ！」[p]
[主人公口通常]
[主人公照れ目普通]
[whosay name="磯野" color="dimgray"]
「お嬢様、ご準備はよろしいですか？」
[autosave]
[wait time=10]
[p]
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
「あっ、お父様……いま、参ります」[p]
[主人公口通常]
[stopse]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
;=================================================================================================
;【背景】庭を明るめ加工（ふすまが開いて廊下の光が入る演出的な）
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa_akarui.jpg" time=500]

;=================================================================================================

;【立ち絵】主人公：通常頬染め
[主人公通常]
[wait time=200]
[wait time=10]
[主人公頬染め]
[wait time=10]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「ほう、[名前]。 なかなかの淑女に見えるぞ」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目閉じ頬染め
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お恥ずかしゅうございます」[p]
[主人公目を開く]
[主人公眉下げ下]
[主人公伏目パチ1回]
;[主人公閉目パチ1回]

[whosay name="磯野" color="dimgray"]
「では、参りましょうか」[p]

;【立ち絵】主人公：下がり眉、ほほえみ
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……はい」[p]
[主人公目閉]
;=================================================================================================
;【背景】暗転黒背景、会話ウィンドウは残る
[bg wait=true storage="toumei.gif" time=500]
;=================================================================================================
[主人公口通常]
[主人公目伏]
#
はやる気持ちを抑えて深呼吸する。[p]
;【立ち絵】主人公：下がり眉伏目（不安）
[主人公困り]
（いよいよ財前様にお会いするのだわ。
[r]
[sp]粗相をしてしまわないかしら……不安だわ）
[autosave]
[wait time=10]
[p]

;【SE】足音3人石畳（フェードインアウト）
[playse storage=asioto_isidatami_3nin.ogg loop=false ]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】;[テキスト全画面白文字無背景] 裏で画面構成 
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[暗転２ storage="bg/bg_prologue_dark.jpg"]
;【背景】料亭風の屋内（昼）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_ryoutei.jpg" time=500]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【立ち絵】の設定
[主人公眉下げ下]
[主人公伏目]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
[font color=lightcyan size=27]
料亭の門をくぐり、石畳を歩むうちに[r]
一歩一歩、緊張が高まってゆく。[l][r]
[r]
周囲の景色はまるで目に入らない。[r]
私はひたすら父の背中を見つめて、足を進めた。
[autosave]
[wait time=10]
[p]

[fadeoutse]
;テキスト褪せたベージュ色文字（レトロな暖か味）or 明るめ抹茶色文字（料亭イメージ）
[font color=palegoldenrod size=27]
【料亭の主人】[r]
「――これは[名字]様、いらっしゃいませ。[r]
[sp]財前様はこちらのお座敷で、お待ちでございますよ」
[p]

;【SE】足音複数廊下
[playse storage=asioto_rouka_3nin.ogg loop=false ]
;テキスト、褪せた灰青色
[font color=lightcyan size=27]
歩むうちに襖が目に映る。[r]
[r]
（この奥に、財前様がいらっしゃるのね）[p]
[r]
胸がドキドキと高鳴った――。


[fadeoutse]

;==========================スクリプト・全画面表示からの復帰準備========================================
[cm]
;メッセージをもどします
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【立ち絵】財前：通常
;[財前サイズ通常]
[財前ベーススーツ]
[財前通常]
[er]
[p]
;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]
[暗転２終了]

;==========================スクリプト・全画面表示からの復帰準備========================================
[whosay name="財前美彬" color="#7a65b2"]
「……」[p]

;【立ち絵】主人公：伏目
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
襖を開けるとお二方の男性が座っていた。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様とそのお父様だわ）
[autosave]
[wait time=10]
[p]


#
お二方の視線が私の方へ向き、思わず俯く。[p]
;私はなくても
#
[主人公頬染め]
恥ずかしさのあまり、父の背に隠れながら、チラリと財前様を見た。[p]
;恥ずかしさのあまり、
;元の◆jsYiJcqRkkさんのシナリオは修正済

;【立ち絵】主人公：通常頬染め
[主人公眉下げ下]
[主人公目伏]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（この方が、財前様……）
[autosave]
[wait time=10]
[p]

（彫の深い顔立ちに、なんて綺麗な碧い瞳！[r]
[sp]ちらりとお母様が[ruby text="ド"]独[ruby text="イツ"]逸の方だと聞いたけれど、異国の血が流れているのね）[p]

[財前目パチ1回]
[財前口笑み]
[whosay name="財前美彬" color="#7a65b2"]
「[名字]様、お久しぶりです。[r]
[sp]この度はご息女との縁談の機会を与えて頂き、深くお礼を申し上げます」
[autosave]
[wait time=10]
[p]

[財前口通常]
[主人公目閉じ]
#
耳に響く落ち着いた低い声――[p]

[主人公目パチ1回]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
（想像していたよりも、ずっと落ち着いた方なのだわ。[r]
[sp]お姿を見てお声を聞けるだけでも、
[主人公口ほほえみ]
嬉しい……）
[autosave]
[wait time=10]
[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「美彬君、それに財前、お久しぶりですなぁ」[p]
#
お父様は懐かしそうな様子で微笑む。[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「美彬君、祖父君や祖母君もお元気ですかな？」[p]

[主人公口通常]

;【立ち絵】財前：通常
[財前目閉じ]
[whosay name="財前美彬" color="#7a65b2"]
「体調を崩す日もありますが元気です。[r]
[sp]祖父、祖母共に[名字]様によろしく、と申しておりました」[p]

#
財前様が頭を下げ、そして私に目を向けた。[r]――視線が合う……けれど碧い瞳はどこか醒めていた。
[autosave]
[wait time=10]
[p]


[財前横目]
[主人公効果消]
[主人公困り]
#
財前様の冷ややかな視線に、浮かれた気持ちが沈んでいく。[p]

私を見て期待してた程でもないけれど、想定以下でもないと……そんな様子だ。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：下がり眉伏目（不安）
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私に向けられている視線は、淡々としていて、まるで値踏みするかのようだわ）[p]

;【立ち絵】財前：通常
[財前通常]
「ご息女を紹介頂いてもよろしいでしょうか？」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、ご挨拶なさい」[p]

;【立ち絵】主人公：真剣
[主人公通常]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[名前]でございます」
[autosave]
[wait time=10]
[p]
#
私は、精一杯、礼儀正しく答え、頭を下げた。[p]


[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様とお見合いすると決めたのだから、少しでも親しくなれるように[r]
[sp]努力しましょう）
[autosave]
[wait time=10]
[p]

[主人公ほほえみ]
#
料理が運び終わり、乾杯し、お父様や財前様達の話が弾んでいく。[p]
――私は失礼のないように相づちを打ち、一生懸命、にこやかにしていた。[p]


;【立ち絵】財前：通常
[財前ため息]
[whosay name="財前美彬" color="#7a65b2"]
「父上、[名字]様 、[名前]さんがついていけないような[r]
[sp]思い出話までするのは、[名前]さんに失礼です」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様は、気遣いや礼儀正しさを忘れない人なんだわ）
[autosave]
[wait time=10]
[p]
;【立ち絵】主人公：微笑み
[主人公ほほえみ]
「財前様、お気遣いをありがとうございます」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「すまないな、[r]
[sp]それにしても[名前]を美彬くんに任せたら安心だ 」 [p]

[主人公通常]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"] 
「いえ、[r]
[sp][名前]さんが控えめな女性で、私は好ましいと思っています」
[autosave]
[wait time=10]
[p]
[財前目パチ1回]
「それに[名前]さんは将来性のある方だと印象を受けました。[r]
[sp]貴方は私にどういった印象を持たれましたか？」[p]

;【立ち絵】主人公：目伏せ思案
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私を試しているのだわ……）[p]
#
財前様の冷静な様子からそう伺える。
[autosave]
[wait time=10]
[p]
[主人公伏目パチ1回]
（初対面同士だから仕方ないのかしら？）[p]

;【立ち絵】主人公：憂い微笑み
[主人公目通常]
[主人公口開]
「礼儀正しく真面目で、とても冷静な方だと思いました」
[autosave]
[wait time=10]
[p]
[主人公口通常]
[主人公憂い]
;【立ち絵】主人公：目伏せ思案
（今はそれだけだわ……）[p]
[財前目閉じ]
[財前口微笑み]
#
すると財前様は一応満足したように頷く。
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：目伏せ困り
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……値踏みされている気がしてならないわ）[p]

;【立ち絵】財前：社交的な微笑み
[財前冷ややかな微笑み]
[whosay name="財前美彬" color="#7a65b2"]
「そうでしょうね、[r]
[sp]私は礼節を守ることを いつも心掛けていますから」[p]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「[名字]様、[r]
[sp]少し[名前]さんと、庭を歩いてもいいでしょうか？」
[autosave]
[wait time=10]
[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「まだ明るいし構わない。[r]
[sp]ゆっくりしてくるといいだろう」[p]


;=================================================================================================
[暗転２]
;【背景】料亭廊下だと思います
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_katuraginomiya_sinrin_kouen.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　＠名無しさん１'"]
[暗転２終了]
;=================================================================================================
#
私は一抹の不安を抱えながら、財前様の後に続いた。
[p]
[主人公驚]
こうして並ぶと背の高さの違いに改めて驚く。[p]

[主人公口通常]
私は財前様が歩調を合わせてくれている事に気づいた。
[autosave]
[wait time=10]
[p]
;【立ち絵】主人公：驚き

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目伏せ微笑み
[主人公口ほほえみ]
[主人公目伏]
[主人公眉下げ下]
[主人公頬染め]
（気遣って下さっているのね、やはり悪い方ではないわ）[p]
#
;=================================================================================================
[暗転２]
;［背景庭］
;【背景】庭園　料亭の庭だと思いますので変更
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_teien_ishidatami.jpg" time=500]
[eval exp="f.haikei_credit=''"]
[暗転２終了]
;=================================================================================================
#
庭に着くとまだ緑の美しい日本庭園が広がり[r]
財前様が自分の隣に招く。[p]

;【立ち絵】財前：通常

[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん 、こちらに。[r]
[sp]ここの紅葉は美しいのですが、まだのようですね」[p]

#
招かれた位置は庭が丁度よく見渡せる位置だった。
[autosave]
[wait time=10]
[p]
#
私はその景色と財前様の気遣いに心が弾んだ。[p]
;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「私は、この料亭は初めてなので知りませんが、[r]
[sp]財前様は、よくいらっしゃるのですか？」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
[財前目伏]
「ええ、[r]
[sp]銀行のお得意様の商談の時に、よくこの料亭を利用しますね」[p]

;主人公相槌　期待
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「まあ。[sp]よくご存じの場所でしたのね！」[p]


;【立ち絵】財前：通常
[財前冷ややか]
[whosay name="財前美彬" color="#7a65b2"]
「……言っておきたいことがあります。[r]
[sp]私との縁談に恋愛などを期待はしないで頂きたい」
[autosave]
[wait time=10]
[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公：驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公効果消]
[主人公目大]
[主人公眉困り]
[主人公口開]
「！？」[p]
;【立ち絵】主人公：傷つき
[主人公憂い]
[主人公口開]
「何故ですか？　[r]
[sp]私は財前様と縁談を進めるつもりです。[r]
[sp]お互いに理解し合い、結婚をしたいと思っています！」
[autosave]
[wait time=10]
[p]

[主人公口通常]
;【立ち絵】財前：眉ひそめ
[財前眉ひそめ]
[whosay name="財前美彬" color="#7a65b2"] 
「貴方は、まだ若く恋に夢見る年頃でしょう」[p]
[財前目伏]
「ですが私は、妻となる方には華族である地位、[r]
[sp]器量、貞淑さしか求めてません。[r]
[sp]それ以外の好意もわずらわしい」
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]


[主人公目大]
;【立ち絵】主人公：傷つき
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私の今の気持ちさえ、[ruby text=わずら]煩わしいと[ruby text=おっしゃ]仰るのですか？」[p]

;【立ち絵】財前：通常
[財前通常]
[whosay name="財前美彬" color="#7a65b2"]
「ええ、申し訳ありませんが、最初に話しておくべきと思ったので」
[autosave]
[wait time=10]
[p]
[主人公目伏]
#
冷たい風が吹く。[p]
どこまでも淡々と告げる財前様の様子に、取りつく島もなく[r]
私は茫然とした。[p]

;【立ち絵】財前：目伏せ
[財前困り]
[whosay name="財前美彬" color="#7a65b2"]
「傷ついた顔をされて……。[r]
[sp]ですが、貴方は私が出会った婚約者候補の中でも[r]
[sp]とても理想的な方だとは思っています」
[autosave]
[wait time=10]
[p]

;【立ち絵】主人公：傷つき
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様にもお考えはあるのでしょうけど[r]
[sp]私はそんなの……）[p]
[主人公目伏]
;【立ち絵】財前：通常
[財前目閉じ]
[whosay name="財前美彬" color="#7a65b2"]
「割り切って結婚した方が、恋愛で結婚するより長続きします。[r]
[sp]貴方も大人になられるとよいでしょう」
[autosave]
[wait time=10]
[p]

;【立ち絵】財前：通常
[財前通常]
「この話はここまでにします。[r]
[sp]いずれ私の言っていることも理解頂きたい。[r]
[sp]そろそろ戻りましょう」[p]

[主人公目閉]
#
私の気持ちも気遣うけれど、[r]
あくまで、冷静に拒絶する言葉を伝える財前様に[r]
私は悲しみを覚えた。
[autosave]
[wait time=10]
[p]

;=================================================================================================
;背景変更:暗転
[暗転２]
[主人公憂い]
;【背景】料亭風の屋内（昼）
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_ryoutei.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　usagi_s　フリー素材屋Hoshino　http://www.s-hoshino.com/'"]
[暗転２終了]
;=================================================================================================
#
個室に戻るとお父様と[r]
財前様のお父様との会話は弾んでいるようで[r]
お酒も入り楽しそうな様子だった。[p]

;【立ち絵】主人公：目伏せ
[whosay name=&sf.girl_namae color="#cf5a7f"]
（場を壊してはいけないわ）[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「美彬君、[名前]お帰り、[r]
[sp]ん？　[名前]、顔色が優れないが気分でも悪いのか？」[p]

;【立ち絵】主人公：憂い微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「少し慣れない場で疲れただけですわ[r]
[sp]……お父様。そろそろ、お[ruby text=いとま]暇しませんか？」
[autosave]
[wait time=10]
[p]
[主人公目閉]
（もうここにいるのは辛い）[p]
[主人公目伏]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「少し早いが[名前]が疲れても無理もない、[r]
[sp][名前]は料亭も初めてだったな」[p]
「美彬君には少し失礼だが、ここでお開きにさせて頂こう」[p]

[whosay name=&sf.father_name color="DarkSlateBlue"]
「とはいえ[名前]、美彬君は立場上、夜会やパーティに呼ばれることも多い、[r]
[sp]今から慣れておく方がよかろう」
[autosave]
[wait time=10]
[p]

「美彬君、[r]
[sp][名前]をそういった機会になるべく同伴させてくれないかね？」[p]

;【立ち絵】財前：微笑み
[財前口笑み]
[whosay name="財前美彬" color="#7a65b2"]
「ええ、そうします。[r]
[sp]お気遣い痛み入ります」[p]

;【立ち絵】主人公：目伏せ憂い
[主人公目閉じ]
[主人公口通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（憧れていたデエトができるのに、こんな気持ちになるなんて）[p]
#
;見合い編終了
;=================================================================================================
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image layer=29 x=0 y=0 storage="bg/anten.jpg" time=1300 visible=true]
[wait time=10]
[財前退場]
[主人公退場]
[wait time=10]
[暗転１]
[freeimage layer = 29 time=1000]
*seen_end1
[eval exp="sf.event_zaizen_9_3 = 1"]
[イベントシーン終了]
;=================================================================================================
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
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
