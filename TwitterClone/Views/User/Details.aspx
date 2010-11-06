<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<TwitterClone.Entity.User>" %>

<!DOCTYPE html>
<html lang="en" class=" js">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <meta charset="utf-8">
    <title><%= Html.Encode(Model.FullName) %> (<%= Html.Encode(Model.Handle) %>) on Twitter</title>
    <link rel="stylesheet" href="../../Content/phoenixbundle.css" type="text/css" media="screen">

    <style id="user-style-bcarlso">
        body.user-style-bcarlso
        {
            background-color: #000000;
            color: #000000;
        }
        body.user-style-bcarlso a, body.user-style-bcarlso ul.stream-tabs li, body.user-style-bcarlso .component .promo strong, body.user-style-bcarlso .message-thread-preview:hover .message-count
        {
            color: #0000ff;
        }
        body.user-style-bcarlso .stream-item:hover .tweet-screen-name, body.user-style-bcarlso .stream-item:hover .tweet-timestamp, body.user-style-bcarlso .stream-item:hover .tweet-geo-text, body.user-style-bcarlso .stream-item:hover .user-profile-link, body.user-style-bcarlso div.latest-favorite .user-profile-link, body.user-style-bcarlso span.user-stat-link, body.user-style-bcarlso a.title-link:hover, body.user-style-bcarlso a.user-stats-count:hover span.user-stats-stat, body.user-style-bcarlso .user-small-list-item:hover a.user-screen-name, body.user-style-bcarlso .user-detailed-list-item:hover a.user-screen-name, body.user-style-bcarlso .tweet-activity:hover a.latest-tweet-timestamp
        {
            color: #0000ff !important;
        }
        body.user-style-bcarlso .hovered-stream-item, body.user-style-bcarlso .stream-item:hover, body.user-style-bcarlso .stream .new-tweets-bar, body.user-style-bcarlso .stream .new-tweets-bar:active
        {
            background-color: rgba(0,0,255,0.1);
            border-color: rgba(0,0,255,0.15);
        }
        body.user-style-bcarlso .stream .new-tweets-bar:hover
        {
            background-color: rgba(0,0,255,0.2);
            border-color: rgba(0,0,255,0.25);
        }
        body.user-style-bcarlso .user-small-list-item .user-screen-name, body.user-style-bcarlso .profile-screenname, body.user-style-bcarlso .title-link, body.user-style-bcarlso div.latest-tweet .latest-tweet-timestamp, body.user-style-bcarlso a.user-stats-count span.user-stats-stat, body.user-style-bcarlso .welcome-steps li .active a strong
        {
            color: #000000;
        }
        body.user-style-bcarlso .user-small-list-item .user-full-name, body.user-style-bcarlso span.trend-location, body.user-style-bcarlso .your-activity h3, body.user-style-bcarlso .trends-inner h3, body.user-style-bcarlso .user-rec-inner h3, body.user-style-bcarlso .recently-listed-in, body.user-style-bcarlso .latest-favorite-inner, body.user-style-bcarlso .latest-tweet, body.user-style-bcarlso .latest-tweet a.latest-tweet-timestamp, body.user-style-bcarlso .component .promo, body.user-style-bcarlso .component .promo a.definition, body.user-style-bcarlso .user-small-list-item .dismiss
        {
            color: rgba(0,0,0,0.6);
        }
        body.user-style-bcarlso #page-container, body.user-style-bcarlso .user-sidebar-color
        {
            /* IE7/8 */
            background: #F0F0F0; /* Modern browsers */
            background: rgba(240,240,240,0.9); /* IE6 */
            _background-color: #F0F0F0;
        }
        .profile-style-bcarlso a
        {
            color: #0000ff !important;
        }
        a:hover .geo-pin, body.user-style-bcarlso .stream-item:hover .geo-pin, .place_link span.place_icon
        {
            background-color: #0000ff;
        }
    </style>
    <noscript>
        <style id="user-style-bcarlso-bg-img">
            body.user-style-bcarlso
            {
            }
        </style>
    </noscript>
    <style id="user-style-bcarlso">
        body.user-style-bcarlso
        {
            background-position: left 40px;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-color: #6690A5;
            color: #000000;
        }
        body.user-style-bcarlso a, body.user-style-bcarlso ul.stream-tabs li, body.user-style-bcarlso .component .promo strong, body.user-style-bcarlso .message-thread-preview:hover .message-count
        {
            color: #31678A;
        }
        body.user-style-bcarlso .stream-item:hover .tweet-screen-name, body.user-style-bcarlso .stream-item:hover .tweet-timestamp, body.user-style-bcarlso .stream-item:hover .tweet-geo-text, body.user-style-bcarlso .stream-item:hover .user-profile-link, body.user-style-bcarlso div.latest-favorite .user-profile-link, body.user-style-bcarlso span.user-stat-link, body.user-style-bcarlso a.title-link:hover, body.user-style-bcarlso a.user-stats-count:hover span.user-stats-stat, body.user-style-bcarlso .user-small-list-item:hover a.user-screen-name, body.user-style-bcarlso .user-detailed-list-item:hover a.user-screen-name, body.user-style-bcarlso .tweet-activity:hover a.latest-tweet-timestamp
        {
            color: #31678A !important;
        }
        body.user-style-bcarlso .hovered-stream-item, body.user-style-bcarlso .stream-item:hover, body.user-style-bcarlso .stream .new-tweets-bar, body.user-style-bcarlso .stream .new-tweets-bar:active
        {
            background-color: rgba(49,103,138,0.1);
            border-color: rgba(49,103,138,0.15);
        }
        body.user-style-bcarlso .stream .new-tweets-bar:hover
        {
            background-color: rgba(49,103,138,0.2);
            border-color: rgba(49,103,138,0.25);
        }
        body.user-style-bcarlso .user-small-list-item .user-screen-name, body.user-style-bcarlso .profile-screenname, body.user-style-bcarlso .title-link, body.user-style-bcarlso div.latest-tweet .latest-tweet-timestamp, body.user-style-bcarlso a.user-stats-count span.user-stats-stat, body.user-style-bcarlso .welcome-steps li .active a strong
        {
            color: #000000;
        }
        body.user-style-bcarlso .user-small-list-item .user-full-name, body.user-style-bcarlso span.trend-location, body.user-style-bcarlso .your-activity h3, body.user-style-bcarlso .trends-inner h3, body.user-style-bcarlso .user-rec-inner h3, body.user-style-bcarlso .recently-listed-in, body.user-style-bcarlso .latest-favorite-inner, body.user-style-bcarlso .latest-tweet, body.user-style-bcarlso .latest-tweet a.latest-tweet-timestamp, body.user-style-bcarlso .component .promo, body.user-style-bcarlso .component .promo a.definition, body.user-style-bcarlso .user-small-list-item .dismiss
        {
            color: rgba(0,0,0,0.6);
            background-image: url(http://localhost:50862/Images/bg.png);
        }
        body.user-style-bcarlso #page-container, body.user-style-bcarlso .user-sidebar-color
        {
            /* IE7/8 */
            background: #7FB9CD; /* Modern browsers */
            background: rgba(127,185,205,0.9); /* IE6 */
            _background-color: #7FB9CD;
        }
        .profile-style-bcarlso a
        {
            color: #31678A !important;
        }
        a:hover .geo-pin, body.user-style-bcarlso .stream-item:hover .geo-pin, .place_link span.place_icon
        {
            background-color: #31678A;
        }
    </style>
    <noscript>
        <style id="user-style-bcarlso-bg-img">
            body.user-style-bcarlso
            {
                background-image: url(http://localhost:50862/Images/bg.png);
            }
        </style>
    </noscript>
</head>
<body class="en user-style-bcarlso" style="background-image: url(../../Images/bg.png); background-color: #C0DEED;">
    <div id="doc" class="route-profile">
        <div id="top-stuff">
            <div id="banners" style="clear: both;">
            </div>
            <div id="top-bar-outer">
                <div id="top-bar-bg">
                </div>
                <div id="top-bar">
                    <div class="top-bar-inside">
                        <div class="static-links">
                            <div id="logo">
                                <a href="/">Twitter</a>
                            </div>
                            <form id="search-form" action="/search" method="GET">
                            <span class="glass"><i></i></span>
                            <input value="" placeholder="Search" name="q" id="search-query" type="text">
                            </form>
                            <div id="global-nav">
                                <ul>
                                    <li id="global-nav-home"><a href="/">Home</a></li>
                                    <li id="global-nav-profile"><a href="/#!/toranb">Profile</a></li>
                                    <li id="global-nav-messages"><a href="/#!/messages">Messages</a></li>
                                </ul>
                            </div>
                            <div id="sections">
                            </div>
                        </div>
                        <div class="active-links">
                            <div id="session" class="loggedin">
                                <a class="profile-links" href="#"><span id="profile-image">
                                    <img src="../../Images/<%= Html.Encode(ViewData["handle"]) %>.jpg"></span>
                                </a><span id="screen-name"><%= Html.Encode(ViewData["handle"]) %> </span>
                                <ul class="profile-dropdown" style="display: none;">
                                    <li><a href="/settings/account">Settings</a></li>
                                    <li><a href="http://support.twitter.com">Help</a></li>
                                    <li><a href="/#!/who_to_follow">Who to follow</a></li>
                                    <li><a href="/account/use_phx?setting=false&amp;format=html">Leave preview</a></li>
                                    <li>
                                        <form class="signout-form" action="/logout" method="POST">
                                        <a class="signout-button" href="#">Sign out</a>
                                        <input type="hidden" value="cae3e8190f955bdcb25244fef43aefe2c9b8a641" name="authenticity_token">
                                        </form>
                                    </li>
                                </ul>
                            </div>
                            <span class="vr"></span><a id="new-tweet" title="New Tweet"><span>New Tweet</span></a>
                        </div>
                    </div>
                </div>
                <div id="message-drawer">
                </div>
            </div>
        </div>
        <div id="page-outer">
            <div id="page-container" class="profile-container" style="background: rgba(221, 238, 246, 0.898438);">
                <div>
                    <div class="main-content" style="min-height: 79px;">
                        <div class="profile-header">
                            <div class="profile-info clearfix">
                                <div class="profile-image-container">
                                    <a href="../../Images/<%= Html.Encode(Model.Handle) %>.jpg"
                                        class="profile-picture" target="_blank">
                                        <img src="../../Images/<%= Html.Encode(Model.Handle) %>.jpg"
                                            alt="<%= Html.Encode(Model.FullName) %>"></a>
                                </div>
                                <div class="profile-details">
                                    <div class="full-name">
                                        <h2>
                                            <%= Html.Encode(Model.FullName) %></h2>
                                    </div>
                                    <div class="screen-name-and-location">
                                        <span class="screen-name screen-name-bcarlso pill">@<%= Html.Encode(Model.Handle) %></span> iPhone: 41.642097,-93.508324</div>
                                    <div class="bio"><%= Html.Encode(Model.Bio) %></div>
                                    <div class="url">
                                        <a target="_blank" rel="me nofollow" href="<%= Html.Encode(Model.Url) %>"><%= Html.Encode(Model.Url) %></a>
                                    </div>
                                </div>
                            </div>
                            <div class="profile-actions-container">
                                <div class="component">
                                    <div class="profile-actions profile-actions-13209352 clearfix">
                                        <div class="buttons">
                                            <div class="button list-action-button" data-user-id="13209352">
                                                <span class="list"></span><span class="down-arrow"></span>
                                            </div>
                                            <div class="button profile-actions-button" data-user-id="13209352">
                                                <span class="gear"></span><span class="down-arrow"></span>
                                            </div>
                                        </div>
                                        <div class="follow-state" id="followstatez" onmouseover="swapStyles(); return false;"
                                            onclick="toggleFollow(); return false;">
                                            <script type="text/javascript">
                                                var isfollowz = false;
                                            </script>
                                            <% if (TempData["isFollowing"].ToString() == "False")
                                               { %>
                                            <div class="button profile-follow-button" id="profilefollowbuttonz" data-user-id="13209352">
                                                <span class="plus"></span><strong> Follow</strong>
                                            </div>
                                            <% } else { %>
                                            <a href='#' class='button profile-unfollow-link' data-user-id='" + userid + "'><span
                                                class='you-follow'></span><em class='wrapper'><b>Following</b><b class='unfollow'>Unfollow</b></em>
                                            </a>
                                            <script type="text/javascript">
                                                var isfollowz = true;
                                            </script>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <ul class="stream-tabs">
                                <li class="stream-tab stream-tab-tweets active"><a class="tab-text" href="/#!/<%= Html.Encode(Model.Handle) %>">
                                    Timeline</a> </li>
                                <li class="stream-tab stream-tab-favorites "><a class="tab-text" href="/#!/<%= Html.Encode(Model.Handle) %>/favorites">
                                    Favorites</a> </li>
                                <li class="stream-tab stream-tab-following "><a class="tab-text" href="/#!/<%= Html.Encode(Model.Handle) %>/following">
                                    Following</a> </li>
                                <li class="stream-tab stream-tab-followers "><a class="tab-text" href="/#!/<%= Html.Encode(Model.Handle) %>/followers">
                                    Followers</a> </li>
                                <li class="stream-tab stream-tab-lists dropdown-link ">
                                    <p class="tab-text">
                                        Lists<i></i></p>
                                </li>
                            </ul>
                        </div>
                        <div class="stream-manager">
                            <div>
                                <div class="stream-title">
                                </div>
                                <div>
                                    <div class="stream">
                                        <div class="stream-items" id="stritemz">
                                            <% foreach (var item in Model.Posts)
                                               { %>
                                            <div class="stream-item" data-item-id="29488673932" data-item-type="tweet" media="true">
                                                <div class="more">
                                                </div>
                                                <div class="stream-item-content tweet stream-tweet" data-tweet-id="29488673932" data-item-id="29488673932"
                                                    data-screen-name="<%= Html.Encode(item.PostedBy.Handle) %>" data-user-id="1">
                                                    <div class="tweet-dogear">
                                                    </div>
                                                    <div class="tweet-image">
                                                        <img height="48" width="48" src="../../Images/<%= Html.Encode(item.PostedBy.Handle) %>.jpg"
                                                            alt="<%= Html.Encode(item.PostedBy.FullName) %>" class="user-profile-link" data-user-id="16377511">
                                                    </div>
                                                    <div class="tweet-content">
                                                        <div class="tweet-row">
                                                            <span class="tweet-user-name"><a class="tweet-screen-name user-profile-link" data-user-id="16377511"
                                                                href="/User/Details/<%= Html.Encode(item.PostedBy.Handle) %>" title="<%= Html.Encode(item.PostedBy.FullName) %>">
                                                                <%= Html.Encode(item.PostedBy.Handle) %></a> <span class="tweet-full-name">
                                                                    <%= Html.Encode(item.PostedBy.FullName) %></span> </span>
                                                            <div class="tweet-corner">
                                                                <div class="tweet-meta">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tweet-row">
                                                            <div class="tweet-text">
                                                                <%= Html.Encode(item.Body) %>
                                                            </div>
                                                        </div>
                                                        <div class="tweet-row">
                                                        </div>
                                                        <div class="tweet-row">
                                                            <a href="/#!/<%= Html.Encode(item.PostedBy.Handle) %>/status/29488673932" class="tweet-timestamp"
                                                                title="12:09 PM Nov 2nd"><span class="_timestamp" data-time="1288717792000" data-long-form="true">
                                                                    submitted at
                                                                    <%= Html.Encode(item.PublishDate) %></span></a> <span class="tweet-actions" data-tweet-id="29488673932">
                                                                        <a href="#" class="favorite-action"><span><i></i><b>Favorite</b></span></a> <a href="#"
                                                                            class="retweet-action"><span><i></i><b>Retweet</b></span></a> <a href="#" class="reply-action"
                                                                                data-screen-name="<%= Html.Encode(item.PostedBy.Handle) %>"><span><i></i><b>Reply</b></span></a>
                                                                    </span>
                                                        </div>
                                                        <div class="tweet-row">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard profile-dashboard">
  <div class="component"></div><div class="component"><div class="dashboard-profile-annotations clearfix">
  <h2 class="dashboard-profile-title"><img src="../../Images/<%= Html.Encode(Model.Handle) %>.jpg" alt="<%= Html.Encode(Model.FullName) %>" width="24" class="profile-dashboard">About @<%= Html.Encode(Model.Handle) %></h2>
  </div>
<ul class="user-stats clearfix">
<li><a class="user-stats-count" href="/#!/<%= Html.Encode(Model.Handle) %>">360<span class="user-stats-stat">Tweets</span></a></li>
<li><a class="user-stats-count" href="/#!/<%= Html.Encode(Model.Handle) %>/following">74<span class="user-stats-stat">Following</span></a></li>
    <li><a class="user-stats-count" href="/#!/<%= Html.Encode(Model.Handle) %>/followers">31<span class="user-stats-stat">Followers</span></a></li>
    <li><a class="user-stats-count" href="/#!/<%= Html.Encode(Model.Handle) %>/lists/memberships">2<span class="user-stats-stat">Listed</span></a></li>
</ul>
<hr class="component-spacer" style="display: block;">
</div><div class="component"><div class="your-activity following-activity following15">
  <h2>
    <a href="/#!/<%= Html.Encode(Model.Handle) %>/following" class="title-link">Following<span class="user-stat-link">74</span></a>
  </h2>
  <h3></h3>
<ul class="inline-list">
  <li class="user-thumb-list-member">
  <a href="/#!/dan_dudley" class="user-profile-link" data-user-id="15700291"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="dan_dudley"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/PixelProspector" class="user-profile-link" data-user-id="58527755"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="PixelProspector"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/DevJams" class="user-profile-link" data-user-id="110199087"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="DevJams"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/cijug" class="user-profile-link" data-user-id="70729632"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="cijug"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/tedneward" class="user-profile-link" data-user-id="15224269"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="tedneward"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/matthewmccull" class="user-profile-link" data-user-id="14678973"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="matthewmccull"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/RBReich" class="user-profile-link" data-user-id="148529707"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="RBReich"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/mattjmorrison" class="user-profile-link" data-user-id="16570069"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="mattjmorrison"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/TychoBrahe" class="user-profile-link" data-user-id="14303746"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="TychoBrahe"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/cwgabriel" class="user-profile-link" data-user-id="14464369"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="cwgabriel"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/sheldoncooper" class="user-profile-link" data-user-id="16623217"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="sheldoncooper"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/peeweeherman" class="user-profile-link" data-user-id="41073372"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="peeweeherman"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/ConanOBrien" class="user-profile-link" data-user-id="115485051"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="ConanOBrien"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/TheRealStanLee" class="user-profile-link" data-user-id="65289126"><img src="../../Images/default_profile_1_mini.png" height="24" width="24" title="TheRealStanLee"></a>
</li>
  <li class="user-thumb-list-member">
  <a href="/#!/wikileaks" class="user-profile-link" data-user-id="16589206"><img src="../../Images/default_profile_0_mini.png" height="24" width="24" title="wikileaks"></a>
</li>
  </ul></div><hr class="component-spacer"></div><div class="component"></div><div class="component"><div class="footer inline-list">
  <!-- TODO: we might be removing some of these-->
  <p>
    <a href="/about">About</a>
    <span class="dot">·</span>
    <a href="http://support.twitter.com">Help</a>
    <span class="dot">·</span>
    <a href="http://blog.twitter.com">Blog</a>
    <span class="dot">·</span>
    <a href="http://status.twitter.com">Status</a>
    <span class="dot">·</span>
    <a href="/jobs">Jobs</a>
    <span class="dot">·</span>
    <a href="/tos">Terms</a>
    <span class="dot">·</span>
    <a href="/privacy">Privacy</a>
    <span class="dot">·</span>
    <a href="#" id="keyboard-shortcut-trigger">Shortcuts</a>
  </p>
  <p>
    <a href="http://business.twitter.com/">Businesses</a>
    <span class="dot">·</span>
    <a href="http://media.twitter.com">Media</a>
    <span class="dot">·</span>
    <a href="http://dev.twitter.com">Developers</a>
    <span class="dot">·</span>
    <a href="/about/resources">Resources</a>
    <span class="dot">·</span> © 2010 Twitter
  </p>
  </div><hr class="component-spacer"></div></div>
                    <div class="details-pane-outer" style="top: 60px;">
                        <div class="details-pane-shell">
                            <div class="details-pane" style="height: 71px; width: 490px;">
                                <div class="dashboard active">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="message-notifications">
        </div>
    </div>
    <script type="text/javascript" src='<%= ResolveClientUrl("~/Scripts/jquery-1.4.1.min.js") %>'></script>
    <script type="text/javascript" src='<%= ResolveClientUrl("~/Scripts/clone.js") %>'></script>
</body>
</html>
