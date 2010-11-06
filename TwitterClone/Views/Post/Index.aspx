<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TwitterClone.Entity.Post>>" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <meta charset="utf-8" />
    <title>Twitter Clone</title>
    <link rel="stylesheet" href="Content/clonestyles.css" type="text/css" media="screen" />
</head>
<body class="en user-style-twttr loading-body" style="background-image: url(Images/bg.png);
    background-attachment: fixed; background-color: #C0DEED; background-position: 0% 40px;
    background-repeat: no-repeat; color: #333;">
    <div id="doc">
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
                            <input value="" placeholder="Search" name="q" id="search-query" type="text" />
                            </form>
                            <div id="global-nav">
                                <ul>
                                    <li id="global-nav-home" class="active new"><a href="/">Home</a></li>
                                    <li id="global-nav-profile"><a href="/<%= Html.Encode(ViewData["handle"]) %>">Profile</a></li>
                                    <li id="global-nav-messages"><a href="/messages">Messages</a></li>
                                </ul>
                            </div>
                            <div id="sections">
                            </div>
                        </div>
                        <div class="active-links">
                            <div id="session" class="loggedin">
                                <a class="profile-links" href="#" onclick="showMenuz(); return false;"><span id="profile-image">
                                    <img src="Images/<%=Html.Encode(ViewData["handle"])%>.jpg" /></span>
                                </a><span id="screen-name" onclick="showMenuz(); return false;"><%=Html.Encode(ViewData["handle"])%> </span>
                                <ul class="profile-dropdown">
                                    <li><a href="/settings/account">Settings</a></li>
                                    <li><a href="http://support.twitter.com">Help</a></li>
                                    <li><a href="/#!/who_to_follow">Who to follow</a></li>
                                    <li><a href="/account/use_phx?setting=false&amp;format=html">Leave preview</a></li>
                                    <li><a href="/login/logout">Sign Out</a>
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
            <div id="page-container" style="display: block">
                <div class="main-content" style="min-height: 389px;">
                    <div class="home-header">
                        <div class="main-tweet-box">
                            <div class="tweet-box">
                                <div class="tweet-box-title">
                                    <h2>
                                        What's happening?</h2>
                                </div>
                                <div class="text-area twttr-editor">
                                    <textarea style="width: 482px; height: 36px;" id="xxxr" class="twitter-anywhere-tweet-box-editor"></textarea>
                                    <ul class="autocomplete-container" style="width: 498px; top: 98px; left: 20px;">
                                    </ul>
                                </div>
                                <div class="tweet-button-container">
                                    <span class="geo-control"><span class="crosshairs"></span><a class="show_geo_dialog"
                                        href="#"> Add your location</a> </span>
                                    <img src="/Images/spinner.gif" class="tweet-spinner" id="ajaxspinner" style="display: none;">
                                    <span class="tweet-counter">140</span> <a href="#" class="tweet-button button" onclick="submitPost(this); return false;">
                                        Tweet</a>
                                </div>
                            </div>
                        </div>
                        <ul class="stream-tabs">
                            <li class="stream-tab stream-tab-home active"><a class="tab-text" title="All you follow"
                                href="/">Timeline</a> </li>
                            <li class="stream-tab stream-tab-mentions"><a class="tab-text" title="All you follow"
                                href="/">@Mentions</a> </li>
                            <li class="stream-tab stream-tab-retweets dropdown-link"><a class="tab-text" href="#">
                                Retweets<i></i></a> </li>
                            <li class="stream-tab stream-tab-searches dropdown-link"><a class="tab-text" href="#">
                                Searches<i></i></a> </li>
                            <li class="stream-tab stream-tab-lists dropdown-link"><a class="tab-text" href="#">Lists<i></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="stream-manager">
                        <div>
                            <div class="stream-title">
                            </div>
                            <div>
                                <div class="stream">
                                    <div class="new-tweets-bar" style="display: none;">
                                    </div>
                                    <div class="stream-items" id="stritemz">
                                        <% foreach (var item in Model)
                                           { %>
                                        <div class="stream-item" data-item-id="29488673932" data-item-type="tweet" media="true">
                                            <div class="more">
                                            </div>
                                            <div class="stream-item-content tweet stream-tweet" data-tweet-id="29488673932" data-item-id="29488673932"
                                                data-screen-name="<%= Html.Encode(item.PostedBy.Handle) %>" data-user-id="1">
                                                <div class="tweet-dogear">
                                                </div>
                                                <div class="tweet-image">
                                                    <img height="48" width="48" src="Images/<%= Html.Encode(item.PostedBy.Handle) %>.jpg"
                                                        alt="<%= Html.Encode(item.PostedBy.FullName) %>" class="user-profile-link" data-user-id="16377511">
                                                </div>
                                                <div class="tweet-content">
                                                    <div class="tweet-row">
                                                        <span class="tweet-user-name"><a class="tweet-screen-name user-profile-link" data-user-id="16377511"
                                                            href="/User/Details/<%= Html.Encode(item.PostedBy.Handle) %>" title="<%= Html.Encode(item.PostedBy.FullName) %>"><%= Html.Encode(item.PostedBy.Handle) %></a> <span class="tweet-full-name">
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
                                                        <a href="/#!/<%= Html.Encode(item.PostedBy.Handle) %>/status/29488673932" class="tweet-timestamp" title="12:09 PM Nov 2nd">
                                                            <span class="_timestamp" data-time="1288717792000" data-long-form="true">submitted at <%= Html.Encode(item.PublishDate) %></span></a> <span class="tweet-actions" data-tweet-id="29488673932"><a href="#"
                                                                    class="favorite-action"><span><i></i><b>Favorite</b></span></a> <a href="#" class="retweet-action">
                                                                        <span><i></i><b>Retweet</b></span></a> <a href="#" class="reply-action" data-screen-name="<%= Html.Encode(item.PostedBy.Handle) %>">
                                                                            <span><i></i><b>Reply</b></span></a> </span>
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
                <div class="dashboard">
                    <div class="component">
                    </div>
                    <div class="component">
                        <div class="tweet-activity">
                            <div class="follower-request">
                            </div>
                            <h2>
                                <a href="/#!/<%= Html.Encode(ViewData["handle"]) %>" class="title-link">Your Tweets<span class="tweet-count user-stat-link">3,289</span></a></h2>
                        </div>
                    </div>
                    <div class="component">
                        <div class="your-activity following-activity">
                            <h2>
                                <a href="/#!/<%= Html.Encode(ViewData["handle"]) %>/following" class="title-link">Following<span class="user-stat-link">99</span></a>
                            </h2>
                            <h3>
                            </h3>
                            <ul class="inline-list">
                                <li class="user-thumb-list-member"><a href="/#!/mattjmorrison" class="user-profile-link"
                                    data-user-id="16570069">
                                    <img src="Images/default_profile_0_mini.png"
                                        height="24" width="24" title="mattjmorrison"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/concretesailor" class="user-profile-link"
                                    data-user-id="35489382">
                                    <img src="Images/default_profile_1_mini.png"
                                        height="24" width="24" title="concretesailor"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/Jeff_Mayer" class="user-profile-link"
                                    data-user-id="193780496">
                                    <img src="Images/default_profile_0_mini.png" height="24"
                                        width="24" title="Jeff_Mayer"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/Jacob_Ninja" class="user-profile-link"
                                    data-user-id="20628047">
                                    <img src="Images/default_profile_1_mini.png" height="24"
                                        width="24" title="Jacob_Ninja"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/yaserbuntu" class="user-profile-link"
                                    data-user-id="14198590">
                                    <img src="Images/default_profile_0_mini.png"
                                        height="24" width="24" title="yaserbuntu"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/jasonmead" class="user-profile-link"
                                    data-user-id="18214092">
                                    <img src="Images/default_profile_1_mini.png" height="24"
                                        width="24" title="jasonmead"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/dagda1" class="user-profile-link"
                                    data-user-id="12826902">
                                    <img src="Images/default_profile_0_mini.png"
                                        height="24" width="24" title="dagda1"></a> </li>
                            </ul>
                        </div>
                        <div class="your-activity new-followers-activity">
                            <h2>
                                <a href="/#!/<%= Html.Encode(ViewData["handle"]) %>/followers" class="title-link">Followers<span class="user-stat-link">226</span></a>
                            </h2>
                            <h3>
                            </h3>
                            <ul class="inline-list">
                                <li class="user-thumb-list-member"><a href="/#!/TheELsite" class="user-profile-link"
                                    data-user-id="15913951">
                                    <img src="Images/default_profile_1_mini.png"
                                        height="24" width="24" title="TheELsite"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/henriksen" class="user-profile-link"
                                    data-user-id="14109752">
                                    <img src="Images/default_profile_0_mini.png" height="24"
                                        width="24" title="henriksen"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/darrencauthon" class="user-profile-link"
                                    data-user-id="14392000">
                                    <img src="Images/default_profile_1_mini.png"
                                        height="24" width="24" title="darrencauthon"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/QCSMichael" class="user-profile-link"
                                    data-user-id="20715572">
                                    <img src="Images/default_profile_0_mini.png" height="24"
                                        width="24" title="QCSMichael"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/concretesailor" class="user-profile-link"
                                    data-user-id="35489382">
                                    <img src="Images/default_profile_1_mini.png"
                                        height="24" width="24" title="concretesailor"></a> </li>
                                <li class="user-thumb-list-member"><a href="/#!/Jacob_Ninja" class="user-profile-link"
                                    data-user-id="20628047">
                                    <img src="Images/default_profile_0_mini.png" height="24"
                                        width="24" title="Jacob_Ninja"></a> </li>
                            </ul>
                        </div>
                        <div class="your-activity favorites-activity">
                            <h2>
                                <a href="/#!/<%= Html.Encode(ViewData["handle"]) %>/favorites" class="title-link">Favorites<span class="user-stat-link">13</span></a>
                            </h2>
                            <div class="latest-favorite">
                                <div class="latest-favorite-inner" data-item-id="25299776223">
                                    <span class="tweet-user-name"><i></i><a class="tweet-screen-name user-profile-link"
                                        data-user-id="12826902" href="/#!/dagda1" title="dagda1">dagda1</a> </span>
                                    <div class="tweet-text">
                                        good security rails advice <a href="http://bit.ly/cEbkKw" target="_blank" rel="nofollow"
                                            class="twitter-timeline-link">http://bit.ly/cEbkKw</a>...</div>
                                </div>
                            </div>
                        </div>
                        <div class="your-activity lists-activity">
                            <h2>
                                <a href="/#!/<%= Html.Encode(ViewData["handle"]) %>/lists/memberships" class="title-link">Listed<span class="user-stat-link">11</span></a>
                            </h2>
                            <div class="recently-listed-in">
                                <i></i>Recently listed in:<ul class="recent-lists inline-list">
                                    <li class="recent-list-item"><a href="/#!/darrencauthon/developers" data-user-id="98893">
                                        developers</a>, </li>
                                    <li class="recent-list-item"><a href="/#!/mitchelsellers/dsm-people" data-user-id="1843728">
                                        DSM People</a>, </li>
                                    <li class="recent-list-item"><a href="/#!/DataArtist/general-dot-net-dev" data-user-id="10559150">
                                        General Dot.Net Dev</a>, </li>
                                    <li class="recent-list-item"><a href="/#!/gocards300/work" data-user-id="9282288">work</a>,
                                    </li>
                                    <li class="recent-list-item"><a href="/#!/JamesEggers/iowadevelopers" data-user-id="7985136">
                                        IowaDevelopers</a> </li>
                                </ul>
                            </div>
                        </div>
                        <hr class="component-spacer">
                    </div>
                    <div class="component">
                        <div class="trends-inner">
                            <h2>
                                Trends</h2>
                            <h3>
                                <span class="trend-location">Worldwide</span>&nbsp;·<span class="trend-toggle"><a
                                    href="#">change</a></span></h3>
                            <ul class="trends">
                                <li class="trend-item promoted-trend"><a href="/#!/search/%23Election" class="trend-link">
                                    #Election</a> <a href="/#!/search/%23Election" class="tweet-label promoted-label">Promoted</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/%23ivoted" class="trend-link">#ivoted</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/%23govote" class="trend-link">#govote</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/%23electionday" class="trend-link">#electionday</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/JaMarcus%20Russell" class="trend-link">JaMarcus
                                    Russell</a> </li>
                                <li class="trend-item "><a href="/#!/search/Sakineh" class="trend-link">Sakineh</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/Kanzleramt" class="trend-link">Kanzleramt</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/Yun%20Jae" class="trend-link">Yun Jae</a>
                                </li>
                                <li class="trend-item "><a href="/#!/search/ATG" class="trend-link">ATG</a> </li>
                                <li class="trend-item "><a href="/#!/search/Poseidon" class="trend-link">Poseidon</a>
                                </li>
                            </ul>
                        </div>
                        <hr class="component-spacer">
                    </div>
                    <div class="component">
                        <div class="user-rec-inner ">
                            <h2 class="user-rec-component">
                                Who to follow</h2>
                            <h3>
                                Suggestions for you · <a href="/#!/who_to_follow/suggestions">view all</a></h3>
                            <ul class="recommended-followers user-rec-component">
                                <li class="user-small-list-item " data-user-id="813286"><a href="/User/Details/bcarlso"
                                    class="user-profile-link user-thumb" data-user-id="813286">
                                    <img src="Images/bcarlso.jpg"
                                        alt="bcarlso"></a> <a class="dismiss" href="#" title="Hide">×</a>
                                    <div class="user-name-info">
                                        <a class="user-profile-link user-screen-name" href="/User/Details/bcarlso" data-user-id="813286">
                                            bcarlso</a> <span class="user-follow-state" data-user-id="813286">· <a href="#"
                                                class="user-follow-link follow-action" data-user-id="813286" null="">Follow</a>
                                            </span><span class="user-full-name">Brandon Carlson <span class="verified-icon-small"></span>
                                            </span>
                                    </div>
                                </li>
                                <li class="user-small-list-item " data-user-id="15013693"><a href="/User/Details/mattjmorrison"
                                    class="user-profile-link user-thumb" data-user-id="15013693">
                                    <img src="Images/mattjmorrison.jpg"
                                        alt="mattjmorrison"></a> <a class="dismiss" href="#" title="Hide">×</a>
                                    <div class="user-name-info">
                                        <a class="user-profile-link user-screen-name" href="/User/Details/mattjmorrison" data-user-id="15013693">
                                            mattjmorrison</a> <span class="user-follow-state" data-user-id="15013693">· <a href="#"
                                                class="user-follow-link follow-action" data-user-id="15013693" null="">Follow</a>
                                            </span><span class="user-full-name">Matthew Morrison </span>
                                    </div>
                                </li>
                                <li class="user-small-list-item " data-user-id="16144456"><a href="/User/Details/scotchnate"
                                    class="user-profile-link user-thumb" data-user-id="16144456">
                                    <img src="Images/scotchnate.jpg"
                                        alt="scotchnate"></a> <a class="dismiss" href="#" title="Hide">×</a>
                                    <div class="user-name-info">
                                        <a class="user-profile-link user-screen-name" href="/User/Details/scotchnate" data-user-id="16144456">
                                            scotchnate</a> <span class="user-follow-state" data-user-id="16144456">· <a href="#"
                                                class="user-follow-link follow-action" data-user-id="16144456" null="">Follow</a>
                                            </span><span class="user-full-name">Nate Buwalda </span>
                                    </div>
                                </li>
                            </ul>
                            <div class="user-rec-links">
                                <a href="#" class="refresh-suggestions">Refresh suggestions</a><br>
                                <a href="/#!/who_to_follow/interests">Browse interests</a> · <a href="/#!/who_to_follow/import">
                                    Find friends</a>
                            </div>
                        </div>
                        <hr class="component-spacer">
                    </div>
                    <div class="component">
                        <div class="definition">
                            <p class="promo">
                                <a href="http://tweetbeat.com/?twlink=1" class="definition" onclick="javascript: pageTracker._trackPageview('/definition/TweetBeat');">
                                    <strong>Tweet·beat</strong></a><em>n.</em> The best tweets about what’s happening
                                now</p>
                        </div>
                        <hr class="component-spacer">
                    </div>
                    <div class="component">
                        <div class="footer inline-list">
                            <!-- TODO: we might be removing some of these-->
                            <p>
                                <a href="/about">About</a> <span class="dot">·</span> <a href="http://support.twitter.com">
                                    Help</a> <span class="dot">·</span> <a href="http://blog.twitter.com">Blog</a>
                                <span class="dot">·</span> <a href="http://status.twitter.com">Status</a> <span class="dot">
                                    ·</span> <a href="/jobs">Jobs</a> <span class="dot">·</span> <a href="/tos">Terms</a>
                                <span class="dot">·</span> <a href="/privacy">Privacy</a> <span class="dot">·</span>
                                <a href="#" id="keyboard-shortcut-trigger">Shortcuts</a>
                            </p>
                            <p>
                                <a href="http://business.twitter.com/">Businesses</a> <span class="dot">·</span>
                                <a href="http://media.twitter.com">Media</a> <span class="dot">·</span> <a href="http://dev.twitter.com">
                                    Developers</a> <span class="dot">·</span> <a href="/about/resources">Resources</a>
                                <span class="dot">·</span> © 2010 Twitter
                            </p>
                        </div>
                        <hr class="component-spacer">
                    </div>
                </div>
                <div class="details-pane-outer">
                    <div class="details-pane-shell">
                        <div class="details-pane">
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
