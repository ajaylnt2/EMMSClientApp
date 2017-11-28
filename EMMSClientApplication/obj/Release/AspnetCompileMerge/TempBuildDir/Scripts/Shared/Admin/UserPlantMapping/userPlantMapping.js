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
loadPlantTable   :   function
Description      :   This function will returns the list of plants and also all the details
                     of all mapped users and also admin users. Data will load in the table
*/
var loadPlantTable = function () {
    $('#idPlantTable').bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'UserId', title: 'User ID', align: 'left' },
                    { field: 'PlantName', title: 'Plant Name', align: 'left' },
                    { field: 'plantId', title: 'Plant ID', align: 'left' },
                    { field: 'EmailId', title: 'Email', align: 'left' },
                    { field: 'RoleId', title: 'Role', align: 'left' },
                    { field: 'Edit', title: 'Action', align: 'center', formatter: uomActionFormatter, events: 'actionEvents' }
        ]
    });
    $('#idPlantTable').bootstrapTable("hideColumn", "UserId");
    $('#idPlantTable').bootstrapTable("hideColumn", "PlantName");
    $('#idPlantTable').bootstrapTable("hideColumn", "plantId");
    $('#idPlantTable').bootstrapTable("hideColumn", "RoleId");
    $("#idPlantTable").bootstrapTable("showLoading");
    var userData = [];
    $.ajax({
        url: "../Configuration/GetUserMappingList ",
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
        removeUser(row.UserId, row.PlantName);
    }
};

/**
removeUser           :   function
Description          :   This function will delete the selected user and will remove from the 
                         database.
*/
var removeUser = function (id, plantName) {
    $('#idMultiSelect').val([2, 6]);
    //$.ajax({
    //    url: "../Configuration/DeleteUSer",
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    dataType: 'text',
    //    data: JSON.stringify({
    //        userid     :   id,
    //        plantname  :   plantName
    //    }),
    //    success: function (data) {
    //        if (data === 1 || data === "1") {
    //            alert("Data Deleted Successfully");
    //            loadPlantTable();
    //        } else {
    //            alert("Error in deleting the data");
    //        }
    //    },
    //    async: false
    //});
};

/**
saveDetails           :   function
Description           :   This function will save all the user details and also the map to the plants.
*/
var saveDetails = function () {
    var val = 1;
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var regVal = regex.test($('#idEmail').val());
    if (!regVal) {
        alert("Please enter valid Email Id");
        return false;
    }
    if ($('#adminCheck').is(":checked")) {
        val = 2;
    }
    if ($('#idEmail').val() === "") {
        alert("Please enter Email ID");
        return false;
    } else {
        if ( ($('#idMultiSelect').val().length === 0) && (val === 0) ) {
            alert("Please choose user as Admin or Plant User");
            return false;
        } else {
            $.ajax({
                url: "../Configuration/AddUserMapping",
                type: 'POST',
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                data: JSON.stringify({
                    email: $('#idEmail').val(),
                    role: val,
                    plantname: $('#idMultiSelect').val()
                }),
                success: function (data) {
                    if (data === 1 || data === "1") {
                        $("#adminCheck").prop("checked", false);
                        $('#idMultiSelect').val([0]);
                        $('#idEmail').val("");
                        loadPlantTable();
                        alert("Data Saved Successfully");
                    } else {
                        alert("Error in saving the data");
                    }
                },
                async: false
            });
        }
    }
};