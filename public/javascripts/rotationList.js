/**
 * Created by AntDy11 on 4/30/2016.
 */
$(function () {
    var displayRotationList = function () {
        "use strict";
        $.getJSON('/rotationList', function (data) {
            var plan = [];
            $.each(data, function (key, val) {
                rotationList.push(escapeHtml(val) + '<button data-id="'+escapeHtml(key)+'"> Delete </button>');
            });
            $("#rotationList").html(plan.join("<br/>"));
            $("#rotationList button").click(deleteRotationList);
        });

    };

    var deleteRotationList = function() {
        var id = $(this).data('rotationNum');
        $.ajax('/rotationList/' + rotationNum, {'method':'DELETE'}).then(displayRotationList);
    };
});