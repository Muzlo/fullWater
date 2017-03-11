
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>瀑布流</title>
<style>
body,div{ margin:0; padding:0}
img{ border:0}
#container{ text-align:center}
/*#container .cell{ padding:5px 5px 0; border:1px solid #E3E3E3; background:#F5F5F5; margin-top:10px}
#container p{ line-height:20px; margin-top:5px}
#noMore{display: none;}*/
</style>
<script src="http://cdn.bootcss.com/jquery/3.1.0/jquery.min.js"></script>

</head>

<body>
<div id="container"></div>
<p id="noMore">没有更多啦</p>
<script>
var html="";
var num=0;
var url='pages.php';

    $.ajax({
		url: url, 
		data: {'pageNum':num},
		type: 'post', 
		async:false,
		success: function (data) {
			var total=jQuery.parseJSON(data)['totalPage'];
			var data=jQuery.parseJSON(data)['list']; 

			$.each(data,function(i,val){
		  	   html=html+'<div class="cell"><img src="'+val['email']+'" /><p>'+val['id']+'</p></div>';
			});

			$("#container").html(html)
			
			
		}
	});


var h1=$(this).height() + $(this).scrollTop();
var h2=$(document).height()-600;


var scrollTop = $(this).scrollTop();
var scrollHeight = $(document).height();
var windowHeight = $(this).height();


function ajax2(){
	     $.ajax({
			url: url, 
			data: {'pageNum':num+1},
			type: 'post', 
			async:false,
			success: function (data) {
				var totalPage=jQuery.parseJSON(data)['totalPage'];
				var data=jQuery.parseJSON(data)['list']; 
				if(num<=totalPage){
					num++;
					$.each(data,function(i,val){
				  	   html=html+'<div class="cell"><img src="'+val['email']+'" /><p>'+val['id']+'</p></div>';
					});

					$("#container").html(html)
				}else{
					$("#noMore").show();
				}
				
			}
		  });
}

	  $(window).scroll(function(event) {
				if( h1 > h2 ){
						// ajax2()			
				}
			
	  });


</script>
</body>
</html>
