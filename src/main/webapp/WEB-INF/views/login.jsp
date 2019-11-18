<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/semantic.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/custom.css">	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/js/semantic.min.js"></script>
<script type="text/javascript">
$(document)
  .ready(function() {
    $('.ui.form')
      .form({
        fields: {
          email: {
            identifier  : 'email',
            rules: [
              {
                type   : 'empty',
                prompt : 'Please enter your e-mail'
              },
              {
                type   : 'email',
                prompt : 'Please enter a valid e-mail'
              }
            ]
          },
          password: {
            identifier  : 'password',
            rules: [
              {
                type   : 'empty',
                prompt : 'Please enter your password'
              },
              {
                type   : 'length[6]',
                prompt : 'Your password must be at least 6 characters'
              }
            ]
          }
        }
      })
    ;
  })
;
</script>
<title>Login User</title>
</head>
<body>

		<div class="ui middle aligned center aligned grid">
			<div class="login column">
				<h2 class="ui orange image header">
					<span class="content">Log-in to your account</span>
				</h2>
				<form class="ui large form" action="login" method="post">		
					 <p style="color:red">${errorMessage}</p>
					<div class="ui stacked segment">
						<div class="field">
							<div class="ui left icon input">
							<input type="text" name="UserName" placeholder="Your Email">
							</div>
						</div>
						<div class="field">
							<div class="ui left icon input">
							<input type="password" name="Password" placeholder="Password">
							</div>
						</div>
						
					<button class="ui fluid large orange submit button" type="submit">Submit</button>
					
					</div>
					<div class="ui error message"></div>
				</form>
			</div>
	</div>
</body>
</html>