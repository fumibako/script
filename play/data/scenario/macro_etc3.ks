*start
;==============================
; その他マクロ設定3[各キャラルート終了][チラシ][新聞][テキスト全画面～][名字][名前][sp]
;==============================
;◆[四条ルート終了 end=good][四条ルート終了 end=normal][四条ルート終了 end=bad]
;↓マクロ作成途中で移動してしまったようなので、動作部分を変更・追記してみました。ローカルにてテスト画面からの動作でエラーが出ないことを部分的に確認済ですが、お稽古パート経由の動作は組み込みながらでないと確認ができないため、未確認です
;うまく動作しないようでしたらこちらで修正します。その際はお知らせください(スクリプト担
[macro name=四条ルート終了]
;書き直すのが面倒なので一括処理内容
;ending
[if exp="mp.end == 'good'"]
;goodエンディング時
	[eval exp="sf.ED_sijyou_good=1"]
;回想記録終了
	[endreplay] 
[elsif exp="mp.end == 'normal'"]
	[eval exp="sf.ED_sijyou_normal=1"]
	[endreplay] 
[elsif exp="mp.end == 'bad'"]
	[eval exp="sf.ED_sijyou_bad=1"]
	[endreplay] 
[endif]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
	@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[財前ルート終了 end="good"][財前ルート終了 end="normal"][財前ルート終了 end="bad1"][財前ルート終了 end="bad2"]
[macro name=財前ルート終了]
[if exp="mp.end == 'good'"]
	[eval exp="sf.ED_zaizen_good=1"]
	[endreplay] 
[elsif exp="mp.end == 'normal'"]
	[eval exp="sf.ED_zaizen_normal=1"]
	[endreplay] 
[elsif exp="mp.end == 'bad1'"]
	[eval exp="sf.ED_zaizen_bad1=1"]
	[endreplay] 
[elsif exp="mp.end == 'bad2'"]
	[eval exp="sf.ED_zaizen_bad2=1"]
	[endreplay] 
[endif]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
	@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[葛城宮ルート終了 end="good"][葛城宮ルート終了 end="normal"][葛城宮ルート終了 end="bad"]
[macro name=葛城宮ルート終了]
[if exp="mp.end == 'good'"]
	[eval exp="sf.ED_katuraginomiya_good=1"]
	[endreplay] 
[elsif exp="mp.end == 'normal'"]
	[eval exp="sf.ED_katuraginomiya_normal=1"]
	[endreplay] 
[elsif exp="mp.end == 'bad'"]
	[eval exp="sf.ED_katuraginomiya_bad=1"]
	[endreplay] 
[endif]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
	@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[藤枝ルート終了 end="good"][藤枝ルート終了 end="normal"][藤枝ルート終了 end="bad"][藤枝ルート終了 end="bad2"]
[macro name=藤枝ルート終了]
[if exp="mp.end == 'good'"]
	[eval exp="sf.ED_hujieda_good=1"]
	[endreplay] 
[elsif exp="mp.end == 'normal'"]
	[eval exp="sf.ED_hujieda_normal=1"]
	[endreplay] 
[elsif exp="mp.end == 'normal'"]
	[eval exp="sf.ED_hujieda_normal=1"]
	[endreplay] 
[elsif exp="mp.end == 'bad'"]
	[eval exp="sf.ED_hujieda_bad=1"]
	[endreplay] 
[elsif exp="mp.end == 'bad2'"]
	[eval exp="sf.ED_hujieda_bad2=1"]
	[endreplay] 
[endif]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
	@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[チラシ]
[macro name="チラシ"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:チラシ
[bg method='crossfade' storage="../fgimage/bg/bg_tirasi.jpg" time=600]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font size=27]
;#
[endmacro]

;◆[新聞]
[macro name="新聞"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:新聞
[bg method='crossfade' storage="../fgimage/bg/test_bg_sinbun.jpg" time=600]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=150 width=720 height=600 top=30 page=fore margint="0"]

;テキスト全画面
[font color=white size=26]
;#
[endmacro]

;◆[テキスト全画面白文字無背景]
[macro name="テキスト全画面白文字無背景"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;#

[endmacro]

;◆[テキスト全画面白文字]
[macro name="テキスト全画面白文字"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[bg storage="../fgimage/bg/bg_prologue.jpg" time=%time|0 method=%method | &f.bg_method]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;#

[endmacro]

;◆[テキスト全画面白文字暗]
[macro name="テキスト全画面白文字暗"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[bg storage="../fgimage/bg/bg_prologue_dark.jpg" time=%time|0 method=%method | &f.bg_method]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;#
[endmacro]


;◆主人公名表示◆

;文中の表示
[macro name="名字"]
[emb exp="sf.girl_myouji"]
[endmacro]

;文中の表示
[macro name="名前"]
[emb exp="sf.girl_namae"]
[endmacro]

;◆文頭スペース
[macro name="sp"]
[eval exp="sf.space = '　'"]
[emb exp="sf.space"]
[endmacro]

;名前欄に表示
[macro name="名前欄"]
[iscript]
mp.color="red";
$(".chara_name_area").text(sf.girl_namae);
[endscript]
[endmacro]

;◆その他人物名表示◆
[macro name="文矢"]
[iscript]
$(".chara_name_area").text("<span style='color:#656B2F;'>文矢</span>");
[endscript]
[endmacro]

[return]
