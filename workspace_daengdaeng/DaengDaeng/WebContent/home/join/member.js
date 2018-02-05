$(function(){
    $('#cid').blur(function(){
        $.ajax({
            type:"POST",
            url:"checkid.jsp",
            data:{
                "cid": $('#cid').val()
            },
            success:function(data){
                if($.trim(data) == "YES"){
                 
                    $('#idchk').html('<b style="font-size:18px;color:blue">사용가능</b>');
                }else{
                   
                    $('#idchk').html('<b style="font-size:18px;color:red">사용불가능</b>');
                }
            }
        });    
    });
});