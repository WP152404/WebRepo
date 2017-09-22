$(document).ready(function () {
    $.fn.snow({ minSize: 5, maxSize: 50, newOn: 1000, flakeColor: '#FFFFFF' });
          var val = location.href.substr(
              location.href.lastIndexOf('=') + 1
          );
          console.log('val : ' + val);
          var account = $('#account');
          account.text(val);
      });
