;話題による手紙返事カウントスタート処理：黒田
[iscript]
if (f.fumi_atesaki == 'kuroda'){
	f.para_kuroda_koukando = f.para_kuroda_koukando + f.para_pre_kuroda_koukando;
	f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi-1;
	f.kuroda_fumi_wadai_tyokuzen=f.wadai_list_hairetsu[f.wadai_number][0];
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '趣味について' && f.kuroda_fumi_toutyakumachi_shumi < 0){ //話題「趣味について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_shumi=f.kuroda_fumi_toutyakumachi - 2;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 2;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '家族について' && f.kuroda_fumi_toutyakumachi_kazoku < 0){ //話題「家族について」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi + 1; //家族の話題は黒田が苦手なのであまり親しくないと返事が1週遅い
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi + 1;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_kazoku=f.kuroda_fumi_toutyakumachi - 2;
			f.para_kuroda_koukando = f.para_kuroda_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 2;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '友人の話題' && f.kuroda_fumi_toutyakumachi_yuujin < 0){ //話題No.3「友人の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 1;//友人の話題は黒田の好きな話題なので、届くのが1週早い
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 1;
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 1 - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 2;
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.kuroda_fumi_toutyakumachi_yuujin=f.kuroda_fumi_toutyakumachi - 2 - 1;
			f.fumi_wadai_toutyakumachi = f.kuroda_fumi_toutyakumachi - 3;
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '将来の話題'){ //「将来の話題」を選択した場合
		if(f.para_kuroda_koukando < parseInt(sf.kuroda['koukando_a'])){
		}
		if(f.para_kuroda_koukando >= parseInt(sf.kuroda['koukando_a'])){
		}
		if(f.para_kuroda_koukando > parseInt(sf.kuroda['koukando_b'])){
			f.para_kuroda_koukando = f.para_kuroda_koukando + 1; //苦手(-1)だった話題でも大丈夫に(+1)
		}
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == '新茶の話題'){ //「新茶の話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
			f.kuroda_fumi_toutyakumachi_sintya=0;//季節ものの話題なので翌週届く
			f.fumi_wadai_toutyakumachi = 0;
	}
	if(f.wadai_list_hairetsu[f.wadai_number][0] == 'さつきの話題'){ //「さつきの話題」を選択した場合、好感度に応じてその話題の返事待ちカウント(週数)スタート
			f.kuroda_fumi_toutyakumachi_satuki=0;//季節ものの話題なので翌週届く
			f.fumi_wadai_toutyakumachi = 0;
	}
}
[endscript]
@jump storage="fumi_wadai_owari.ks"
