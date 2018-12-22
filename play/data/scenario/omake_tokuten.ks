;=========================================
; クリア特典
;=========================================
*start
;◆◆一度色々リセットする
*reset
[cm]
[clearfix]
[clearstack]
[skipstop]
[stopse]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[wait time=10]
;背景表示
[bg wait=true storage="../fgimage/bg/plane_wakakusa.jpg" time=1]
;準備中
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[if exp="tf.tokuten == 'sijyou'"]
	[image name="loding_pic" layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_sijyou_preload.jpg" time=500]
[endif]
[if exp="tf.tokuten == 'zaizen'"]
	[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_zaizen.jpg" time=500]
[endif]
[if exp="tf.tokuten == 'kuroda'"]
	[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_preload_kuroda.jpg" time=500]
[endif]
[if exp="tf.tokuten == 'katuraginomiya'"]
	[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_katuraginomiya.jpg" time=500]
[endif]
[if exp="tf.tokuten == 'hujieda'"]
	[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_hujieda.jpg" time=500]
[endif]
[if exp="tf.tokuten == 'all'"]
	[image name="loding_pic" layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_preload_girl.jpg" time=500]
[endif]
[wait time=50]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
;戻るボタン設置
[button fix=true graphic="back.png" target="*back" x=880 y=570 width=50 height=50 ]

[if exp="tf.test_gamen == true"]
	[glink target="*back_test" text="テストメニューへ" graphic="select_waku_x500.png" size=11 width="100" x=820 y=540 graphic="select_waku_x500.png" font_color=indigo]
[endif]

;◆おまけから来たフラグ(表情鑑賞で使用：omake.ksと同じものを流用させていただきました)
[eval exp="tf.flag_omake = true"]

*page_0
;並んでいるところをみせない
[iscript]
$(".layer_free").css("opacity",0);
$(".layer_2").css("opacity",0);
[endscript]

[html top=0 left=0]
<!--↓以下はスクロール対策用に追記-->
<!--scroll scripts and codes by ＠名無しさん１ ◆B4nFWraU42-->
<style>
.tokuten_gamen {
height:640px;
width:960px;
/*高さを指定しないと領域オーバーか認識しない為指定 overflow:scroll;　touch*/
overflow-y:scroll;
-webkit - overflow - scrolling: touch;
scrolling:touch;
overflow-scrolling:touch;
}
</style>
<style>
/* スクロールバーのデザインをつけることができます。ただしwebkitブラウザのみです。他ブラウザはjqueryプラグインで*/
::-webkit-scrollbar{
width:15px;
background:#dad1c1;
	}
::-webkit-scrollbar-thumb{
background:#beb7e8;
	}
</style>
<!--↑ここまでスクロール対策用に追記-->
[endhtml]

*name_tokuten
[if exp="tf.tokuten == 'sijyou'"]
 [eval exp="tf.tokuten_name='四条様との'"]
[endif]
[if exp="tf.tokuten == 'zaizen'"]
 [eval exp="tf.tokuten_name='財前様との'"]
[endif]
[if exp="tf.tokuten == 'kuroda'"]
 [eval exp="tf.tokuten_name='黒田様との'"]
[endif]
[if exp="tf.tokuten == 'katuraginomiya'"]
 [eval exp="tf.tokuten_name='殿下との'"]
[endif]
[if exp="tf.tokuten == 'hujieda'"]
 [eval exp="tf.tokuten_name='藤枝様との'"]
[endif]
[if exp="tf.tokuten == 'all'"]
 [eval exp="tf.tokuten_name=''"]
[wait time=10]
[endif]

[eval exp="tf.tokuten_target = '*tokuten_' + tf.tokuten"]
@jump target=&tf.tokuten_target
;==================================================================================
;四条
*tokuten_sijyou
[html]
<div class='tokuten_gamen' align="left">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
<tr><td>
<img src="./data/image/midasi_sijyou.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
	<tr><td>
　　四条様との物語を全てご覧いただいた方へ、キャラクターデザイン原案を公開いたします。<br>
　　制作の舞台裏をお楽しみください。<br><br>
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
	↓デザイン初期案です。絵を見てこのキャラクターの登場するゲームを見たい！<br>
	　と制作意欲が高まった記憶があります（絵：かいこ）<br>
	<img src="./data/image/design_sijyou1.png">
　	<br><br>
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓シナリオライター（＠名無しさん１）と相談しつつ、髪型などのデザインを絞って行ったころの案です。<br>
　物語中の深い背景をまとった雰囲気が出て、こちらも魅力的です。<br>
　こうやって少しずつゲームに登場する形に近づいていくのが楽しかったです（絵：かいこ）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_sijyou2.jpg">
	</center>
　	<br>
	
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓衣装デザイン案のバリエーションです。探偵スタイルも魅力的です。<br>
　最終的には色々な場面に合わせやすい、着物と羽織のスタイルに落ち着きました（絵：かいこ）<br>
	</td></tr></table>
　	<img src="./data/image/design_sijyou3.jpg">
　	<br><br>
<img src="./data/image/line_brown.png">
　	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓最終的なデザインは…？<br>
「表情鑑賞」ボタンを押すと、四条華織キャラクターデザインと表情鑑賞をお楽しみいただけます。<br>
<br><br><br>
	</td></tr></table>

</td></tr></table></div>
[endhtml]
;表情鑑賞ボタン設置
[glink storage="test_sijyou_hyoujou.ks" graphic="select_waku_x500.png" text="表情鑑賞" font_color=black size=16 width=170 x=10 y=570]

@jump target=*common

;財前
*tokuten_zaizen
[html]
<div class='tokuten_gamen' align="left">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
<tr><td>
<img src="./data/image/midasi_zaizen.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
	<tr><td>
　　財前様との物語を全てご覧いただいた方へ、キャラクターデザイン原案を公開いたします。<br>
　　制作の舞台裏をお楽しみください。<br><br>
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
	↓シナリオライターのキャラクターイメージです。クールな中にも温かさを感じます（絵：◆I9IhvvVdPo）<br>
	</td></tr></table>
	<center>
	<img src="./data/image/design_zaizen1.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓イメージを参考にデザインした案です。クールで華やか、かつシナリオ中の背景や性格を意識してデザインしました。<br>
　シナリオライター（◆I9IhvvVdPo）と相談しつつイメージを近づけていきました（絵：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_zaizen2.jpg">
	</center>
　	<br>
	
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓カラーデザイン案です。スーツの色はイメージカラーの茶系色、ネクタイは瞳の色と合わせています。<br>
　立ち絵として仕上げる際はこのデザインに巻き髪を足して、より華やかさを強調しました（絵：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_zaizen3.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">
　	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
↓最終的なデザインは…？<br>
「表情鑑賞」ボタンを押すと、財前美彬キャラクターデザインと表情鑑賞をお楽しみいただけます。<br>
<br><br><br>
	</td></tr></table>

</td></tr></table></div>
[endhtml]
;表情鑑賞ボタン設置
[glink storage="test_zaizen_hyoujou.ks" graphic="select_waku_x500.png" text="表情鑑賞" font_color=black size=16 width=170 x=10 y=570]

@jump target=*common

;黒田
*tokuten_kuroda
[html]
<div class='tokuten_gamen' align="left">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
<tr><td>
<img src="./data/image/midasi_kuroda.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
	<tr><td>
　　黒田様との物語を全てご覧いただいた方へ、キャラクターデザイン原案を公開いたします。<br>
　　制作の舞台裏をお楽しみください。<br><br>
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓シナリオライターのイメージ案です。シナリオを書き始める前にまずイメージを考えました。<br>
　薄幸さ、繊細さを意識して描きました（絵：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
	<img src="./data/image/design_kuroda1.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓物語を読んで描いてくださった案です。<br>
　繊細さもありつつ野山での調査もこなすたくましさも感じられます（絵：かいこ）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_kuroda2.jpg">
	</center>
　	<br>
	
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓カラー着色案と表情差分案です。イメージに合っていて、即採用となりました（絵：かいこ）<br>
　物語をしっかりと読み込んでデザインしてくださっている、と分かる絵を見てとても嬉しかったです（文：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_kuroda3.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">
　	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
↓最終的なデザインは…？<br>
「表情鑑賞」ボタンを押すと、黒田将貴キャラクターデザインと表情鑑賞をお楽しみいただけます。<br>
<br><br><br>
	</td></tr></table>

</td></tr></table></div>
[endhtml]
;表情鑑賞ボタン設置
[glink storage="test_kuroda_hyoujou.ks" graphic="select_waku_x500.png" text="表情鑑賞" font_color=black size=16 width=170 x=10 y=570]
@jump target=*common

;葛城宮
*tokuten_katuraginomiya
[html]
<div class='tokuten_gamen' align="left">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
<tr><td>
<img src="./data/image/midasi_katuraginomiya.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
	<tr><td>
　　葛城宮殿下との物語を全てご覧いただいた方へ、キャラクターデザイン原案を公開いたします。<br>
　　制作の舞台裏をお楽しみください。<br><br>
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓デザイン案です。男らしさ、意思の強さを出せるように心がけてデザインしました。<br>
　髪型案4パターンからシナリオライター（◆I9IhvvVdPo）と相談しつつイメージを近づけていきました。<br>
　（絵：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
	<img src="./data/image/design_katuraginomiya1.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓髪型①をベースに着色したカラー案です。<br>
　実際の立ち絵はシナリオライターと相談し、髪型②案をベースに仕上げました。<br>
　着色時は明暗差を大きめにして力強さを出すように心がけました（絵：◆jsYiJcqRkk）<br>
　	</td></tr></table>
	<center>
　	<img src="./data/image/design_katuraginomiya2.jpg">
	</center>
　	<br>
	
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓アスコットタイに止めているブローチはお印の榊デザインです（榊：◆I9IhvvVdPo、他：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_katuraginomiya3.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">　	
　	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
↓最終的なデザインは…？<br>
「表情鑑賞」ボタンを押すと、葛城宮晴仁キャラクターデザインと表情鑑賞をお楽しみいただけます。<br>
<br><br><br>
	</td></tr></table>

</td></tr></table></div>
[endhtml]
;表情鑑賞ボタン設置
;[button fix=true graphic="back.png" target="*back" x=880 y=570 width=50 height=50 ]
[glink storage="test_katuraginomiya_hyoujou.ks" graphic="select_waku_x500.png" text="表情鑑賞" font_color=black size=16 width=170 x=10 y=570]
@jump target=*common

;藤枝
*tokuten_hujieda
[html]
<div class='tokuten_gamen' align="left">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
<tr><td>
<img src="./data/image/midasi_hujieda.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
	<tr><td>
　　藤枝様との物語を全てご覧いただいた方へ、キャラクターデザイン原案を公開いたします。<br>
　　制作の舞台裏をお楽しみください。<br><br>
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓初期イメージ案です。藤枝ルートの物語を読んで描いてくださったものです（絵：かいこ）<br>
　その後デザイン担当を◆jsYiJcqRkkが引き継がせていただくことになりました。<br>
	</td></tr></table>
	<center>
	<img src="./data/image/design_hujieda1.jpg">
	</center>
　	<br>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓私服のデザインに迷っていた際に、シナリオライターさんが描いてくださった私服イメージ案です。<br>
（絵：◆I9IhvvVdPo）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_hujieda2.jpg">
	</center>
　	<br>
	
	</td></tr></table>
<img src="./data/image/line_brown.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓いただいたイメージを参考に、音楽家らしい繊細さや優しく前向きな性格を表現できるように心がけて<br>
　デザインしました。郵便屋としての衣装は明治期の郵便配達人の制服デザインを参考にしています。<br>
　袖の赤い線が郵便マーク（〒）になっています（絵：◆jsYiJcqRkk）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_hujieda3.jpg">
	</center>
　	<br>
　	
<img src="./data/image/line_brown.png">
　	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
↓最終的なデザインは…？<br>
「表情鑑賞」ボタンを押すと、藤枝肇キャラクターデザインと表情鑑賞をお楽しみいただけます。<br>
<br><br><br>
	</td></tr></table>

</td></tr></table></div>
[endhtml]
;表情鑑賞ボタン設置
[glink storage="test_hujieda_hyoujou.ks" graphic="select_waku_x500.png" text="表情鑑賞" font_color=black size=16 width=170 x=10 y=570]
@jump target=*common

;全て
*tokuten_all
[html]
<div class='tokuten_gamen' align="left">
<table border="0" style="margin-left:0%; margin-right:0%; width:100%;" align="left">
<tr><td>
<img src="./data/image/midasi_all.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="left">
	<tr><td>
　　全ての物語をご覧いただいた方へ、主人公のキャラクターデザイン原案を公開いたします。<br>
　　制作の舞台裏をお楽しみください。<br><br>
	</td></tr></table>
<img src="./data/image/line_red.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓初期デザイン案です。<br>
　幼少期はお転婆・少し恥ずかしがり屋、という設定の元で案が出されました（絵：かいこ）<br>
	</td></tr></table>
	<center>
	<img src="./data/image/design_girl1.jpg">
	</center>
　	<br>
<img src="./data/image/line_red.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓衣装カラー案です。色を変えるだけで、大分印象が違いますね（絵：かいこ）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_girl2.jpg">
	</center>
　	<br>
	
	</td></tr></table>
<img src="./data/image/line_red.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓髪型カラー案です（絵：かいこ）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_girl3.jpg">
	</center>
　	<br>
<img src="./data/image/line_red.png">
	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
	<br>
↓髪型案その２です。色々な案のなかから現在の主人公の姿になりました（絵：かいこ）<br>
	</td></tr></table>
	<center>
　	<img src="./data/image/design_girl4.jpg">
	</center>
　	<br>
　	
<img src="./data/image/line_red.png">
　	<table border="0" style="margin-left:10%; margin-right:0%; width:100%;" align="center">
	<tr><td>
↓最終的なデザインは…？<br>
「表情鑑賞」ボタンを押すと、主人公キャラクターデザインと表情鑑賞をお楽しみいただけます。<br>
<br><br><br>
	</td></tr></table>

</td></tr></table></div>
[endhtml]
;表情鑑賞ボタン設置
;[button fix=true graphic="back.png" target="*back" x=880 y=570 width=50 height=50 ]
[glink storage="test_girl.ks" graphic="select_waku_x500.png" text="表情鑑賞" font_color=black size=16 width=170 x=10 y=570]
@jump target=*common

;=====================================================================================
*common
[iscript]
$(".layer_free").css("opacity",1);
$(".list").css("opacity",1);
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[wait time=10]
[freeimage layer=29]
[wait time=10]
@layopt layer=2 visible=true
[wait time=10]
;↓特典を経由する場合の背景切り替え動作不具合防止。なぜかleft=0だと右にずれて表示されるので"-1"にしています。
[chara_delete name="bg"]
[chara_new name="bg" storage="toumei.gif"]
[wait time=10]
[chara_show left="-1" top=0 width=961 height=640 layer=1 name="bg" time=0]
[wait time=10]
[s]

*back
[clearfix]
[cm]
[freeimage layer=29]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[eval exp="tf.flag_omake = false"]
[eval exp="tf.test_gamen = false"]
@jump storage=omake.ks
[s]

*jump_hyoujou_sijyou
@jump storage="test_sijyou_hyoujou.ks" 

*jump_hyoujou_zaizen
@jump storage="test_zaizen_hyoujou.ks" 

*jump_hyoujou_kuroda
@jump storage="test_kuroda_hyoujou.ks" 

*jump_hyoujou_katuraginomiya
@jump storage="test_katuraginomiya_hyoujou.ks" 

*jump_hyoujou_hujieda
@jump storage="test_hujieda_hyoujou.ks" 

*jump_hyoujou_girl
@jump storage="test_girl.ks" 

*back_test
[clearfix]
[cm]
[freeimage layer=29]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=1]
[eval exp="tf.flag_omake = false"]

@jump storage=test.ks
[s]

