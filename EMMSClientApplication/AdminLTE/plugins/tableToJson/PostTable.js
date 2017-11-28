$('#btnsave').click(function (e) {
    console.log("save button clicked");
    //debugger;
    var _griddata = $('#tbl').tableToJSON();
    var url = '@Url.Action("Save","PlantConfig")';
    $.ajax({
        url: url,
        type: 'POST',
        data: { gridData: _griddata }
    }).done(function (data) {
        if (data != "") {
            alert("uploaded successfullys");
        }
    });
});