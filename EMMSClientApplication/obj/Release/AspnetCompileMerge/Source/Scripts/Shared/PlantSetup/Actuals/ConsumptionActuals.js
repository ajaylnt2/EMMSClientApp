/**
         validateYear              :   function
         parameter (yearValue)     :   text field value
         Description               :   This function is used to load the production grid based upon the value present in the
                                       year text field
         return validateResult     :   validate the input parameter and returns true or false
    */
function validateYear(yearValue) {
    var validateResult = true;
    if (yearValue === "" || yearValue === null) {
        alert("Please Enter Year");
        validateResult = false;
        return validateResult;
    } else {
        if (!yearValue.match(/^\d+/)) {
            alert("Please enter numeric characters only");
            validateResult = false;
            return validateResult;
        }
    }

    if (yearValue.length !== 4) {
        alert("Year format should be YYYY");
        validateResult = false;
        return validateResult;
    }
}
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
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

/**
    loadProduction      :   function
    Description         :   This function will be used to load the production grid with layout
*/
var loadProduction = function () {
    var validateResult = validateYear($('#actualConsumptionYear').val());
    if (validateResult === false) {
        $('#actualConsumptionYear').focus();
        return validateResult;
    }
    $("#actualProductionTable").bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'DetailsName', title: 'Department', align: 'left' },
                    { field: 'Jan', title: 'Jan', sortable: true, align: 'center', editable: true },
                    { field: 'Feb', title: 'Feb', sortable: true, align: 'center', editable: true },
                    { field: 'Mar', title: 'Mar', sortable: true, align: 'center', editable: true },
                    { field: 'Apr', title: 'Apr', sortable: true, align: 'center', editable: true },
                    { field: 'May', title: 'May', sortable: true, align: 'center', editable: true },
                    { field: 'Jun', title: 'Jun', sortable: true, align: 'center', editable: true },
                    { field: 'Jul', title: 'Jul', sortable: true, align: 'center', editable: true },
                    { field: 'Aug', title: 'Aug', sortable: true, align: 'center', editable: true },
                    { field: 'Sep', title: 'Sep', sortable: true, align: 'center', editable: true },
                    { field: 'Oct', title: 'Oct', sortable: true, align: 'center', editable: true },
                    { field: 'Nov', title: 'Nov', sortable: true, align: 'center', editable: true },
                    { field: 'Dec', title: 'Dec', sortable: true, align: 'center', editable: true },
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' },
                    { field: 'UOMID', title: 'UOM ID', sortable: true, align: 'center', visibility:false }
        ]
    });
    $('#actualProductionTable').bootstrapTable("hideColumn", "UOMID");
    $('#actualProductionTable').bootstrapTable({
        formatLoadingMessage: function () {
            return '<i class="fa fa-spinner fa-spin fa-fw" style="margin: 4px 0 0 8px;font-size:2.5rem;"></i>';
        }
    });
    $("#actualProductionTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../PlantSetUP/GetProductionActual",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            year: $("#actualConsumptionYear").val()
        }),
        success: function (data) {
            $('#actualProductionTable').bootstrapTable("load", data);
            $("#actualProductionTable").bootstrapTable("hideLoading");
            $('#actualProductionTable').bootstrapTable("refresh");
        },
        async: false
    });
};

/**
    loadsolidWasteBudgetedGrid      :   function
    Description                     :   This function is used to load the solidwaste details for the budgeted year. 
                                        It will generate the layout also
*/
var loadSolidWasteGrid = function () {
    var validateResult = validateYear($('#actualConsumptionYear').val());
    if (validateResult === false) {
        $('#actualConsumptionYear').focus();
        return validateResult;
    }
    $("#actualSolidWasteTotalTable").bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'Jan', title: 'Jan', sortable: true, align: 'center', editable: true },
                    { field: 'Feb', title: 'Feb', sortable: true, align: 'center', editable: true },
                    { field: 'Mar', title: 'Mar', sortable: true, align: 'center', editable: true },
                    { field: 'Apr', title: 'Apr', sortable: true, align: 'center', editable: true },
                    { field: 'May', title: 'May', sortable: true, align: 'center', editable: true },
                    { field: 'Jun', title: 'Jun', sortable: true, align: 'center', editable: true },
                    { field: 'Jul', title: 'Jul', sortable: true, align: 'center', editable: true },
                    { field: 'Aug', title: 'Aug', sortable: true, align: 'center', editable: true },
                    { field: 'Sep', title: 'Sep', sortable: true, align: 'center', editable: true },
                    { field: 'Oct', title: 'Oct', sortable: true, align: 'center', editable: true },
                    { field: 'Nov', title: 'Nov', sortable: true, align: 'center', editable: true },
                    { field: 'Dec', title: 'Dec', sortable: true, align: 'center', editable: true },
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' },
                    { field: 'UOMID', title: 'UOM ID', sortable: true, align: 'center', visibility: false }
        ]
    });
    $("#actualSolidWasteCostTable").bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'Jan', title: 'Jan', sortable: true, align: 'center', editable: true },
                    { field: 'Feb', title: 'Feb', sortable: true, align: 'center', editable: true },
                    { field: 'Mar', title: 'Mar', sortable: true, align: 'center', editable: true },
                    { field: 'Apr', title: 'Apr', sortable: true, align: 'center', editable: true },
                    { field: 'May', title: 'May', sortable: true, align: 'center', editable: true },
                    { field: 'Jun', title: 'Jun', sortable: true, align: 'center', editable: true },
                    { field: 'Jul', title: 'Jul', sortable: true, align: 'center', editable: true },
                    { field: 'Aug', title: 'Aug', sortable: true, align: 'center', editable: true },
                    { field: 'Sep', title: 'Sep', sortable: true, align: 'center', editable: true },
                    { field: 'Oct', title: 'Oct', sortable: true, align: 'center', editable: true },
                    { field: 'Nov', title: 'Nov', sortable: true, align: 'center', editable: true },
                    { field: 'Dec', title: 'Dec', sortable: true, align: 'center', editable: true },
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' },
                    { field: 'UOMID', title: 'UOM ID', sortable: true, align: 'center', visibility: false }
        ]
    });
    $('#actualSolidWasteTotalTable').bootstrapTable("hideColumn", "UOMID");
    $('#actualSolidWasteCostTable').bootstrapTable("hideColumn", "UOMID");
    $("#actualSolidWasteTotalTable").bootstrapTable("showLoading");
    $("#actualSolidWasteCostTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../PlantSetUP/GetSolidWaste",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            year: $("#actualConsumptionYear").val()
        }),
        success: function (data) {
            $('#actualSolidWasteTotalTable').bootstrapTable("load", data.solidwaste);
            $('#actualSolidWasteCostTable').bootstrapTable("load", data.solidwastecost);
            $("#actualSolidWasteTotalTable").bootstrapTable("hideLoading");
            $("#actualSolidWasteCostTable").bootstrapTable("hideLoading");
            $('#actualSolidWasteTotalTable').bootstrapTable("refresh");
            $('#actualSolidWasteCostTable').bootstrapTable("refresh");
        },
        async: false
    });

};

/**
    loadGrids            :   function
    Description          :   This function is used to load the grid with the values based on the ajax request to backend
    Parameter            :   Parameter will helps to fetch which of the wage data
                             1. Water, 2. Air, 3. Gas, 4. Electricity, 5. Steam
*/
var loadGrids = function (id) {
    var validateResult = validateYear($('#actualConsumptionYear').val());
    if (validateResult === false) {
        $('#actualConsumptionYear').focus();
        return validateResult;
    }
    generateGrid(id);
    $.ajax({
        url: "../PlantSetUP/GetConsumptionActual",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            year: $("#actualConsumptionYear").val(),
            wagesId: id
        }),
        success: function (ConsumptionData) {
            switch (id) {
                case 1:
                    $('#waterConsumptionTable').bootstrapTable("load", ConsumptionData.consumptionTotal);
                    $('#waterCostTable').bootstrapTable("load", ConsumptionData.costActual);
                    $('#waterConsumptionTable').bootstrapTable("hideLoading");
                    $('#waterCostTable').bootstrapTable("hideLoading");
                    $('#waterConsumptionTable').bootstrapTable("refresh");
                    $('#waterCostTable').bootstrapTable("refresh");
                    break;
                case 2:
                    $('#airConsumptionTable').bootstrapTable("load", ConsumptionData.consumptionTotal);
                    $('#airCostTable').bootstrapTable("load", ConsumptionData.costActual);
                    $('#airConsumptionTable').bootstrapTable("hideLoading");
                    $('#airCostTable').bootstrapTable("hideLoading");
                    $('#airConsumptionTable').bootstrapTable("refresh");
                    $('#airCostTable').bootstrapTable("refresh");
                    break;
                case 3:
                    $('#gasConsumptionTable').bootstrapTable("load", ConsumptionData.consumptionTotal);
                    $('#gasCostTable').bootstrapTable("load", ConsumptionData.costActual);
                    $('#gasConsumptionTable').bootstrapTable("hideLoading");
                    $('#gasCostTable').bootstrapTable("hideLoading");
                    $('#gasConsumptionTable').bootstrapTable("refresh");
                    $('#gasCostTable').bootstrapTable("refresh");
                    break;
                case 4:
                    $('#electricityConsumptionTable').bootstrapTable("load", ConsumptionData.consumptionTotal);
                    $('#electricityCostTable').bootstrapTable("load", ConsumptionData.costActual);
                    $('#electricityConsumptionTable').bootstrapTable("hideLoading");
                    $('#electricityCostTable').bootstrapTable("hideLoading");
                    $('#electricityConsumptionTable').bootstrapTable("refresh");
                    $('#electricityCostTable').bootstrapTable("refresh");
                    break;
                case 5:
                    $('#steamConsumptionTable').bootstrapTable("load", ConsumptionData.consumptionTotal);
                    $('#steamCostTable').bootstrapTable("load", ConsumptionData.costActual);
                    $('#steamConsumptionTable').bootstrapTable("hideLoading");
                    $('#steamCostTable').bootstrapTable("hideLoading");
                    $('#steamConsumptionTable').bootstrapTable("refresh");
                    $('#steamCostTable').bootstrapTable("refresh");
                    break;
            }
        },
        async: false
    });
};

/**
    generateGrid    :  function
    Description     :  This function will helps to gerate the layout of all the wages related grid
                       with number of columns
    Parameter       :  The parameter will helps to gerate the layout of which grid
                       1. Water, 2. Air, 3. Gas, 4. Electricity, 5. Steam
*/
var generateGrid = function (id) {
    var consumptionTable = "waterConsumptionTable";
    var costTable = "waterCostTable";
    switch (id) {
        case 1:
            consumptionTable = "waterConsumptionTable";
            costTable = "waterCostTable";
            break;
        case 2:
            consumptionTable = "airConsumptionTable";
            costTable = "airCostTable";
            break;
        case 3:
            consumptionTable = "gasConsumptionTable";
            costTable = "gasCostTable";
            break;
        case 4:
            consumptionTable = "electricityConsumptionTable";
            costTable = "electricityCostTable";
            break;
        case 5:
            consumptionTable = "steamConsumptionTable";
            costTable = "steamCostTable";
            break;
    }
    $("#"+consumptionTable).bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'DetailsId', title: 'ID', align: 'left', visiblity: 'hidden' },
                    { field: 'DetailsName', title: 'Wages', align: 'left' },
                    { field: 'Jan', title: 'Jan', sortable: true, align: 'center', editable: true },
                    { field: 'Feb', title: 'Feb', sortable: true, align: 'center', editable: true },
                    { field: 'Mar', title: 'Mar', sortable: true, align: 'center', editable: true },
                    { field: 'Apr', title: 'Apr', sortable: true, align: 'center', editable: true },
                    { field: 'May', title: 'May', sortable: true, align: 'center', editable: true },
                    { field: 'Jun', title: 'Jun', sortable: true, align: 'center', editable: true },
                    { field: 'Jul', title: 'Jul', sortable: true, align: 'center', editable: true },
                    { field: 'Aug', title: 'Aug', sortable: true, align: 'center', editable: true },
                    { field: 'Sep', title: 'Sep', sortable: true, align: 'center', editable: true },
                    { field: 'Oct', title: 'Oct', sortable: true, align: 'center', editable: true },
                    { field: 'Nov', title: 'Nov', sortable: true, align: 'center', editable: true },
                    { field: 'Dec', title: 'Dec', sortable: true, align: 'center', editable: true },
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' },
                    { field: 'UOMID', title: 'UOM ID', sortable: true, align: 'center', visibility: false }
        ]
    });
    $("#" + costTable).bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'DetailsId', title: 'ID', align: 'left' },
                    { field: 'DetailsName', title: 'Wages', align: 'left' },
                    { field: 'Jan', title: 'Jan', sortable: true, align: 'center', editable: true },
                    { field: 'Feb', title: 'Feb', sortable: true, align: 'center', editable: true },
                    { field: 'Mar', title: 'Mar', sortable: true, align: 'center', editable: true },
                    { field: 'Apr', title: 'Apr', sortable: true, align: 'center', editable: true },
                    { field: 'May', title: 'May', sortable: true, align: 'center', editable: true },
                    { field: 'Jun', title: 'Jun', sortable: true, align: 'center', editable: true },
                    { field: 'Jul', title: 'Jul', sortable: true, align: 'center', editable: true },
                    { field: 'Aug', title: 'Aug', sortable: true, align: 'center', editable: true },
                    { field: 'Sep', title: 'Sep', sortable: true, align: 'center', editable: true },
                    { field: 'Oct', title: 'Oct', sortable: true, align: 'center', editable: true },
                    { field: 'Nov', title: 'Nov', sortable: true, align: 'center', editable: true },
                    { field: 'Dec', title: 'Dec', sortable: true, align: 'center', editable: true },
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' },
                    { field: 'UOMID', title: 'UOM ID', sortable: true, align: 'center', visibility: false }
        ]
    });
    $("#" + consumptionTable).bootstrapTable("hideColumn", "DetailsId");
    $("#" + costTable).bootstrapTable("hideColumn", "DetailsId");
    $("#" + consumptionTable).bootstrapTable("hideColumn", "UOMID");
    $("#" + costTable).bootstrapTable("hideColumn", "UOMID");
    $("#" + consumptionTable).bootstrapTable("showLoading");
    $("#" + costTable).bootstrapTable("showLoading");

};

/**
     saveActuals              :   function
     Description              :   This function will be used to save all the wages details to 
                                  the budgeted tables
     Parameter                :   Parameter will be used to identify which wage values to be saved
                                  1. Water, 2. Air, 3. Gas, 4. Electricity, 5. Steam
*/
var saveActuals = function (id) {
    var consumpArr = [];
    var costArr = [];
    switch (id) {
        case 1:
            consumpArr = $('#waterConsumptionTable').bootstrapTable('getData');
            costArr = $('#waterCostTable').bootstrapTable('getData');
            break;
        case 2:
            consumpArr = $('#airConsumptionTable').bootstrapTable('getData');
            costArr = $('#airCostTable').bootstrapTable('getData');
            break;
        case 3:
            consumpArr = $('#gasConsumptionTable').bootstrapTable('getData');
            costArr = $('#gasCostTable').bootstrapTable('getData');
            break;
        case 4:
            consumpArr = $('#electricityConsumptionTable').bootstrapTable('getData');
            costArr = $('#electricityCostTable').bootstrapTable('getData');
            break;
        case 5:
            consumpArr = $('#steamConsumptionTable').bootstrapTable('getData');
            costArr = $('#steamCostTable').bootstrapTable('getData');
            break;
    }
    $.ajax({
        url: "../PlantSetUP/AddConsumtionData",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            Consumption: consumpArr,
            Cost: costArr,
            year: $('#actualConsumptionYear').val(),
            wages: id
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                switch (id) {
                    case 1:
                        loadGrids(1);
                        break;
                    case 2:
                        loadGrids(2);
                        break;
                    case 3:
                        loadGrids(3);
                        break;
                    case 4:
                        loadGrids(4);
                        break;
                    case 5:
                        loadGrids(5);
                        break;
                }
            } else {
                alert("Error in saving the data");
            }

        },
        error: function () {
            alert("Error occurred in Saving the details");
        },
        async: false
    });
};

/**
     saveBudgetedProduction   :   function
     Description              :   This function will be used to save all the production details to 
                                  the actual table
*/
var saveProduction = function () {
    $.ajax({
        url: "../PlantSetUP/AddProductionActual",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            production: $('#actualProductionTable').bootstrapTable("getData"),
            year: $('#actualConsumptionYear').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                loadProduction();
            } else {
                alert("Error in saving the data");
            }
        },
        error: function () {
            alert("Error occurred in Saving the details");
        },
        async: false
    });
};


/**
     saveActuaSoildWate       :   function
     Description              :   This function will be used to save all the solidwaste details to 
                                  the actual table
*/
var saveActuaSoildWate = function () {
    $.ajax({
        url: "../PlantSetUP/AddactualSolidwasteData",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            Consumption: $('#actualSolidWasteTotalTable').bootstrapTable("getData"),
            Cost: $('#actualSolidWasteCostTable').bootstrapTable("getData"),
            year: $('#actualConsumptionYear').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                loadSolidWasteGrid();
            } else {
                alert("Error in saving the data");
            }
        },
        error: function () {
            alert("Error occurred in Saving the details");
        },
        async: false
    });
};

/**
     fetchDetails         :   function
     Description          :   This function will be move the cntrol to "Water" tab once if we click the "Fetch Details"
                              button.
*/
var fetchDetails = function () {
    var activeTab = $('.nav-tabs .active').text();
    switch (activeTab) {
        case "Water":
            loadGrids(1);
            break;
        case "Air":
            loadGrids(2);
            break;
        case "Gas":
            loadGrids(3);
            break;
        case "Electricity":
            loadGrids(4);
            break;
        case "Steam":
            loadGrids(5);
            break;
        case "Production":
            loadProduction();
            break;
        case "Solidwase":
            loadSolidWasteGrid();
            break;
    }
};

