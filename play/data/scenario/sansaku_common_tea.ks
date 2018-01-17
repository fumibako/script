;=============================================
;【散策】共通イベント
;=============================================
;読込不良対策：選択肢jump先ラベルを切り出しました→sansaku_common_tea2.ks
;=============================================
;◆町_共通イベント02新茶
;イベント発生条件：4月3週～5月2週、期間中に町へ行くと1度だけ発生
*sansaku_machi_common_02
;↓冒頭の[p]が読み込まれない現象を複数回確認しましたので、既読スキップ処理をコメントアウトします。◆jsYiJcqRkk
;◆既読スキップ開始
;[if exp="sf.KSKIP=='ON' && this.kag.stat.is_skip==false"]
;	[skipstart]
;[endif]

;[if exp="sf.KSKIP=='ON' && sf.trail_sansaku_machi_common_02==undefined"]
;	[skipstop]
;[endif]
*machi_common_02
[stopbgm]
;------------------------------------------------プリロード画面-----------------------------------------------
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=1 y=1 storage="bg/bg_kinari_sakura.jpg" time=500]
[wait time=10]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
;------------------------------------------------プリロード画面-----------------------------------------------
[freeimage layer = 1]
[wait time=10]
;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[wait time=10]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
#
[wait time=10]
町へ出た。[r]
陽気な歌声が聞こえてくる。[r]
[wait time=10]
「～夏も近づく八十八夜」[p]
;↑この歌詞は使用に問題無い旨（『茶摘み』作詞者不詳、文部省唱歌、パブリックドメイン）をJASRAC検索等にて確認済
[wait time=10]

[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ(町
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]

[主人公目パチ1回]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
お茶屋の軒先で、娘さんが歌いながら道行く人々にお茶をふるまっている。[r]
ふわりとお茶の良い香りが漂ってきた。
[autosave]
[p]

;【選択肢】
*sansaku_machi_common_02_sentaku01
[eval exp="f.select_scene='machi_common_02_sentaku01'"]

[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage]

;背景:町並み
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_machi.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]

[wait time=10]

;より安定すると思われるglinkに変更します
[glink storage="sansaku_common_tea2.ks" target=*sansaku_machi_common_02_sentaku01_ok text="お茶をいただく" size=25 width="300" x=280 y=80 graphic="select_waku_x500.png" font_color=black]
[glink storage="sansaku_common_tea2.ks" target=*sansaku_machi_common_02_sentaku01_no text="　断　　　　　る" size=25 width="300" x=280 y=200 graphic="select_waku_x500.png" font_color=black]

[whosay name=お茶屋の娘 color="#5b7e23"]
「よかったら、お茶を一杯いかがですか？」

;メッセージレイヤサイズを会話窓用に設定変更
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]

[主人公目パチ1回]
[autosave]
[s]
[cm]
@jump target=*sansaku_machi_common_02_sentaku01
[s]
