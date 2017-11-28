/**
     isNumber              :   function
     parameter (evt)       :   text field event
     Description           :   This function is used to check the entered value is text or number if it is text then
                               should not allow user to enter
     return true/false     :   validate the input parameter and returns true or false
*/
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46) {
        $('#idSolidWaste').val("");
        return false;
    }
    return true;
}

/**
    loadProduction      :   function
    Description         :   This function will be used to load the production grid with layout
*/
var loadProductionGrid = function () {
    if ($('#idDate').val() === "") {
        alert("Please Select Date");
        return false;
    }
    $("#DailyProductionTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../DailyProduction/GetDailyProduction",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            date: $('#idDate').val()
        }),
        success: function (data) {
            $('#DailyProductionTable').bootstrapTable("load", data);
            $("#DailyProductionTable").bootstrapTable("hideLoading");
        },
        async: true
    });
    loadSolidWastedailyGrid();
};

/**
    loadSolidWastedailyGrid      :   function
    Description                  :   This function will be used to load the solidwaste value
*/
var loadSolidWastedailyGrid = function () {
    $.ajax({
        url: "../DailyProduction/GetSolidwasteDaily",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            date: $('#idDate').val()
        }),
        success: function (data) {
            if (data.length === 0) {
                $('#idSolidWaste').val("0");
            } else {
                $('#idSolidWaste').val(data[0]);
            }
        },
        async: true
    });
};

/**
    saveDetails        :   function
    Description        :   This function will be used to save all the daily production details
*/
var saveDetails = function () {
    var value = $('#idSolidWaste').val();
    if (value == "") {
        alert(" Please enter valid number");
        $('#usdExchangeRate').val(0);
        return false;
    }
    $.ajax({
        url: "../DailyProduction/AddProductonDailydata",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            date: $('#idDate').val(),
            production: $("#DailyProductionTable").bootstrapTable("getData"),
            solidWaste: $('#idSolidWaste').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data saved successfully");
                loadProductionGrid();
            } else {
                alert("Error in saving the data");
            }
        },
        async: true
    });
}