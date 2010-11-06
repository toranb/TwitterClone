function toggleFollow() {
    $.ajax({
        type: "POST",
        url: "http://localhost:50862/User/ToggleFollowing",
        data: {},
        dataType: "html",
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(XMLHttpRequest.responseText);
        },
        success: function(xhtml) {
            if (isfollowz) {
                var lnk = "<div class='button profile-follow-button' id='profilefollowbuttonz' data-user-id='13209352'><span class='plus'></span><strong> Follow</strong></div>";
                isfollowz = false;
            } else {
            var lnk = "<a href='#' class='button profile-unfollow-link' data-user-id='13209352'><span class='you-follow'></span><em class='wrapper'><b>Following</b><b class='unfollow'>Unfollow</b></em></a>";
                isfollowz = true;
            }

            $('div#followstatez').html('');
            $('div#followstatez').html(lnk);
        }
    });
}
function submitPost(obj) {
    var body = $('textarea#xxxr').val();
    var publishdate = generateTimeStamp();
    $("img#ajaxspinner").show();

    $.ajax({
        type: "POST",
        url: "http://localhost:50862/Post/AddPost",
        data: { body: body, publishdate: publishdate },
        dataType: "html",
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(XMLHttpRequest.responseText);
        },
        success: function(xhtml) {
            var value = $('div#stritemz').html();
            $('div#stritemz').html('');
            $('div#stritemz').html(xhtml);
            $('div#stritemz').append(value);
            //clear the textarea
            $('textarea#xxxr').val('');
            $("img#ajaxspinner").hide();
        }
    });
}
function generateTimeStamp() {
    var d = new Date();
    var day = d.getDate();
    var month = d.getMonth();
    var year = d.getFullYear();

    var hour = d.getHours();
    var minute = d.getMinutes();
    var seconds = d.getSeconds();
    var ap = "";
    month++;

    if (hour < 12) {
        ap = "AM";
    }
    else {
        ap = "PM";
    }
    if (hour == 0) {
        hour = 12;
    }
    if (hour > 12) {
        hour = hour - 12;
    }

    return month + "/" + day + "/" + year + " " + hour + ":" + minute + ":" + seconds + " " + ap;
}
function showMenuz() {
    $(".profile-dropdown").attr("style", "display:block");
}
function swapStyles() {
}