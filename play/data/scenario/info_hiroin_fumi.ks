*start
[cm]
[eval exp="f.viewing_storage = 'info_hiroin_fumi.ks'"]
@layopt layer=message1 page=fore visible = false
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[clearfix]
[cm]
[layopt layer=26 visible=true]
[layopt layer=27 visible=true]
[layopt layer=28 visible=true]
[freeimage layer = 26]
[image layer=26 x=0 y=0 storage="bg/plane_wakakusa.jpg"]
[ptext layer=27 name="list,osirase" page=fore text="手　紙　履　歴" x=400 y=50 size=20 color=saddlebrown visible=true]
[iscript]
for(i=0; i<f.fumi_report_info.length; i++){
 
 tyrano.plugin.kag.ftag.startTag("ptext",{text:f.fumi_report_info[i],layer:27,size:15,x:10,y:150+50*i,color:"saddlebrown"});

}
[endscript]
[if exp="f.fumi_report_info.length == 0"]
	[ptext layer=27 name="list,osirase" page=fore text="お手紙を出すと、こちらに「履歴」が表示されます。" x=100 y=200 size=16 color=saddlebrown visible=true]
[endif]
[button name="list" target="back" text"戻る" x=866 y=500 graphic="back.png"]
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
