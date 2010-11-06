<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TwitterClone.Entity.Post>" %>

                                        <div class="stream-item" data-item-id="29488673932" data-item-type="tweet" media="true">
                                            <div class="more">
                                            </div>
                                            <div class="stream-item-content tweet stream-tweet" data-tweet-id="29488673932" data-item-id="29488673932"
                                                data-screen-name="<%= Html.Encode(Model.PostedBy.Handle) %>" data-user-id="1">
                                                <div class="tweet-dogear">
                                                </div>
                                                <div class="tweet-image">
                                                    <img height="48" width="48" src="Images/<%= Html.Encode(Model.PostedBy.Handle) %>.jpg"
                                                        alt="<%= Html.Encode(Model.PostedBy.FullName) %>" class="user-profile-link" data-user-id="16377511">
                                                </div>
                                                <div class="tweet-content">
                                                    <div class="tweet-row">
                                                        <span class="tweet-user-name"><a class="tweet-screen-name user-profile-link" data-user-id="16377511"
                                                            href="/User/<%= Html.Encode(Model.PostedBy.Handle) %>" title="<%= Html.Encode(Model.PostedBy.FullName) %>"><%= Html.Encode(Model.PostedBy.Handle) %></a> <span class="tweet-full-name">
                                                                <%= Html.Encode(Model.PostedBy.FullName) %></span> </span>
                                                        <div class="tweet-corner">
                                                            <div class="tweet-meta">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tweet-row">
                                                        <div class="tweet-text">
                                                            <%= Html.Encode(Model.Body) %>
                                                        </div>
                                                    </div>
                                                    <div class="tweet-row">
                                                    </div>
                                                    <div class="tweet-row">
                                                        <a href="/#!/<%= Html.Encode(Model.PostedBy.Handle) %>/status/29488673932" class="tweet-timestamp" title="12:09 PM Nov 2nd">
                                                            <span class="_timestamp" data-time="1288717792000" data-long-form="true">submitted at <%= Html.Encode(Model.PublishDate) %></span></a> <span class="tweet-actions" data-tweet-id="29488673932"><a href="#"
                                                                    class="favorite-action"><span><i></i><b>Favorite</b></span></a> <a href="#" class="retweet-action">
                                                                        <span><i></i><b>Retweet</b></span></a> <a href="#" class="reply-action" data-screen-name="<%= Html.Encode(Model.PostedBy.Handle) %>">
                                                                            <span><i></i><b>Reply</b></span></a> </span>
                                                    </div>
                                                    <div class="tweet-row">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
