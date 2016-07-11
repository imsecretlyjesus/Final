/**
 * Created by AntDy11 on 4/30/2016.
 */
$(function() {
    //Make the accordion menu be able to collapse and expand
    $('.accordion').accordion({
        active: false,
        collapsible: true
    });
    //Make this specific accordion closed by default
    $('#exerciseAccordion').accordion({
        active: 0
    });
    //Make the add button add a line to current workout
    var add = function() {
        document.getElementById('currentData').innerHTML = "Hello";
    };
    //When you click on the add button execute the above function
    $('#addButton').click(function() {
        add();
    });
});