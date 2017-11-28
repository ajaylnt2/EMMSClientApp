var wageID = "0";
function loadGrid() {
    $.ajax({
        url: "../Configuration/GetWageMapping",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#idWagesTable').bootstrapTable("load", data);
            $("#idWagesTable").bootstrapTable("hideLoading");
        },
        async: true
    });
}

var loadUOM = function () {

};
function actionFormatter(value, row, index) {
    return [
        '<a class="edit ml10" href="javascript:void(0)" title="Edit">',
        '<i class="glyphicon glyphicon-edit"></i>',
        '</a>'
    ].join('');
}

function editEntry(row) {
    $('#idEnergyType').val(wageValue);
}
function saveEnergy() {
    if ($('#idEnergyType').val().length == 0)
    {
        alert("please enter energy type");
        return false;
    }
    if ($('#wageType').val() == "")
    {
        alert("please enter wagetype");
        return false;
    }
        
    if ($('#UOM').val() == "")
    {
        alert("Please enter UOM");
        return false;
    }
    $.ajax({
        url: "../Configuration/Configurations",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            energyName: $('#idEnergyType').val(),
            energyType: $('#wageType').val(),
            id:wageID,
            UOM: $('#UOM').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                $('#idEnergyType').val(0);
                $('#UOM').val(0);
                $('#UOM').val("");
                alert("Data Saved Successfully");
                wageID = "0";
            } else {
                if (data === 0 || data === "0") {
                    alert("Error in saving the data");
                } else {
                    if (data === 2 || data === "2") {
                        alert("UOM already registered");
                    }
                }
            }
        },
        async: false
    });
    loadGrid();
}

window.actionEvents = {
    'click .edit': function (e, value, row, index) {
        $('#idEnergyType').val(row.EnergyName); 
        $('#wageType').val(row.EnergyTypeID);
        $('#UOM').val(row.UOMID);
        wageID = row.ID;
    }
};

var loadUOMS = function () {
    $.ajax({
        url: "../Configuration/getProductionUom",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#ProductionUOM').val(data[0].ProductionID);
            $('#SolidWasteUOM').val(data[0].SolidID);
        },
        async: false
    });
};

var saveProdUOM = function () {
    if($("#ProductionUOM option:selected").text() === "Select UOM"
        || $("#ProductionUOM option:selected").text() === null || $("#ProductionUOM option:selected").text() === "") {
        alert("Please select UOM for Production");
        return false;
    }
    if ($("#SolidWasteUOM option:selected").text() === "Select UOM"
        || $("#SolidWasteUOM option:selected").text() === null || $("#SolidWasteUOM option:selected").text() === "") {
        alert("Please select UOM for Solid Waste");
        return false;
    }
    $.ajax({
        url: "../Configuration/SaveProdUOM",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            pID: $('#ProductionUOM').val(),
            sID: $('#SolidWasteUOM').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                loadUOMS();
            } else {
                alert("Error in saving the data");
            }
        },
        async: false
    });
};
