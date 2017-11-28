var loadData = function () {
    getPlantNames();
    loadPlantTable();
    getUsers();
};

/**
getPlantNames   :   function
Description     :   This function will returns the list of plants registered by 
                    Gateway client. All these will load in plant list combobox
*/
var getPlantNames = function () {
    $.ajax({
        url: "../Configuration/GetPlantNames",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            for (var index = 0; index < data.length; index++) {
                $('#idMultiSelect').append('<option value="' + data[index].ID + '">' + data[index].Name + '</option>');
            }
        },
        async: true
    });
};

/**
getUsers        :   function
Description     :   This function will returns the list of users. All these will load in plant list combobox
*/
var getUsers = function () {
    $.ajax({
        url: "../Admin/GetEmailListAdmin",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            for (var index = 0; index < data.length; index++) {
                $('#idUserSelect').append('<option value="' + data[index].ID + '">' + data[index].Name + '</option>');
            }
        },
        async: true
    });
};
/**
loadPlantTable   :   function
Description      :   This function will returns the list of plants and also all the details
                     of all mapped users and also admin users. Data will load in the table
*/
var loadPlantTable = function () {
    $('#idPlantTable').bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'UserId', title: 'User ID', align: 'left' },
                    { field: 'EmailId', title: 'Email', align: 'left' },
                    { field: 'PlantName', title: 'Plant Name', align: 'left' },
                    { field: 'PlantId', title: 'Plant ID', align: 'left' },
                    { field: 'RecordId', title: 'Role', align: 'left' },
                    { field: 'Edit', title: 'Action', align: 'center', formatter: uomActionFormatter, events: 'actionEvents' }
        ]
    });
    $('#idPlantTable').bootstrapTable("hideColumn", "UserId");
    $('#idPlantTable').bootstrapTable("hideColumn", "PlantId");
    $('#idPlantTable').bootstrapTable("hideColumn", "RecordId");
    $("#idPlantTable").bootstrapTable("showLoading");
    var userData = [];
    $.ajax({
        url: "../Admin/GetUserMappingList",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $("#idPlantTable").bootstrapTable("hideLoading");
            $("#idPlantTable").bootstrapTable("load", data);
        },
        async: false
    });
};

/**
uomActionFormatter   :   function
Description          :   This function will return the delete button and will append to 
                         each row in the table
*/
var uomActionFormatter = function (value, row, index) {
    return [
        '<a class="remove ml10" href="javascript:void(0)" title="Delete">',
        '<i class="glyphicon glyphicon-remove"></i>',
        '</a>'
    ].join('');
};

window.actionEvents = {
    'click .remove': function (e, value, row, index) {
        removeUser(row.RecordId, row.PlantId);

    }
};

/**
removeUser           :   function
Description          :   This function will delete the selected user and will remove from the 
                         database.
*/
var removeUser = function (id, plantid) {

    $.ajax({
        url: "../Admin/DeleteUSerMapping",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: JSON.stringify({
            userid: id,
            plantId: plantid
        }),
        success: function (data) {

            if (data === 1 || data === "1") {
                alert("Data Deleted Successfully");
                loadPlantTable();
            }
            else if (data === 2 || data === "2") {
                alert("You cannot delete logged in plant");
            }
            else {
                alert("Error in deleting the data");
            }
        },
        async: false
    });
};

/**
saveDetails           :   function
Description           :   This function will save all the user details and also the map to the plants.
*/
var saveDetails = function () {
    if (($('#idUserSelect').val() === 0) || ($('#idUserSelect').val() === "0")) {
        alert("Please select Email Id");
        return false;
    }
    if (($('#idMultiSelect').val().length === 0)) {
        alert("please select plant");
        return false;
    }
    $.ajax({
        url: "../Admin/AddUserMapping",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            userId: $('#idUserSelect').val(),
            plantid: $('#idMultiSelect').val()
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Saved Successfully");
                $('#idUserSelect').val("0");
                $("#idMultiSelect").select2("val", "");
                loadPlantTable();
            } else {
                alert("Error in saving the data");
            }
        },
        async: false
    });

};