$(function(){
				$("#function .glyphicon").click(function(){
					$(".function-detail").fadeOut("fast");
					var name=$(this).data("name");
					$(".function-detail[data-name="+name+"]").slideDown(1000);
					$("#function .glyphicon-active").removeClass("glyphicon-active");
					$(this).addClass("glyphicon-active");
				});
				
				$(".glyphicon-triangle-right").click(function(){
					//alert($(".glyphicon-active").data("name"));
					for(var i=1;i<=3;i++){
						if($(".glyphicon-active").data("name")=="function-"+i){
							if(i==3)i=0;
							var name="function-"+(i+1);
							$("#function .glyphicon-active").removeClass("glyphicon-active");
							$(".glyphicon[data-name="+name+"]").addClass("glyphicon-active");
							$(".function-detail").hide("fast");
							$(".function-detail[data-name="+name+"]").show("slow");
							break;
						}
					}
				});
				$(".glyphicon-triangle-left").click(function(){
					//alert($(".glyphicon-active").data("name"));
					for(var i=1;i<=3;i++){
						if($(".glyphicon-active").data("name")=="function-"+i){
							if(i==1)i=4;
							var name="function-"+(i-1);
							$("#function .glyphicon-active").removeClass("glyphicon-active");
							$(".glyphicon[data-name="+name+"]").addClass("glyphicon-active");
							$(".function-detail").hide("slow");
							$(".function-detail[data-name="+name+"]").show("slow");
							break;
						}
					}
				});
				$("#mainnav li:nth-child(1)").click(function(){
					$("#mainnav li").css("background","#F5F5F5");
					$(this).css("background","#5CB85C");
					$("#mainnav li:nth-child(1) .navdiv li").css("background","#5CB85C");
					$(".navdiv").css("display","none");
					$("#mainnav li:nth-child(1) .navdiv").css("display","block");
				});
				$("#mainnav li:nth-child(2)").click(function(){
					$("#mainnav li").css("background","#F5F5F5");
					$(this).css("background","#269ABC");
					$("#mainnav li:nth-child(2) .navdiv li").css("background","#269ABC");
					$(".navdiv").css("display","none");
					$("#mainnav li:nth-child(2) .navdiv").css("display","block");
				});
				$("#mainnav li:nth-child(3)").click(function(){
					$("#mainnav li").css("background","#F5F5F5");
					$(this).css("background","plum");
					$("#mainnav li:nth-child(3) .navdiv li").css("background","plum");
					$(".navdiv").css("display","none");
					$("#mainnav li:nth-child(3) .navdiv").css("display","block");
				});
				$("#mainnav li:nth-child(4)").click(function(){
					$("#mainnav li").css("background","#F5F5F5");
					$(this).css("background","#4CAE4C");
					$("#mainnav li:nth-child(4) .navdiv li").css("background","#4CAE4C");
					$(".navdiv").css("display","none");
					$("#mainnav li:nth-child(4) .navdiv").css("display","block");
				});
				$("#mainnav li:nth-child(5)").click(function(){
					$("#mainnav li").css("background","#F5F5F5");
					$(this).css("background","cornflowerblue");
					$("#mainnav li:nth-child(5) .navdiv li").css("background","cornflowerblue");
					$(".navdiv").css("display","none");
					$("#mainnav li:nth-child(5) .navdiv").css("display","block");
				});
				$("#mainnav li"&&".navdiv ul").mouseleave(function(){
					$(".navdiv").css("display","none");
				});
				
				$("#manager li").click(function(){
					$("#manager li").css("opacity",0.2);
					$(this).css("opacity",1);
				});
				
  				
  				$('[data-toggle="tooltip"]').tooltip();
  				$('#manager li:nth-child(1)').click(function(){
		    		$('.atitle').hide();
		    		$('#manager-span div:nth-child(1)').show();
		    	});
		    	$('#manager li:nth-child(2)').click(function(){
		    		$('.atitle').hide();
		    		$('#manager-span div:nth-child(2)').show();
		    	});
		    	$('#manager li:nth-child(3)').click(function(){
		    		$('.atitle').hide();
		    		$('#manager-span div:nth-child(3)').show();
		    	});
		    	$('#manager li:nth-child(4)').click(function(){
		    		$('.atitle').hide();
		    		$('#manager-span div:nth-child(4)').show();
		    	});
		    	$('#manager li:nth-child(5)').click(function(){
		    		$('.atitle').hide();
		    		$('#manager-span div:nth-child(5)').show();
		    	});
		    	$('#manager li:nth-child(6)').click(function(){
		    		$('.atitle').hide();
		    		$('#manager-span div:nth-child(6)').show();
		    	});
			});
			
			