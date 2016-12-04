;=========================================================================
;イベント９回目【花と手紙を渡す】１０月３週、
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_3 storage="hujieda/preload_hujieda.ks]
[call target=*start storage="macro_tati_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】 ミルクホール玄関外
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutest.jpg" time=50]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公照れ目普通]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
私は、お兄様とともに、『ミルクホール 月ノ光』にやってきた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;====================================================================================
;背景: [レトロな喫茶店]
[eval exp="f.haikei_credit=''"]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/miruku_genkan2.jpg" time=1000]
;===============================================================
[whosay name="文矢" color="#538a8a"] 
「まだ早かったようだね」[p]
#
ふとお兄様の声に待合室の時計を見ると、[r]
予約した時間より、五分ほど早く着いてしまったようだ。[p]

[主人公目閉]
待合室には、客席からのピアノの音が聞こえ、[r]
私はドキドキしながら、長い五分間を待った……。[p]

;背景がないで暗転だ
[暗転]

[主人公照れ目普通]
[whosay name="店員"]
「予約の[名字]様ですね。お席に案内します」[p]

#
歩きながらお兄様は私に尋ねる。[p]

[whosay name="文矢" color="#538a8a"] 
「普段わがままを言わない[名前]の頼みなら仕方ないと思ったけど[r]
[sp][名前]には、まだミルクホールは早くないかい？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：通常
[主人公憂い]
[主人公口ムッ]
「お兄様、私だってもう[ruby text=じゅう]十[ruby text=ろく]六です。[r]
[sp]もう結婚もできます」[p]

[whosay name="文矢" color="#538a8a"] 
「それにしてもわざわざ花まで用意して[r]
[sp]ここに来るの初めてなのにどうして？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌てる
 [主人公目大]
 [主人公汗]
 [主人公口開]
「それは……その評判のピアニストに[r]
[sp]手紙とお花を渡したいと思ったのです」[p]
[主人公効果消]
[主人公口通常]
[主人公通常]
[whosay name="文矢" color="#538a8a"] 
「まあ確かに素晴らしい旋律を奏でているね」[p]

[whosay name="店員"]
「こちらのお席になります」[p]
#
;==============================================================================
;[eval exp="f.haikei_credit='クレジット'"]
[layopt layer=fix visible=false]
[表示準備 storage="bg/I9IhvvVdPo/mirukutennai.jpg" layer=29 time=1300]
;クレジット[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutennai.jpg" time=50]
[主人公通常]
[freeimage layer=29 time=400]
[layopt layer=fix visible=true]
;ふわっと表示依頼
;==============================================================================
#
広い店内の奥にはピアノが置かれおり、[r]
私は椅子に座ると、ピアノを奏でている方の横顔を見つめた。[p]
;=============================ピアノを弾くシーン　１シーンのみ スチルだね==========================================
[主人公退場]
[layopt layer=fix visible=false]
;会話ウィンドウ消去 メッセージあると何の画像かわからない　できれば合体画像があればいいです。わがままです。
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
;==========================
;ピアノ表示する_タイムは調整中
;準備中の上にのせて
[表示準備 storage="bg/I9IhvvVdPo/bg_fujieda_piano_1.jpg" layer=29 time=1300]
;【背景】ミルクホール店内ピアノ
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_fujieda_piano_1.jpg" time=100]
;ピアノベース藤枝(目なし)レイヤー１
[image name=piano_base storage="bg/B4nFWraU42/hujieda_piano_base.png" layer=1 time=50 visible=true zindex=1]
;ピアノベース藤枝(目のみ通常１)レイヤー１ new
[chara_new name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_futuu.png" layer=2 top=1 left=1]
;ピアノベース藤枝(目のみ通常１)レイヤー１ show
[chara_show name="piano_base_me" layer=2]
[freeimage layer=29 time=600]
;表情切り替え
;ピアノベース藤枝(目のみ閉じ1)合体表示 レイヤー１
[chara_mod name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_fusi1.png" time=10]
;ピアノベース藤枝(目のみ閉じ2)合体表示 レイヤー１
[chara_mod name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_fusi2.png" time=10]
;ピアノベース藤枝(目のみ閉じ2)合体表示 レイヤー１
[chara_mod name="piano_base_me" storage="bg/B4nFWraU42/hujieda_piano_me_toji.png" time=10]

;ピアノ消去する_タイムは調整中
[表示準備 storage="bg/I9IhvvVdPo/bg_fujieda_piano_1.jpg" layer=29 time=2000]
;SE拍手長め
;ピアノ画像消去１
[freeimage layer=1 time=50]
;藤枝目退場
[chara_hide name="piano_base_me"]
[freeimage layer=29 time=50]
;=============================ピアノを弾くシーンおわり=================================================

;=======================;会話ウィンドウ表示============================================================
[chara_mod name="message_bg" storage=&f.message_storage time=300]
;主人公復帰表情目閉じ　ポーズ通常
[image name="junbi_girl" layer=29 storage="girl/S/girl_all_me_toji_mayu_futuu.png" left=1 top=381 time=300 visible=true]
[wait time=10]
[主人公ポーズ通常]
[主人公柔和ほほえみ１]
[iscript]
$('.junbi_girl').remove();
[endscript]
[layopt layer=fix visible=true]
@layopt layer=message0 page=fore visible=true
;==============================================================================
#
その横顔は、以前、郵便が来る時間にこっそりと拝見した横顔と重なった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：目閉じ
[主人公眉通常]
[主人公目閉]
（藤枝様……なのだわ）
[p]
#
注文を終え、待っている間、お兄様と私はピアノを聴き、[r]
周囲のお客様の方々も静かに曲を聴いている。[p]
;==============================================================================
;【イメージ】キラキラ透過素材 layer=1
[image name="oto" storage="bg/B4nFWraU42/bg_hujieda_kirakira.png" layer=1 time=2000 left=1 visible=true]
;==============================================================================
ピアノの響きが静謐な雰囲気を醸し出していた。[p]
;==============================================================================
[iscript]
$('.oto').remove();
[endscript]
;【背景】暗転　想像の中、多くのスタンディングオベーション的なもの
[chara_mod name="bg" storage="toumei.gif" time=1300]
;==============================================================================
;[SE拍手]長めがいいかもしれない
[playse storage=hakushu.ogg loop=false ]
#
曲が終わると拍手が沸き上がる。[p]

;==============================================================================
[fadeoutse time=1000]
#
私は立ち上がり、笑顔で礼をすると[r]
藤枝様に花屋で買ったコリウスと手紙をそっと差し出した。[p]
;==============================================================================
;【背景】ミルクホール店内ピアノ
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_fujieda_piano_1.jpg" time=100]
[表示準備 storage="bg/I9IhvvVdPo/bg_fujieda_piano_1.jpg"]
;==============================================================================

;======ふわっと==========
;【立ち絵】藤枝：微笑み
[藤枝ベース私服]
[藤枝微笑み]
[freeimage layer=13 time=400]
;===========================
;【立ち絵】主人公：微笑み頬染
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「素敵な演奏でしたわ」[p]

（すごく胸が高鳴っているわ）[p]
#
藤枝様はコリウスと手紙を受け取って言った。[p]
[fadeoutbgm time=3000]
[藤枝笑顔大]
[whosay name="藤枝 肇" color=%mp.color] 
「ありがとうございます。[r]
[sp]手紙まで頂けるなんて……光栄です。[r]
[sp]常連の方ではないようですが、どこかでお会いしましたか？」[p]
#
;【立ち絵】主人公：目伏せ頬染
[主人公伏目]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、あの私は[名字][名前]です。[r]
[sp]貴方のピアノが聴きたくて、お兄様に連れてきていただいたのです」[p]

（藤枝様はどう思われるのかしら）[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
;【立ち絵】藤枝：驚き
[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color] 
「ああ貴方が！　……っと」[p]

#
藤枝様はコリウスを落としそうになった。[r]
なんとか寸前で落とさずにすんだけれど。[p]

;【立ち絵】藤枝：驚き瞬き１回
[藤枝伏目パチ1回]


#
[藤枝口通常]
３秒ぐらいの間だったかもしれないけれど[r]
大きく目を開けて藤枝様は私を見つめた後、穏やかだけれど[r]
切なげに目を細めた。[p]

;【立ち絵】藤枝：憂いを含んだ微笑み
[藤枝憂い]
[藤枝口微笑み]
[藤枝頬染め]
[whosay name="藤枝 肇" color=%mp.color] 
「貴方が聴きにいらして下さって僕は心から嬉しく思います[r]
[sp]何か曲のリクエストはありますか？」[p]

;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「リクエスト！」[p]
;【立ち絵】主人公：微笑み
[主人公照れ目普通]
[主人公口開]
「では、"エリーゼのために"を……[r]
[sp]お恥ずかしながら、ピアノの曲はそんなに詳しくないのです[r]
[sp]あ、もしかて貴方には簡単すぎる曲ですか？」[p]
[主人公口ほほえみ]

;【立ち絵】藤枝：微笑み
[藤枝目伏]
[藤枝口笑顔]
[whosay name="藤枝 肇" color=%mp.color] 
「いいえ、そんなことは一生懸命弾きます」[p]

[whosay name="客"]
「早く次の曲を聴かせてくれないか？[r]
[sp]この店の日曜日は、時間制だからゆっくり聞けないんだ」[p]

;【立ち絵】藤枝：微笑み
[藤枝横目]
[whosay name="藤枝 肇" color=%mp.color] 
「お待たせしましてすいません」[p]
;【立ち絵】藤枝：憂いを含んだ微笑み
[藤枝憂い]
[藤枝口笑顔]
「貴方も席へどうぞ」[p]
#
[藤枝効果消]
[藤枝通常]
[藤枝目閉じ]

;【立ち絵】主人公：目伏せ微笑み
[主人公伏目]
[主人公頬染め]
[主人公眉下げ下]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
#
;==============================================================================
;ボタン非表示
[layopt layer=fix visible=false]
;ずっと立っている状態になってしまいますので退場します 裏で退場＿大
[表示準備 storage="bg/I9IhvvVdPo/mirukutennai.jpg" layer=29 time=1300]
[藤枝退場]
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutennai.jpg" time=50]
[freeimage layer=29 time=500]
;ボタン表示
[layopt layer=fix visible=true]
;==============================================================================
[whosay name="文矢" color="#538a8a"]
「……なんだか親しそうだったけど[r]
[sp]本当は、知り合いなんじゃないのかい？」[p]

;【立ち絵】主人公：慌て
[主人公効果消]
[主人公目伏]
[主人公汗]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そんな事より曲を聴きましょう」[p]
[主人公頬染め]

;===============================ピアノを弾くシーン２===============================================
;【背景】ミルクホール店内ピアノ
[chara_mod name="bg" storage="bg/I9IhvvVdPo/bg_fujieda_piano_1.jpg" time=1300]
[image name="oto" storage="bg/B4nFWraU42/bg_hujieda_kirakira.png" layer=1 time=2000 left=1 visible=true]
;==============================================================================
#
藤枝様の弾くエリーゼのためには、今まで聴いたことがある[r]
どのピアノの音色よりも、ずっと柔らかく滑らかで[r]
美しく切ない響きだった。[p]
;==============================================================================
[iscript]
$('.oto').remove();
[endscript]
;ボタン非表示
[layopt layer=fix visible=false]
[表示準備 storage="bg/anten.jpg" layer=29 time=1300]
;【背景】客席
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukutennai.jpg" time=50]
[freeimage layer=29 time=500]
;セーブボタン解除
[layopt layer=fix visible=true]
;==============================================================================
[whosay name="店員"]
「もうお飲み物は、のまれましたね。[r]
[sp]そろそろお時間ですので」[p]

[whosay name="文矢" color="#538a8a"]
「[名前]、行こう」[p]
#
;【立ち絵】主人公：目伏せ
[主人公目閉じ]
[主人公眉下げ下]
[主人公頬染め]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……ええ」[p]
（もっと聴いていたかったわ）[p]
[主人公退場]
#
;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】黒茶・和紙風背景に白文字  [テキスト全画面白文字暗]裏で画面構成bg_prologue_dark.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=1 y=1 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;【背景】背景:レトロな喫茶店（玄関）
[chara_mod name="bg" storage="bg/I9IhvvVdPo/mirukugenkan.jpg" time=50]
[eval exp="f.haikei_credit='まだないです'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
;【テキスト全画面】[テキスト全画面白文字]

閉店後[p]

;==========================スクリプト・全画面表示からの復帰準備========================================
[resetfont]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[call target=*start storage="macro_tati_hujieda.ks"]
[藤枝ベース私服]
[藤枝通常]
[イベントシーン構築ボタン無し版枠茶色]
[freeimage layer = 29 time=1000]
;機能ボタン表示
[layopt layer=fix visible=true]
[layopt layer=message0 visible=true]
[eval exp="sf.FButton='ON'"]
[メッセージウィンドウ上ボタン表示]
;==========================スクリプト・全画面表示からの復帰準備完了========================================
[whosay name="店長"]
「今日もお疲れ様だな。[r]
[sp] お前さんのおかげで日曜日は大繁盛だ。[r]
[sp] 音楽学校から紹介してもらって正解だったな」[p]

[whosay name="店長"]
「先生が終わるころに店に寄るといっていたので待ってろ」[p]

;【立ち絵】藤枝：通常

[藤枝目パチ1回]
[whosay name="藤枝 肇" color=%mp.color] 
「はい。少し待たせて頂きます」[p]


;【立ち絵】藤枝：微笑み
[藤枝微笑み]
（そうだ、待っている間手紙を読もう）[p]
;【SE】紙の音（カサッ）

[手紙主人公]
藤枝 肇 様へ[l][r]
[r]
[sp]拝啓　木々の梢も色づいて藤枝様にはお変わりありませんか？[r]
[r]
[sp]先日、貴方の勤めているお店の外から[r]
ピアノを聴いてとても感動しました、[r]
なんて綺麗な音を出されるのだと。[r]
[r]
[sp]私は今日貴方の勤めているミルクホールへ行きます。[r]
お手紙にも知らせず申し訳ありません、[r]
貴方は知らせたら遠慮すると思ったので内緒にしました。[p]
[sp] 藤枝様がこの手紙を読んでいる頃は、[r]
私たちは出会った後になるのですね[r]
私は初めて藤枝様にお会いできる事が楽しみで仕方ありません。[r]
[r]
[sp]いつも藤枝様のお手紙で私は、[r]
お[ruby text=こと]箏のお稽古を励まされてきました、[r]
いつか私も藤枝様に何かを返せるといいのにと思ってます。[r]
[r]
[sp] 藤枝様は私にどんな印象を持たれたのでしょうか？[r]
[r]
[sp]藤枝様からのお返事をお待ちしています。[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　　敬具[r] 
[sp]　　　　　　　　　　　　　　　　　　　　　　[名字]　[名前] [p]
[fadeoutbgm time=3000]
[手紙読了]
[resetfont]
;【SE】紙に触れる（パラリ）

[whosay name="音楽学校教授"]
「ファンレターかい？」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【立ち絵】藤枝：驚き
[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color] 
「先生！」[p]

[whosay name="音楽学校教授"]
「お坊ちゃま育ちなのに休日なしで働いているから[r]
[sp]心配していたが元気そうで安心したよ」[p]

;【立ち絵】藤枝：通常
[藤枝困り微笑み]
[whosay name="藤枝 肇" color=%mp.color] 
「お坊ちゃまといっても楽器を弾くには、体力が必要ですので[r]
[sp]体力づくりはしていましたから」[p]

[whosay name="音楽学校教授"]
「君は努力家だな。　この店での評判もよい。[r]
[sp]プロのコンサート並みのピアノが聴けると噂だ」[p]

;【立ち絵】藤枝：通常
[藤枝微笑み]
[whosay name="藤枝 肇" color=%mp.color] 
「先生、ありがとうございます。[r]
[sp]僕の様子を見に立ち寄ってくださったのですか？」[p]

[whosay name="音楽学校教授"]
「いや、君を国費での[ruby text="ド"]独[ruby text="イツ"]逸への音楽留学を推薦したのでその報告に」[p]

;【立ち絵】藤枝：驚き
[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color] 
「え！」[p]

[whosay name="音楽学校教授"]
「もちろんまだ推薦しただけだ。[r]
[sp]国費での留学の候補は、君以外にもいるので決定したわけでは[r]
[sp]ないが」[p]

;【立ち絵】藤枝：通常
[藤枝憂い]
[whosay name="藤枝 肇" color=%mp.color] 
「そうでしょうね、推薦してくださっただけでも感謝しています」[p]

[whosay name="音楽学校教授"]
「諦めているのか？わが校に最年少で入学し、[r]
[sp]学内で一番の成績とピアノの腕を持っていた」[p]

[whosay name="音楽学校教授"]
「それに君も、図書館で独逸語の勉強をしていたのでは[r]
[sp]ないのかね？」[p]

;【立ち絵】藤枝：通常
[藤枝目閉じ]
[whosay name="藤枝 肇" color=%mp.color] 
「まだ家の借金を返せてませんし。[sp]家族の事があります」[p]

（それに彼女の事がある。[sp]叶わない淡い恋なのかもしれないけれど）[p]

[whosay name="音楽学校教授"]
「借金は戻ってから返せばいい。[sp]私からも援助しよう。[r]
[sp]私は君を買っているのだよ」[p]

;【立ち絵】藤枝：驚き
[藤枝驚き]
[whosay name="藤枝 肇" color=%mp.color] 
「！」[p]
;【立ち絵】藤枝：微笑み
[藤枝微笑み]
「ありがとうございます」[p]
;【立ち絵】藤枝：思案
[藤枝困り]
「でも少し考えさせてください」[p]

[whosay name="音楽学校教授"]
「君にも都合はある。[r]
[sp]だが君の才能を埋もれさせるのは、惜しいと私は思っている。[r]
[sp]それでは藤枝君、失礼するよ」[p]

;【立ち絵】藤枝：目閉じ
[藤枝眉下げ]
[藤枝目閉じ]
[藤枝口笑顔]

[whosay name="藤枝 肇" color=%mp.color] 
「はい、先生ありがとうございました」[p]
[fadeoutbgm time=3000]
[藤枝退場準備 storage="bg/I9IhvvVdPo/mirukugenkan.jpg"]
#
;次のイベントにでてしまう名前残りを消去
[イベントシーン終了]
@jump storage="test_hujieda.ks"
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

