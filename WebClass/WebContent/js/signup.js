var email = 'guest';


$(document).ready(function(){
  $('#loginForm').submit(function (event){
      event.preventDefault();
      console.log('hahah');
      // 전송 안되도록 막기 event.preventDefault();
      //event.preventDefault();
      var id = $("#form-username").val();
      var pw = $("#form-password").val();
      console.log(id,pw);



      //서버로 POST 방식 전송
      $.post("http://httpbin.org/post",{'id':id,'pwd':pw},function(data){
          //console.log(data);
          //alert(data.form.id+'님 로그인 되었습니다.');
          var myModal = $('#myModal');
          myModal.modal();
          myModal.find('.modal-body').text(data.form.id+'님 회원가입 되었습니다.');
          email = data.form.id;
      });
  });


});

function gotomain() {
    window.location.href = "index.html?email=" + email;
   }
