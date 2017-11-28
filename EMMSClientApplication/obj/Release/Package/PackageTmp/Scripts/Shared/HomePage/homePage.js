var loadData = function () {
    $.ajax({
        url: "../Configuration/GetUpdatedCurrency",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        success: function (data) {
            $('#txtCurrency').text(data);
        },
        async: true
    });
    $.ajax({
        url: "../ConsuProdBudgeted/GetUSDRate",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: {
            year: $("#year").val()
        },
        success: function (data) {
            $('#txtExchangeRate').text(data);
        },
        async: true
    });
    $.ajax({
        url: "../AlarmEnabling/GetAlarmData",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#idAlarmTable').bootstrapTable("load", data);
            $("#idAlarmTable").bootstrapTable("hideLoading");
        },
        async: false
    });
    $.ajax({
        url: "../Configuration/GetBaseYear",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#txtBaseYear').text(data);
        },
        async: false
    });
};

