
			
		    $(function () { $('#collapseTwo').collapse('hide')});
		    $(function () { $('#collapseThree').collapse('hide')});
		    $(function () { $('#collapseOne').collapse('hide')});
		    
		   $(function(){
			  $('#function-menue-left li').click(function(){
				  var id=$(this).attr("id");
				  var link="content/"+ id +".jsp" + parent.window.location.search;
				  parent.document.getElementById("right").src=link;
			  });
			  
			  
			  
			  $('#listMethod').click(function(){
				  parent.document.getElementById("right").src="../methodList"+ parent.window.location.search;	
				});
			  $('#listAll').click(function(){
				  parent.document.getElementById("right").src="../allList"+ parent.window.location.search;	
				});
			  $('#listUser').click(function(){
				  parent.document.getElementById("right").src="../userList"+  parent.window.location.search;	
				});
		   });