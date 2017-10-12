$(document).ready(function() {
	    $("#loginForm").submit(function () {
	        // submit이 자동으로 되는 기능을 막기
	        event.preventDefault();

	        // id, pwd를 가져오기
	        var id = $("#id").val();
	        var pwd = $("#pwd").val();
//	            console.log("id : " + id + "\npwd : " + pwd);
	        console.log("id : " + id);

	        // 서버로 post 전송 (ajax)
	        $.post("/WebClass/bloglogin", { "id" : id },
	            function(data) { 	
	                 console.log("play");
	                if(data.msg == 'success') {
	                	location.href = "./blogbasic.jsp";
	                	
	                } else if (data.msg == 'error') {
	                // <%-- 회원 가입이 실패한 경우 처리 추가 --%>
	                	var myModal = $('#myModal');
	                    myModal.modal();
	                    myModal.find('.modal-title').text('Sign In Error');
	                    myModal.find('.modal-body').text('Invalid username or password');
	                    
	                    $('#myModal').on('hide.bs.modal', function () {
	                    	$('#pwd').val("");
	                    	})
	                }

	            });          // post방식으로 저 사이트에 post를 보내는데 json형식으로 입력한 값이 들어감

	});

            
          $('#signupForm').submit(function(event) {
            // submit이 자동으로 되는 기능을 막기
            event.preventDefault();

            // id, pwd를 가져오기
            // document.getElementById("id").value
            var name = $('#signupName').val();

            $.post("http://httpbin.org/post",
                { "name" : name},
                function(data) {
                  
                  var myModal=$('#myModal');
                  myModal.modal();
                  myModal.find('.modal-body').text(data.form.name + "님 회원가입되었습니다.");

                }
            );
          });
    });