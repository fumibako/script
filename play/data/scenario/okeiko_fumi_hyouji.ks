;主人公登場時の画像被せ処理に◆B4nFWraU42さん作スクリプトを使用しました。ありがとうございます。
;=============================================
;お稽古パート:画面表示処理:安定化目的でfumi_hyoujiのみ分割
;=============================================
*start
*fumi_hyouji
;◆「休憩中」画像消去
[freeimage layer = 26]
;◆手紙到着していたら表示
[if exp="f.fumi_toutyaku == 0"]
	[eval exp="f.tukihajime = 0"]
	@jump storage="okeiko_hyouji.ks" target=*draw_fukidasi
[endif]
;メッセージレイヤ非表示(微妙な位置にクリックアイコンが出るのを防止)
@layopt layer=message0 page=fore visible = false
[wait time=10]
;[autostop]を入れるとフリーズ率高いためコメントアウト。調査予定。
;[skipstop]
[if exp="f.tukihajime!=1"]
	[cm]
	[chara_mod name="sys_fukidasi" storage="toumei.gif" time=0]
	[wait time=10]
	[layopt layer=29 visible=true]
	;主人公L登場時被せ
	[image name="junbi_girl" layer=29 storage="girl/L/gitl_L_all_futuu.png" left=50 top=220 time=300 visible=true]
	[wait time=10]
	[chara_mod name="A_base" storage="girl/L/base.png" time=0]
	[wait time=10]
	[chara_mod name="A_mayu" storage="girl/L/mayu_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_me" storage="girl/L/me_futuu.png" time=0]
	[wait time=10]
	[chara_mod name="A_kuti" storage="girl/L/kuti_futuu.png" time=0]
	[wait time=10]
	[wait time=200]
	[iscript]
	$('.junbi_girl').remove();
	[endscript]
[endif]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[image layer=26 x=250 y=120 storage="button/frame_lesson_message.png"]
[wait time=10]

;藤枝からの9月2～10月4週は鳩が届けたという内容に変更
[if exp="f.hato == 1"]
	[ptext text=&f.fumi_toutyaku_info_hato layer=27 size=21 x=290 y=165 color=darkslateblue bold=bold]
	[wait time=10]
	;【SE】キラキラ
	;[playse storage=kira.ogg loop=false ]
	;【SE】鳩	
	[stopse]
	[wait time=50]
	[if exp="sf.SE=='OFF'"]
		@jump target="*after_se_huji_hatofumi"
	[endif]
	[playse storage=tori_hato.ogg loop=false ]
*after_se_huji_hatofumi
	[eval exp="f.hato == 0"]
[p]
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]
	@jump target = *fumi_toutyaku_message_owari
[endif]

[if exp="f.fumi_toutyaku_oaite.length > 1"]
	[eval exp="f.fumi_toutyaku_info1=f.fumi_toutyaku_oaite"]
	[eval exp="f.fumi_toutyaku_info2='からお手紙が届いております'"]
	[ptext text=&f.fumi_toutyaku_info1 layer=27 size=21 x=290 y=150 color=darkslateblue bold=bold]
	[wait time=10]
	[ptext text=&f.fumi_toutyaku_info2 layer=27 size=21 x=290 y=185 color=darkslateblue bold=bold]
	[wait time=10]
	;【SE】キラキラ
	[stopse]
	[wait time=50]
	[if exp="sf.SE=='OFF'"]
		@jump target="*after_se_fumitoutyaku1"
	[endif]
	[playse storage=kira.ogg loop=false]
*after_se_fumitoutyaku1
[endif]
[if exp="f.fumi_toutyaku_oaite.length == 1"]
	[ptext text=&f.fumi_toutyaku_info layer=27 size=21 x=290 y=165 color=darkslateblue bold=bold]
	[wait time=10]
	;【SE】キラキラ
	[stopse]
	[wait time=50]
	[if exp="sf.SE=='OFF'"]
		@jump target="*after_se_fumitoutyaku2"
	[endif]
	[playse storage=kira.ogg loop=false]
*after_se_fumitoutyaku2
[endif]
[p]
[freeimage layer = 26]
[wait time=10]
[freeimage layer = 27]
[wait time=10]

*fumi_toutyaku_message_owari

[eval exp="f.tukihajime = 0"]
[eval exp="f.fumi_toutyaku = 0"]
[eval exp="f.fumi_toutyaku_oaite=[]"]
@jump storage="okeiko_hyouji.ks" target=*tukihajime_owari
