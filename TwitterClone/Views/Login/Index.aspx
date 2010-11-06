<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta content="en-us" http-equiv="Content-Language">
<meta content="Twitter is without a doubt the best way to share and discover what is happening right now." name="description">
<meta content="no" http-equiv="imagetoolbar">
<meta content="width = 780" name="viewport">
<meta content="4FTTxY4uvo0RZTMQqIyhh18HsepyJOctQ+XTOu1zsfE=" name="verify-v1">
<meta content="" name="page">
<meta content="NOODP" name="robots">
<meta content="n" name="session-loggedin">
    <title id="page_title">Twitter</title>
    <link href="Images/twitter_57.png" rel="apple-touch-icon">
<link href="Images/favicon.ico" rel="shortcut icon" type="image/x-icon">
    
    <link href="Content/twitter.css" media="screen" rel="stylesheet" type="text/css">
<link href="Content/geo.css" media="screen" rel="stylesheet" type="text/css">
<link href=Content/buttons_new.css" media="screen" rel="stylesheet" type="text/css">
        <style type="text/css">
        body { background: #C0DEED url('Images/bg-clouds.png') repeat-x; }
    </style>
    <link href="Content/corpbar.css" media="screen, projection" rel="stylesheet" type="text/css">
<style type="text/css">
  div#corpBar div.fixed-container {
    width: 733px;
  }
  div#corpBar ul {
    display: none;
  }
</style>
  </head>
  <body class="sessions chrome chrome-windows" id="new">    <div class="fixed-banners">
    </div>
    <div id="dim-screen"></div>
    <ul id="accessibility" class="offscreen">
  <li><a href="#content" accesskey="0">Skip past navigation</a></li>
  <li>On a mobile phone? Check out <a href="http://m.twitter.com/">m.twitter.com</a>!</li>
  <li><a href="#footer" accesskey="2">Skip to navigation</a></li>
    <li><a href="#signin">Skip to sign in form</a></li>
</ul>

    
    

    <div id="container" class="subpage">
            <span id="loader" style="display:none"><img alt="Loader" src="Images/loader.gif"></span>
      
        <div id="corpBar">
  <div class="fixed-container">
    <a href="http://twitter.com/" title="Twitter / Home" accesskey="1" id="logo">Twitter</a>
    
      <ul>
        <li><a href="/login" accesskey="l">Sign in</a></li>
        <li class="signup-link"><a href="/signup">Join Twitter!</a></li>
        
      </ul>
    
      </div>
</div>
      
      

      <div class="content-bubble-arrow"></div>
      
      
      
        <table cellspacing="0" class="columns">
          <tbody>
            <tr>
              <td id="content" class="round-left column">
                                <div class="wrapper">
                  
                  
<form action="/Login/AuthenticateUser" method="post">
<div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="cbd2fd41005dbc332fa2d97f5291733b75b14ff2"></div>  <input id="authenticity_token" name="authenticity_token" type="hidden" value="cbd2fd41005dbc332fa2d97f5291733b75b14ff2">  <input id="return_to_ssl" name="return_to_ssl" type="hidden">  <input id="redirect_after_login" name="redirect_after_login" type="hidden">  
  <fieldset class="common-form standard-form">
    <table cellspacing="0">
      <tbody><tr>
        <th><label for="username_or_email">Username or email</label></th>
        <td><input id="handle" name="handle" type="text" value=""></td>
      </tr>
      <tr>
        <th><label for="password">Password</label></th>
        <td><input id="pass" name="pass" type="password" value=""> <small><a href="/account/resend_password">Forgot?</a></small></td>
      </tr>
      <tr>
        <th></th>
        <td><input id="remember_me" name="remember_me" type="checkbox" value="1"> <label for="remember_me" class="inline">Remember me</label></td>
      </tr>
      
      <tr>
        <th></th>
        <td><input class="btn btn-m" id="signin_submit" name="commit" type="submit" value="Sign In"></td>
      </tr>
      <tr>
          <th></th>
        <td>
          <p>If you’ve been using Twitter from your phone, <a href="/account/complete">click here</a> to sign up on the web.</p>
                  </td>
      </tr>
    </tbody></table>
  </fieldset>
</form>





                </div>
                              </td>
              
                <td id="side_base" class="column round-right">
                                  
                  <div id="side">
                      <div class="section">
  <div class="section-header">
    <h1>Create Your Account</h1>
  </div>
  <div class="join">
    <form name="account_signup_form" id="account_signup_form" action="/signup">
      <input id="join" name="commit" type="submit" value="Join!">
    </form>
    <p class="complete">
      Already using Twitter<br> from your phone?
      <a href="/account/complete">Click here</a>.
    </p>
  </div>
</div>
<div class="section">
  <div id="lang-select"><form action="/sessions/change_locale" id="lf" method="post" style="margin-top:2px"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="cbd2fd41005dbc332fa2d97f5291733b75b14ff2"></div>
  <select name="lang" onchange="document.getElementById('lf').submit();">
    <option value="" selected="selected">Select Language ...&nbsp;</option>
  <option value="it">Italian - Italiano</option>
  <option value="es">Spanish - Español</option>
  <option value="en">English</option>
  <option value="fr">French - français</option>
  <option value="de">German - Deutsch</option>
  <option value="ja">Japanese - 日本語</option>

  </select>
</form>
</div>
</div>


                  </div>
                                </td>
              
            </tr>
          </tbody>
        </table>
      

      
  <div id="footer" class="round">
      <h3 class="offscreen">Footer</h3>
      
      
      <ul class="footer-nav">
          <li class="first">© 2010 Twitter</li>
          <li><a href="/about">About Us</a></li>
          <li><a href="/about/contact">Contact</a></li>
          <li><a href="http://blog.twitter.com">Blog</a></li>
          <li><a href="http://status.twitter.com">Status</a></li>
                      <li><a href="/about/resources">Resources</a></li>
                    <li><a href="http://dev.twitter.com/">API</a></li>
                      <li><a href="http://business.twitter.com/twitter101">Business</a></li>
                    <li><a href="http://support.twitter.com">Help</a></li>
          <li><a href="/jobs">Jobs</a></li>
          <li><a href="/tos">Terms</a></li>
          <li><a href="/privacy">Privacy</a></li>
      </ul>
  </div>



      <hr>

    </div>
    <div id="notifications"></div>
</body></html>
