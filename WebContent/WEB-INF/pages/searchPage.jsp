<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Wedding Form</title>

  <meta name="robots" content="noindex, nofollow">
  <link rel="canonical" href="http://s.cssdeck.com/labs/css3-credit-card-form">

        
	<style>
/* === Basic reset === */
* { margin: 0; padding: 0; outline: none; box-sizing:border-box; }
a>img { border: none; }
header, footer, article, section, nav, aside { display: block; }

/* === General === */
body {
    font-family:Arial;
    font-size: 14px;
    background:#ddd;
}

.clearfix {
    clear:both;
}
/* === Credit Card === */
.credit-card {
    display:block;
    position:relative;
    width:93.75%;   /* This is 300px on 320px wide screen */
    max-width:500px;    /* Just to make sure that it doesnt get crazy on bg screens */
    min-width:300px;    /* And make sure that it contains at least some size */
    margin:30px auto;
    padding:20px;
    overflow:hidden;
    border-radius:6px;
    z-index:1;
}

.credit-card .inputs {
    list-style:none;
    margin-top:30px;
}

.credit-card .inputs li {
    margin-bottom:25px;
}

.credit-card .inputs li.last {
    margin-bottom:10px;
}

.credit-card .inputs li.expire {
    float:left;
    width:70%;
    margin-right:5%;
}

.credit-card .inputs li.expire input{
    float:left;
    width:35%;
}

.credit-card .inputs li.expire input.month{
    width:60%;
    margin-right:5%;
}

.credit-card .inputs li.cvc-code {
    float:left;
    width:25%;
}

.credit-card .inputs li.cvc-code input {
    width:100%;
}

.credit-card .watermark {
    position:absolute;
    z-index:10;
}

.credit-card form {
    position:relative;
    z-index:50;
}

.credit-card .logo {
    position:absolute;
    top:15px;
    right:20px;
    text-transform:uppercase;
    font-weight:bold;
}
/* === signup === */
.signup {
    color:#fff;
    box-shadow: 0px 0px 4px rgba(0,0,0,0.8), inset 0px 1px 3px rgba(255,255,255,0.3), inset 0px 0px 2px rgba(255,255,255,0.2);
}

.signup h2 {
    text-shadow:1px 1px 2px rgba(17,121,173,0.8);
}

.signup .logo {
    color:rgba(255,255,255,0.9);
    font-size:2em;
    font-style:italic;
    text-shadow:0px 0px 3px rgba(17,123,173,0.9);
}

.signup .logo:after {
    content:' ';
    position:absolute;
    left:0px;
    top:5px;
    width: 0;
    height: 0;
    border-top: 10px solid orange;
    border-left: 10px solid transparent;
}

.signup .watermark {
    bottom:-100px;
    left:-50px;
    color:rgba(255,255,255,0.06);
    font-size:20em;
    font-weight:bold;
    font-style:italic;
}
/* === Forms === */
label {
    display:block;
    margin-bottom:8px;
    color:rgba(255,255,255,0.6);
    text-transform:uppercase;
    font-size:1.1em;
    font-weight:bold;
    text-shadow:0px 1px 2px rgba(17,123,173,0.6);
}

input {
    display:block;
    padding:12px 10px;
    color:#999;
    font-size:1.2em;
    font-weight:bold;
    text-shadow:1px  1px 1px #fff;
    border:1px solid rgba(16,103,133,0.6);
    box-shadow:0px 0px 3px rgba(255,255,255,0.5), inset 0px 1px 4px rgba(0,0,0,0.2);
    border-radius:3px;
}

input.full {
    width:100%;
}


/* === Gradients === */
.gr-signup {
    background: #1db1cf; /* Old browsers */
    background: -moz-linear-gradient(top,  #1db1cf 0%, #1078ab 100%); /* FF3.6+ */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#1db1cf), color-stop(100%,#1078ab)); /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(top,  #1db1cf 0%,#1078ab 100%); /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(top,  #1db1cf 0%,#1078ab 100%); /* Opera 11.10+ */
    background: -ms-linear-gradient(top,  #1db1cf 0%,#1078ab 100%); /* IE10+ */
    background: linear-gradient(to bottom,  #1db1cf 0%,#1078ab 100%); /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1db1cf', endColorstr='#1078ab',GradientType=0 ); /* IE6-9 */
}
.gr-input {
    background: #d3d3d3; /* Old browsers */
    background: -moz-linear-gradient(top,  #d3d3d3 0%, #d9d9d9 38%, #e5e5e5 82%, #e7e7e7 100%); /* FF3.6+ */
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#d3d3d3), color-stop(38%,#d9d9d9), color-stop(82%,#e5e5e5), color-stop(100%,#e7e7e7)); /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(top,  #d3d3d3 0%,#d9d9d9 38%,#e5e5e5 82%,#e7e7e7 100%); /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(top,  #d3d3d3 0%,#d9d9d9 38%,#e5e5e5 82%,#e7e7e7 100%); /* Opera 11.10+ */
    background: -ms-linear-gradient(top,  #d3d3d3 0%,#d9d9d9 38%,#e5e5e5 82%,#e7e7e7 100%); /* IE10+ */
    background: linear-gradient(to bottom,  #d3d3d3 0%,#d9d9d9 38%,#e5e5e5 82%,#e7e7e7 100%); /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d3d3d3', endColorstr='#e7e7e7',GradientType=0 ); /* IE6-9 */
}	</style>

        
  <script>
    // We really want to disable
    window.open    = function() {};
    window.alert   = function() {};
    window.print   = function() {};
    window.prompt  = function() {};
    window.confirm = function() {};
  </script>

  <script>
  // #killanim is only being used in lab full view, maybe we could
  // use it everywhere :D
//if (window !== window.top && window.top.__stop_animations !== false) {
if (window !== window.top && location.hash !== '#dontkillanim') {
  window.is_webkit = /(webkit)[ \/]([\w.]+)/.exec(window.navigator.userAgent.toLowerCase())

  window.max_timer = window.is_webkit ? 2000 : 20

  // Let's try to prevent user's from OOM'ing esp. in FX and Op.
  // First, we need to stop CSS Animations, after say 5s ?
  //
  // Ok, so i tried 5s, but there are some problems. Firstly, Firefox
  // and opera behave same. little improvement only. So making it 3s now.
  //
  // Tutorial: https://developer.mozilla.org/en/CSS/CSS_animations
  // Help: http://www.sitepoint.com/css3-animation-javascript-event-handlers

  var pauseCSSAnimations = function() {

    var stopCSSAnimations = function() {
      // Get the Body Element
      var body = document.getElementsByTagName('body')[0];

      // We'll setup animationstart and animationiteration
      // events only. No need for animationend, cuz the
      // animation might be 30minutes long. animationiteration
      // cuz the animation might be .000002ms long.

      // addEventListener is perfectly supported in IE9.
      // and we don't care about IE8 and below. Let those
      // browsers die in a fire!

      body.addEventListener('webkitAnimationStart', stopAnimation, false);
      body.addEventListener('webkitAnimationIteration', stopAnimation, false);
      body.addEventListener('animationstart', stopAnimation, false);
      body.addEventListener('animationiteration', stopAnimation, false);
    };

    // e is the event object bro ;)
    var stopAnimation = function(e) {
      // e.srcElement? lulz...
      var target_el = e.target;
      var e_type = e.type.toLowerCase();
      
      if (e_type.indexOf('animationstart') !== -1 || e_type.indexOf('animationiteration') !== -1) {
        // LOL, we need to stop the animation now!
        // setInterval? lulz...

        setTimeout(false, function() {

          if (target_el.style.webkitAnimationPlayState !== 'paused')
            target_el.style.webkitAnimationPlayState = 'paused';

          if (target_el.style.MozAnimationPlayState !== 'paused')
            target_el.style.MozAnimationPlayState = 'paused';

          if (target_el.style.animationPlayState !== 'paused')
            target_el.style.animationPlayState = 'paused';

        }, window.max_timer);
      }
    }

    stopCSSAnimations();

  };

  // Next we need to pause/stop JS Animations

  var pauseJSAnimations = function() {

    window.setInterval = (function(oldSetInterval) {
      var registered = [];

      var f = function() {
        var id;
        // .. this!
        var $this = this;
        // setInterval accepts n no. of args
        var args = arguments;
        // What if someone used the awesome Function.bind() ?
        // I am sure we want the awesome apply() then ;)

        // this is my awesome brain usage. if first val is nonsense,
        // then don't register, heh.
        if (typeof args[0] !== 'function' && args[0] === false) {
          args = Array.prototype.slice.call(arguments);
          args = args.slice(1);

          id = oldSetInterval.apply($this, args)
        }
        else {
          id = oldSetInterval.apply($this, args);
          registered.push(id);
        }

        //console.log(registered);
        // Need to return the Interval ID
        return id;
      };

      f.clearAll = function() {
        var r;
        while (r = registered.pop()) {
          clearInterval(r);
        }
      };

      return f;
    })(window.setInterval);

    window.setTimeout = (function(oldSetTimeout) {
      var registered = [];

      var f = function() {
        var id;
        // .. this!
        var $this = this;
        // setInterval accepts n no. of args
        var args = arguments;
        // What if someone used the awesome Function.bind?
        // I am sure we want the awesome apply then ;)

        // this is my awesome brain usage. if first val is nonsense,
        // then don't register, heh.
        if (typeof args[0] !== 'function' && args[0] === false) {
          args = Array.prototype.slice.call(arguments);
          args = args.slice(1);

          id = oldSetTimeout.apply($this, args)
        }
        else {
          //console.log('lolzzzzz');
          id = oldSetTimeout.apply($this, args);
          registered.push(id);
        }

        //console.log(registered);
        // Need to return the Timeout ID
        return id;
      };

      f.clearAll = function() {
        var r;
        while (r = registered.pop()) {
          clearTimeout(r);
        }
      };

      return f;
    })(window.setTimeout);

    setTimeout(false, function() {
      setTimeout.clearAll();
      setInterval.clearAll();
    }, window.max_timer);


    // Time to Cancel rAF's Bro :)
    // You know things are harder when people are actually
    // using shims for rAF :/ So we need to test for vendors!

    window.__requestAnimFrame = window.requestAnimationFrame || undefined;
    window.__cancelAnimFrame = window.cancelAnimationFrame || undefined;
    window.__vendors = ['webkit', 'moz', 'ms', 'o'];
    window.__registered_rafs = [];

    // I can't think of a good way to cancel rAF's
    // So maybe lets use something similar to our other canceller's

    window.__requestFrame = function(cb) {
      if (!window.__requestAnimFrame) return;

      var req_id = window.__requestAnimFrame(cb);
      __registered_rafs.push(req_id);

      return req_id;
    };

    // Determine the proper VendorPrefixedFunctionName
    if (!window.__requestAnimFrame) {
      for (var x = 0; x < window.__vendors.length; x++) {
          if (!window.__requestAnimFrame) {
            window.__requestAnimFrame = window[window.__vendors[x]+'RequestAnimationFrame'];
            window[window.__vendors[x]+'RequestAnimationFrame'] = __requestFrame;
          }

          if(!window.__cancelAnimFrame) {
            // I came across webkitCancelAnimationFrame and webkitCancelRequestAnimationFrame
            // No idea about the difference, so maybe lets ||'fy it

            window.__cancelAnimFrame = window[window.__vendors[x]+'CancelAnimationFrame'] ||
                                        window[window.__vendors[x]+'CancelRequestAnimationFrame'];
          }
      }
    }

    // We have our proper vendor prefixed raf objects now :)
    // So let's go mad!!!
    // Let's Cancel our rAF's
    setTimeout(false, function() {
      if (!window.__requestAnimFrame) return;
      
      var r;
      while (r = window.__registered_rafs.pop()) {
        window.__cancelAnimFrame(r);
      }
    }, window.max_timer);

  };

  // Had to place outside pauseAnimations to work properly
  // else it was getting called afterwards code setTimeout/Interval executed
  if (window !== window.top)
    pauseJSAnimations();

  var __pauseAnimations = function() {
    if (window !== window.top)
      pauseCSSAnimations();
  };
}
else {
  __pauseAnimations = function() {};
}
  </script>
</head>
<body onload="__pauseAnimations();">
<section class="credit-card signup gr-signup">
        <div class="logo">hunt</div>
        <form:form method="post" action="search">

            <h2>Partner Search</h2>
            <ul class="inputs">
                <li class="expire last">
                <form:label path="country">Country</form:label>
                <form:select path="country" items="${countryList}" class="full gr-input"/>
                </li>
                <li class="expire last">
                <form:label path="religion">Religion</form:label>
                <form:select path="religion" items="${religionList}" class="full gr-input"/>
                </li>
                
                <table><tr><td width="50%"><label>Male</label><form:radiobutton path="sex" value="M"/></td>
                <td width="50%"><label>Female</label><form:radiobutton path="sex" value="F"/></td>
                </tr></table>
                
                <li class="expire last">
                <table>
                <label>Age</label>
                <tr>
                	<td><form:select path="from" items="${ageList}" class="full gr-input"/></td>
                	<td>To</td>
                	<td><form:select path="to" items="${ageList}" class="full gr-input"/></td>
                </tr></table>
				</li>
                <!-- 
                DOB
                 -->
				<li class ="expire last"><input type="submit" value="submit"></li>
				</form:form>
				<script language="JavaScript" type="text/javascript">
					function changeDate(i) {
						var e = document.getElementById('day');
						while (e.length > 0)
							e.remove(e.length - 1);
						var j = -1;
						if (i == "na")
							k = 0;
						else if (i == 2)
							k = 28;
						else if (i == 4 || i == 6 || i == 9 || i == 11)
							k = 30;
						else
							k = 31;
						while (j++ < k) {
							var s = document.createElement('option');
							var e = document.getElementById('day');
							if (j == 0) {
								s.text = "Day";
								s.value = "na";
								try {
									e.add(s, null);
								} catch (ex) {
									e.add(s);
								}
							} else {
								s.text = j;
								s.value = j;
								try {
									e.add(s, null);
								} catch (ex) {
									e.add(s);
								}
							}
						}
					}
					y = 2010;
					while (y-->1909) {
						var s = document.createElement('option');
						var e = document.getElementById('year');
						s.text = y;
						s.value = y;
						try {
							e.add(s, null);
						} catch (ex) {
							e.add(s);
						}
					}
				</script>

				<div class="clearfix"></div>
            </ul>
        <div class="watermark">signup</div>
    </section>
    
<script>
</script>



</body></html>