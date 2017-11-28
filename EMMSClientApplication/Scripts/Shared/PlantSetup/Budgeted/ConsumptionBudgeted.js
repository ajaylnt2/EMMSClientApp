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
        $('#budgetedConsumptionYear').val("");
        return validateResult;
    } else {
        if (!yearValue.match(/^\d+/)) {
            alert("Please enter numeric characters only");
            validateResult = false;
            $('#budgetedConsumptionYear').val("");
            return validateResult;
        }
    }

    if (yearValue.length !== 4) {
        alert("Year format should be YYYY");
        validateResult = false;
        $('#budgetedConsumptionYear').val("");
        return validateResult;
    }
};
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
    if (charCode > 31 && (charCode < 48 || charCode > 57)  && charCode != 46) {
        
        return false;
    }
    return true;
};
var loadDisplayNames = function () {
    $.ajax({
        url: "../Configuration/getDisplayNames",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $("#idBudgetedWater").text('Water');
            $("#idBudgetedAir").text('Air');
            $("#idBudgetedGas").text('Gas');
            $("#idBudgetedElectricity").text('Electricity');
            $("#idBudgetedSteam").text('Steam');
            if (data.length !== 0) {
                for (var len = 0; len < data.length; len++) {
                    if (data[len].WageType === "Water") {
                        $("#idBudgetedWater").text(data[len].DisplayName);
                    } else {
                        if (data[len].WageType === "Air") {
                            $("#idBudgetedAir").text(data[len].DisplayName);
                        } else {
                            if (data[len].WageType === "Gas") {
                                $("#idBudgetedGas").text(data[len].DisplayName);
                            } else {
                                if (data[len].WageType === "Electricity") {
                                    $("#idBudgetedElectricity").text(data[len].DisplayName);
                                } else {
                                    if (data[len].WageType === "Steam") {
                                        $("#idBudgetedSteam").text(data[len].DisplayName);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        async: true
    });
    loadBudgetedGrids(1);
    loadExchangeRate();
}
/**
    loadProduction      :   function
    Description         :   This function will be used to load the production grid with layout
*/
var loadProduction = function () {
    var validateResult = validateYear($('#budgetedConsumptionYear').val());
    if (validateResult === false) {
        $('#budgetedConsumptionYear').focus();
        return validateResult;
    }
    $("#budgetedProductionTable").bootstrapTable("showLoading");
    $("#budgetedProductionTable").bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'DetailsName', title: 'Department', align: 'left' },
                    { field: 'Jan', title: 'Jan', sortable: true, align: 'left', editable: true },
                    { field: 'Feb', title: 'Feb', sortable: true, align: 'left', editable: true },
                    { field: 'Mar', title: 'Mar', sortable: true, align: 'left', editable: true },
                    { field: 'Apr', title: 'Apr', sortable: true, align: 'left', editable: true },
                    { field: 'May', title: 'May', sortable: true, align: 'left', editable: true },
                    { field: 'Jun', title: 'Jun', sortable: true, align: 'left', editable: true },
                    { field: 'Jul', title: 'Jul', sortable: true, align: 'left', editable: true },
                    { field: 'Aug', title: 'Aug', sortable: true, align: 'left', editable: true },
                    { field: 'Sep', title: 'Sep', sortable: true, align: 'left', editable: true },
                    { field: 'Oct', title: 'Oct', sortable: true, align: 'left', editable: true },
                    { field: 'Nov', title: 'Nov', sortable: true, align: 'left', editable: true },
                    { field: 'Dec', title: 'Dec', sortable: true, align: 'left', editable: true },
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'left' },
                    { field: 'UOMID', title: 'UOM ID', sortable: true, align: 'left', visibility: false }
        ]
    });
    $('#budgetedProductionTable').bootstrapTable("hideColumn", "UOMID");
    $.ajax({
        url: "../ConsuProdBudgeted/GetBudgetedProduction",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            year: $("#budgetedConsumptionYear").val()
        }),
        success: function (data) {
            $("#budgetedProductionTable").bootstrapTable("hideLoading");
            $('#budgetedProductionTable').bootstrapTable("load", data);
            $('#budgetedProductionTable').bootstrapTable("refresh");
        },
        async: false
    });
};

var loadExchangeRate = function() {
    $.ajax({
        url: "../ConsuProdBudgeted/GetUSDRate",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: {
            year: $("#budgetedConsumptionYear").val()
        },
        success: function (data) {
            $('#usdExchangeRate').val(data);
        },
        async: true
    });
};

/**
    loadsolidWasteBudgetedGrid      :   function
    Description                     :   This function is used to load the solidwaste details for the budgeted year. 
                                        It will generate the layout also
*/
var loadsolidWasteBudgetedGrid = function () {
    var validateResult = validateYear($('#budgetedConsumptionYear').val());
    if (validateResult === false) {
        $('#budgetedConsumptionYear').focus();
        return validateResult;
    }
    $("#budgetedSolidWasteTotalTable").bootstrapTable({
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
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' }
        ]
    });
    $("#budgetedSolidWasteCostTable").bootstrapTable({
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
                    { field: 'UOM', title: 'Currency', sortable: true, align: 'center' }
        ]
    });
    $("#budgetedSolidWasteTotalTable").bootstrapTable("showLoading");
    $("#budgetedSolidWasteCostTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../ConsuProdBudgeted/GetSolidWasteBudgted",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            year: $("#budgetedConsumptionYear").val()
        }),
        success: function (data) {
            $('#budgetedSolidWasteTotalTable').bootstrapTable("load", data.solidwaste);
            $('#budgetedSolidWasteCostTable').bootstrapTable("load", data.solidwastecost);
            $("#budgetedSolidWasteTotalTable").bootstrapTable("hideLoading");
            $("#budgetedSolidWasteCostTable").bootstrapTable("hideLoading");
            $('#budgetedSolidWasteTotalTable').bootstrapTable("refresh");
            $('#budgetedSolidWasteCostTable').bootstrapTable("refresh");
        },
        async: false
    });

};

/**
    loadBudgetedGrids    :   function
    Description          :   This function is used to load the grid with the values based on the ajax request to backend
    Parameter            :   Parameter will helps to fetch which of the wage data
                             1. Water, 2. Air, 3. Gas, 4. Electricity, 5. Steam
*/
var loadBudgetedGrids = function (id) {
    var validateResult = validateYear($('#budgetedConsumptionYear').val());
    if (validateResult === false) {
        $('#budgetedConsumptionYear').focus();
        return validateResult;
    }
    generateGrid(id);
    $.ajax({
        url: "../ConsuProdBudgeted/GetBudgetedConsumtion",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            year: $("#budgetedConsumptionYear").val(),
            wagesId: id
        }),
        success: function (budgetedData) {
            switch (id) {
                case 1:
                    $('#budgetedwaterConsumptionTable').bootstrapTable("load", budgetedData.Budgetedconsumlist);
                    $('#budgetedwaterCostTable').bootstrapTable("load", budgetedData.Budgetedcostlist);
                    $('#budgetedwaterConsumptionTable').bootstrapTable("hideLoading");
                    $('#budgetedwaterCostTable').bootstrapTable("hideLoading");
                    $('#budgetedwaterConsumptionTable').bootstrapTable("refresh");
                    $('#budgetedwaterCostTable').bootstrapTable("refresh");
                    break;
                case 2:
                    $('#budgetedairConsumptionTable').bootstrapTable("load", budgetedData.Budgetedconsumlist);
                    $('#budgetedairCostTable').bootstrapTable("load", budgetedData.Budgetedcostlist);
                    $('#budgetedairConsumptionTable').bootstrapTable("hideLoading");
                    $('#budgetedairCostTable').bootstrapTable("hideLoading");
                    $('#budgetedairConsumptionTable').bootstrapTable("refresh");
                    $('#budgetedairCostTable').bootstrapTable("refresh");
                    break;
                case 3:
                    $('#budgetedgasConsumptionTable').bootstrapTable("load", budgetedData.Budgetedconsumlist);
                    $('#budgetedgasCostTable').bootstrapTable("load", budgetedData.Budgetedcostlist);
                    $('#budgetedgasConsumptionTable').bootstrapTable("hideLoading");
                    $('#budgetedgasCostTable').bootstrapTable("hideLoading");
                    $('#budgetedgasConsumptionTable').bootstrapTable("refresh");
                    $('#budgetedgasCostTable').bootstrapTable("refresh");
                    break;
                case 4:
                    $('#budgetedelectricityConsumptionTable').bootstrapTable("load", budgetedData.Budgetedconsumlist);
                    $('#budgetedelectricityCostTable').bootstrapTable("load", budgetedData.Budgetedcostlist);
                    $('#budgetedelectricityConsumptionTable').bootstrapTable("hideLoading");
                    $('#budgetedelectricityCostTable').bootstrapTable("hideLoading");
                    $('#budgetedelectricityConsumptionTable').bootstrapTable("refresh");
                    $('#budgetedelectricityCostTable').bootstrapTable("refresh");
                    break;
                case 5:
                    $('#budgetedsteamConsumptionTable').bootstrapTable("load", budgetedData.Budgetedconsumlist);
                    $('#budgetedsteamCostTable').bootstrapTable("load", budgetedData.Budgetedcostlist);
                    $('#budgetedsteamConsumptionTable').bootstrapTable("hideLoading");
                    $('#budgetedsteamCostTable').bootstrapTable("hideLoading");
                    $('#budgetedsteamConsumptionTable').bootstrapTable("refresh");
                    $('#budgetedsteamCostTable').bootstrapTable("refresh");
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
    var consumptionTable = "";
    var costTable = "";
    switch (id) {
        case 1:
            consumptionTable = "budgetedwaterConsumptionTable";
            costTable = "budgetedwaterCostTable";
            break;
        case 2:
            consumptionTable = "budgetedairConsumptionTable";
            costTable = "budgetedairCostTable";
            break;
        case 3:
            consumptionTable = "budgetedgasConsumptionTable";
            costTable = "budgetedgasCostTable";
            break;
        case 4:
            consumptionTable = "budgetedelectricityConsumptionTable";
            costTable = "budgetedelectricityCostTable";
            break;
        case 5:
            consumptionTable = "budgetedsteamConsumptionTable";
            costTable = "budgetedsteamCostTable";
            break;
    }
    $("#" + consumptionTable).bootstrapTable({
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
                    { field: 'UOM', title: 'UOM', sortable: true, align: 'center' }
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
                    { field: 'UOM', title: 'Currency', sortable: true, align: 'center' }
        ]
    });
    $("#" + consumptionTable).bootstrapTable("hideColumn", "DetailsId");
    $("#" + costTable).bootstrapTable("hideColumn", "DetailsId");
    $("#" + consumptionTable).bootstrapTable("showLoading");
    $("#" + costTable).bootstrapTable("showLoading");

};

/**
     saveBudgetedProduction   :   function
     Description              :   This function will be used to save all the production details to 
                                  the budgeted table
*/
var saveBudgetedProduction = function () {
    var validateResult = validateYear($('#budgetedConsumptionYear').val());
    if (validateResult === false) {
        $('#budgetedConsumptionYear').focus();
        return validateResult;
    }
    $.ajax({
        url: "../ConsuProdBudgeted/AddProductionBudgeted",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            production: $('#budgetedProductionTable').bootstrapTable('getData'),
            year: $('#budgetedConsumptionYear').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                loadProduction();
            } else {
                alert("Error in saving the details");
            }

        },
        error: function () {
            alert("Error occurred in Saving the details");
        },
        async: false
    });
};

/**
     saveBudgetedDetails      :   function
     Description              :   This function will be used to save all the wages details to 
                                  the budgeted tables
     Parameter                :   Parameter will be used to identify which wage values to be saved
                                  1. Water, 2. Air, 3. Gas, 4. Electricity, 5. Steam
*/
var saveBudgetedDetails = function (id) {
    var validateResult = validateYear($('#budgetedConsumptionYear').val());
    if (validateResult === false) {
        $('#budgetedConsumptionYear').focus();
        return validateResult;
    }
    if (($('#usdExchangeRate').val() === 0) || ($('#usdExchangeRate').val() === "")) {
        alert("Please enter Exchange Rate for current year");
        return false;
    }
    var consumpArr = [];
    var costArr = [];
    switch (id) {
        case 1:
            consumpArr = $('#budgetedwaterConsumptionTable').bootstrapTable('getData');
            costArr = $('#budgetedwaterCostTable').bootstrapTable('getData');
            break;
        case 2:
            consumpArr = $('#budgetedairConsumptionTable').bootstrapTable('getData');
            costArr = $('#budgetedairCostTable').bootstrapTable('getData');
            break;
        case 3:
            consumpArr = $('#budgetedgasConsumptionTable').bootstrapTable('getData');
            costArr = $('#budgetedgasCostTable').bootstrapTable('getData');
            break;
        case 4:
            consumpArr = $('#budgetedelectricityConsumptionTable').bootstrapTable('getData');
            costArr = $('#budgetedelectricityCostTable').bootstrapTable('getData');
            break;
        case 5:
            consumpArr = $('#budgetedsteamConsumptionTable').bootstrapTable('getData');
            costArr = $('#budgetedsteamCostTable').bootstrapTable('getData');
            break;
    }
    $.ajax({
        url: "../ConsuProdBudgeted/AddBudgetedConsumtion",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            Consumption: consumpArr,
            Cost: costArr,
            year: $('#budgetedConsumptionYear').val(),
            wages: id
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                switch (id) {
                    case 1:
                        loadBudgetedGrids(1);
                        break;
                    case 2:
                        loadBudgetedGrids(2);
                        break;
                    case 3:
                        loadBudgetedGrids(3);
                        break;
                    case 4:
                        loadBudgetedGrids(4);
                        break;
                    case 5:
                        loadBudgetedGrids(5);
                        break;
                }
            } else {
                alert("Error in saving the details.");
            }

        },
        error: function () {
            alert("Error occurred in Saving the details");
        },
        async: false
    });
};

/**
     saveBudgetedSoildWate    :   function
     Description              :   This function will be used to save all the solidwaste details to 
                                  the budgeted table
*/
var saveBudgetedSoildWate = function () {
    var validateResult = validateYear($('#budgetedConsumptionYear').val());
    if (validateResult === false) {
        $('#budgetedConsumptionYear').focus();
        return validateResult;
    }
    $.ajax({
        url: "../ConsuProdBudgeted/AddBudgetedSolidwaste",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            Consumption: $('#budgetedSolidWasteTotalTable').bootstrapTable("getData"),
            Cost: $('#budgetedSolidWasteCostTable').bootstrapTable("getData"),
            year: $('#budgetedConsumptionYear').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                loadsolidWasteBudgetedGrid();
            } else {
                alert("Error in saving the details");
            }
        },
        error: function () {
            alert("Error occurred in Saving the details");
        },
        async: false
    });
};

/**
     saveUSDRate          :   function
     Description          :   This function will be used to save the USD exchange rate
*/
var saveUSDRate = function () {
    var value = $('#usdExchangeRate').val();
    if (value == "")
    {
        alert("Please enter valid number");
        $('#usdExchangeRate').val(0);
        return false;
    }
    if (value.length >20) {
        alert("USD value should not be more than 20 characters");
        return false;
    }
    if (value <= 0) {
        alert("Value should be greater than 0");
        return false;
    }
       
    $.ajax({
        url: "../ConsuProdBudgeted/AddUSDRate",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            rate: $('#usdExchangeRate').val(),
            year: $('#budgetedConsumptionYear').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
            } else {
                alert("Error in saving the details");
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
            loadBudgetedGrids(1);
            break;
        case "Air":
            loadBudgetedGrids(2);
            break;
        case "Gas":
            loadBudgetedGrids(3);
            break;
        case "Electricity":
            loadBudgetedGrids(4);
            break;
        case "Steam":
            loadBudgetedGrids(5);
            break;
        case "Production":
            loadProduction();
            break;
        case "Solidwase":
            loadsolidWasteBudgetedGrid();
            break;
    }
    loadExchangeRate();
};

