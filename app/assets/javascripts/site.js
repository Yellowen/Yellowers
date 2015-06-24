$(function() {

    $('#namespaceHolder').text($("#namespace option:selected").text());
    $('#namespace').change(function() {
        $('#namespaceHolder').text($("#namespace option:selected").text());
    });
});
