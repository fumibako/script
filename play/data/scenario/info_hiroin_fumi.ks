*start
[cm]
[eval exp="f.viewing_storage = 'info_hiroin_fumi.ks'"]
@layopt layer=message1 page=fore visible = false
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[clearstack]
[clearfix]
[cm]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[freeimage layer = 26]
[image layer=26 x=0 y=0 storage="bg/plane_wakakusa.jpg"]
[if exp="f.fumi_report_info.length == 0 || f.fumi_report_info === 'undefined'"]
	[ptext layer=27 name="list,osirase" page=fore text="お手紙を出すと、こちらに「履歴」が表示されます。" x=100 y=100 size=16 color=saddlebrown visible=true]
	@jump target=*common
[endif]
[emb exp="f.fumi_report_info.length"]
;"手紙履歴" script by ＠名無しさん１
;最大10行以降で次の行へ
;最大20,40,60…行でglinkの出現
;(最大x以上で古い履歴は消去する。このスクリプトを行う前に消去)
;j='*page' + i ;で使えるように0から開始
[iscript]
[endscript]
*page0
[cm]
[freeimage layer = 27]

[if exp="f.fumi_report_info.length > 10"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page1 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]

[iscript]
for(i = 0; i < f.fumi_report_info.length; i++){
	if(i <= 9){ //いくつか調整しました◆jsYiJcqRkk
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i], page:"fore", layer:27, size:17, x:230, y:80+50*i, color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i, color:"saddlebrown"});
	}
	
	//glinkの出現:文箱の表現に揃えました。せっかく作っていただいたのに、活用できずすみません。案をありがとうございます◆jsYiJcqRkk
	//if(i > 20){
	//	tyrano.plugin.kag.ftag.startTag("glink",{target:"page1",text:"次へ"});
	//}
}
//共通の処理へ:[iscript]外に出しました。なぜか内側に入れると19行目で次ページに表示が変わってしまったためです(こちらの環境由来の不具合かもしれません)◆jsYiJcqRkk
//tyrano.plugin.kag.ftag.startTag("jump",{target:"common"});
[endscript]
@jump target=*common

*page1
[if exp="f.fumi_report_info.length < 10"]
	@jump target=*page0
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page0 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 20"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page2 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=10; i<f.fumi_report_info.length; i++){
	//19以下から10以上の場合
	if(i <= 19 && i >= 10){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-500, color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-500, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page2
[if exp="f.fumi_report_info.length < 20"]
	@jump target=*page1
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page1 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 30"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page3 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=20; i<f.fumi_report_info.length; i++){
	if(i <= 29 && i >= 20){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-1000,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-1000, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page3
[if exp="f.fumi_report_info.length < 30"]
	@jump target=*page2
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page2 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 40"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page4 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=30; i<f.fumi_report_info.length; i++){
	if( i <=39 && i >= 30){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-1500,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-1500, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page4
[if exp="f.fumi_report_info.length < 40"]
	@jump target=*common
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page3 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 50"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page5 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=40; i<f.fumi_report_info.length; i++){
	if( i <=49 && i >= 40){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-2000,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-2000, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page5
[if exp="f.fumi_report_info.length < 50"]
	@jump target=*common
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page4 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 60"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page6 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=50; i<f.fumi_report_info.length; i++){
	if( i <=59 && i >= 50){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-2500,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-2500, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page6
[if exp="f.fumi_report_info.length < 60"]
	@jump target=*common
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page5 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 70"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page7 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=60; i<f.fumi_report_info.length; i++){
	if( i <=69 && i >= 60){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-3000,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-3000, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page7
[if exp="f.fumi_report_info.length < 70"]
	@jump target=*common
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page6 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 80"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page8 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=70; i<f.fumi_report_info.length; i++){
	if( i <=79 && i >= 70){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-3500,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-3500, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page8
[if exp="f.fumi_report_info.length < 80"]
	@jump target=*common
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page7 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_report_info.length > 90"]
			[glink name="list" storage="info_hiroin_fumi.ks" target=*page9 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
[endif]
[iscript]
for(i=80; i<f.fumi_report_info.length; i++){
	if( i <=89 && i >= 80){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-4000,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-4000, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common

*page9
[if exp="f.fumi_report_info.length < 90"]
	@jump target=*common
[endif]
[cm]
[freeimage layer = 27]
[glink name="list" storage="info_hiroin_fumi.ks" target=*page8 text="←" size=16 width="20" x=20 y=10 graphic="select_waku_x150.png" font_color=black]
;[if exp="f.fumi_report_info.length > 90"]
;			[glink name="list" storage="info_hiroin_fumi.ks" target=*page9 text="→" size=16 width="20" x=870 y=10 graphic="select_waku_x150.png" font_color=black]
;[endif]
[iscript]
for(i=90; i<f.fumi_report_info.length; i++){
	if( i <=99 && i >= 90){
		tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],page:"fore",layer:27,size:17,x:230,y:80+50*i-4500,color:"saddlebrown"});
		tyrano.plugin.kag.ftag.startTag("ptext",{text:i+1, page:"fore", layer:27, size:17, x:200, y:80+50*i-4500, color:"saddlebrown"});
	}
}
[endscript]
@jump target=*common


*common
;タイトル
[ptext layer=27 name="list,osirase" page=fore text="手　紙　履　歴" x=390 y=20 size=25 color=saddlebrown visible=true]
;戻るボタン
[button name="list" target="back" text"戻る" x=866 y=550 graphic="back.png"]
[s]

*back
[cm]
[clearfix]
[freeimage layer = 26]
[freeimage layer = 27]
[image layer=26 x=0 y=0 storage="bg/bg_fumibako.jpg"]
[wait time=10]
@jump storage=info_oaite_fumi.ks target=*fumibako 
[s]
