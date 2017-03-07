;=============================================
;手紙編
;=============================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[eval exp="sf.FButton='OFF'"]
;=============================================
;◆話題への返事◆
;=============================================
;『 別れの手紙 』（『最後の手紙』）
;=============================================
*katuraginomiya_fumi_last
[if exp="f.okeiko_gamen!=true"]
[テキスト全画面白文字]
『最後の手紙』[p]
[endif]
[手紙葛城宮 fumi_number=1]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp][名前]殿 には、お健やかにお過ごしであろうか？ [r]
[r]
[sp]さて、私は[名前]殿 に多くのものを求めていた。[r]
つまり手紙や、淑女の品格全ての事だ。[r]
[r]
[sp]私は[名前]殿 を一目みて気に入ったことに、[r]
嘘、偽りはない。[r]
[sp] だが。君を私の妃として迎えるのは、難しくなった。[p]
[r][sp][r][r]
[sp]手紙のみの別れの挨拶は失礼だろうが、[r]
もう直接会うわけにもいくまい。 [r]
[r]
[sp]これから、もう会う事もないが、君の活躍を祈っている。[r]
[r]
[sp] 　　　　　　　　　　　　　　　　　　　　 葛城宮　晴仁[p]
;◆↓お稽古パート経由で手紙を読みに来た場合の処理(手紙組み込みテスト用)
[if exp="f.okeiko_gamen==true"]
	;◆↓未読or既読リスト配列を既読にf.midoku_list_hairetsu[3(葛城宮を示すNumber)][(配列中の位置ナンバー)]
	[eval exp="f.midoku_list_hairetsu[3][28] = 0"]
	[freeimage layer = 29]
	@jump storage=info_oaite_fumi.ks target=&f.viewing_target
	[s]
[endif]
[手紙葛城宮読了 fumi_number=]

[イベントシーン終了]
@jump storage="test_katuragi.ks"
[s]
