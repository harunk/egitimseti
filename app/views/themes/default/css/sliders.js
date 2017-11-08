$(function(){
	$.SliderHk={
		Yukle:function(konum="main"){
			$.ajax({  
					type: "POST",  
					url: "./temalar/egimli/fnk/tema.islem.php",  
					data:"islem=sliderimg&konum="+konum,
					chace:true, 
					timeout:5000,
					datatype:'json',
					success: function(aaa){ 
						if(aaa.ok){
							$($konum+"_slider").html(aaa.ok);	
						}
					}
			     });
		},
		SolaKaydir:function(konum){
			
		}
	}
});