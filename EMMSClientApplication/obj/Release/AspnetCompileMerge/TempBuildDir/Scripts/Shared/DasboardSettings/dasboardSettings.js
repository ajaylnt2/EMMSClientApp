var nameId = 0;
var loadData = function () {
    loadDisplayGrid();
    loadCurrency();
    loadMappedCurrency();
    loadBaseYear();
};
var loadDisplayGrid = function () {
    $('#idDisplayTable').bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'ID', title: 'Id', align: 'left' },
                    { field: 'WageID', title: 'Wage ID', align: 'left' },
                    { field: 'WageType', title: 'Wage Name', align: 'left' },
                    { field: 'DisplayName', title: 'Alias Name', align: 'left' },
                    { field: 'edit', title: 'Action', align: 'center', formatter: uomActionFormatter, events: 'actionEvents' }
        ]
    });
    $('#idDisplayTable').bootstrapTable("hideColumn", "ID");
    $('#idDisplayTable').bootstrapTable("hideColumn", "WageID");
    $("#idDisplayTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../Configuration/getDisplayNames",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $("#idDisplayTable").bootstrapTable("hideLoading");
            $("#idDisplayTable").bootstrapTable("load", data);
        },
        async: true
    });
};
var uomActionFormatter = function (value, row, index) {
    return [
        '<a class="edit ml10" href="javascript:void(0)" title="Edit">',
        '<i class="glyphicon glyphicon-edit"></i>',
        '</a>&nbsp;',
        '<a class="remove ml10" href="javascript:void(0)" title="Delete">',
        '<i class="glyphicon glyphicon-remove"></i>',
        '</a>'
    ].join('');
};

window.actionEvents = {
    'click .edit': function (e, value, row, index) {
        nameId = row.ID;
        $('#idDisplayName').val(row.DisplayName);
        switch (row.WageType) {
            case "Water":
                $('#idWgesSelect').val("1");
                break;
            case "Air":
                $('#idWgesSelect').val("2");
                break;
            case "Gas":
                $('#idWgesSelect').val("3");
                break;
            case "Steam":
                $('#idWgesSelect').val("4");
                break;
            case "Electricity":
                $('#idWgesSelect').val("5");
                break;
        }
    },
    'click .remove': function (e, value, row, index) {
        removeRecord(row.ID);
    }
};

var removeRecord = function (rowId) {
    $.ajax({
        url: "../Configuration/deleteDisplayName",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: JSON.stringify({
            id: rowId
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Deleted Successfully");
                loadDisplayGrid();
                $('#idDisplayName').val("");
                $('#idWgesSelect').val("0");
            } else {
                alert("Error in deleting the data");
            }
            nameId = 0;
        },
        async: false
    });
};

var saveDisplayNames = function () {
    if (($('#idWgesSelect').val() === "0") || ($('#idWgesSelect').val() === 0)) {
        alert("Please select Wage type");
        return false;
    }
    if ($('#idDisplayName').val() === "") {
        alert("Please enter Display Name");
        return false;
    }
    $.ajax({
        url: "../Configuration/displayNames",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: JSON.stringify({
            wages: $('#idWgesSelect').val(),
            displayName: $('#idDisplayName').val(),
            id: nameId
        }),
        success: function (data) {
            switch (data) {
                case "0":
                    alert("Error in saving the data");
                    break;
                case "1":
                    alert("Data Saved Successfully");
                    loadDisplayGrid();
                    $('#idDisplayName').val("");
                    $('#idWgesSelect').val("0");
                    break;
                case "2":
                    alert("Wage type already exists");
                    break;
            }
            nameId = 0;
        },
        async: false
    });
};

/**
     loadCurrency    :   function()
     Description     :   This method is used to laod all the currency's with country names in the combo box
*/
var loadCurrency = function () {
    $.ajax({
        url: "../Configuration/GetCurrency",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $.each(data, function (key, val) {
                $('#currencySelect').append('<option value="' + val.CurrncyName + '">' + val.Country + '</option>');
            })
        },
        async: true
    });
};

var loadBaseYear = function () {
    $.ajax({
        url: "../Configuration/GetBaseYear",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#year').val(data);
        },
        async: false
    });
};

var loadMappedCurrency = function () {
    $.ajax({
        url: "../Configuration/GetUpdatedCurrency",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        success: function (data) {
            $('#currencySelect').val(data);
        },
        async: true
    });
};

/**
     saveCurrency    :   function()
     Description     :   This method is used to save the currency name based on the selection of the combobox value
*/

var saveCurrency = function () {
    if (($('#currencySelect').val() === "0") || ($('#currencySelect').val() === 0))
    {
        alert("Please select Currency");
        return false;
    }
    var confSave = confirm("Are you sure you want to save?");
    if (confSave) {
        $.ajax({
            url: "../Configuration/UpdateCurrency",
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            dataType: 'text',
            data: JSON.stringify({
                currency: $('#currencySelect').val()
            }),
            success: function (data) {
                if (data === 1 || data === "1") {
                    alert("Currency Saved Successfully");
                } else {
                    alert("Error in saving the data");
                }
            },
            async: false
        });
    } else {
        return false;
    }
};

/**
     SaveBaseyear    :   function()
     Description     :   This method is used to save the base year based on the selection of the combo box
*/
var SaveBaseyear = function () {
    if ($("#year option:selected").text() === "Select Years"
        || $("#year option:selected").text() === null || $("#year option:selected").text() === "") {
        alert("Please select Base Year");
        return false;
    }
    $.ajax({
        url: "../Configuration/SaveBaseYear",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            Year: $('#year').val(),
        }),
        success: function (data) {
            if (data === 1) {
                alert("Base Year Saved Successfully");
            }
            else {
                alert("Error in saving the data");
            }

        },
        async: false
    });
};