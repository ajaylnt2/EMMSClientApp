var loadPlants = function () {
    $.ajax({
        url: "../Auth/GetPlantListNames",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            for (var i = 0; i < data.length; i++) {
                $('#currencySelect').append('<option value="' + data[i].PlantID + '">' + data[i].PlantName + '</option>');
            }
        },
        async: true
    });
};

var redirectToPlant = function () {
    if (($('#currencySelect').val() === 0) || ($('#currencySelect').val() === "0") ) {
        alert("Please Select Plant");
        return false;
    }
    $.ajax({
        url: "../Auth/UpdateSelectedPalnt",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: JSON.stringify({
            plantID   : $('#currencySelect').val(),
            plantName: $("select[name='currencySelect'] option:selected").text()
        }),
        success: function (data) {
            var url = $("#RedirectTo").val();
            location.href = url;
        },
        async: false
    });
};