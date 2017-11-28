var id = 0;
/**
loadGrid        :   function
Description     :   This function will load all the tag details in the table. This will
                    allow to enable the alarm.
*/
var loadGrid = function () {
    $("#idAlarmTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../AlarmEnabling/GetAlarmData",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $("#idAlarmTable").bootstrapTable("hideLoading");
            $('#idAlarmTable').bootstrapTable("load", data);
        },
        async: false
    });
};

/**
getUsers        :   function
Description     :   This function will return the list of users and thie email id's.
                    Details will be listed in bootstrap table.
*/
var getUsers = function () {
    $('#idEmailTable').bootstrapTable("hideColumn", "ID");
    $("#idEmailTable").bootstrapTable("showLoading");
    var email = "";
    $.ajax({
        url: "../Configuration/GetEmailList",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $("#idEmailTable").bootstrapTable("hideLoading");
            $('#idEmailTable').bootstrapTable("load", data);
        },
        async: true
    });
};

/**
ActionFormatter        :   function
Description            :   This function will return the edit and delete button wihich will helps user to
                           user to edit or delte particular entry.
*/
var ActionFormatter = function (value, row, index) {
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
        $('#idEmail').val(row.Name);
        id = row.ID;
    },
    'click .remove': function (e, value, row, index) {
        removeEmail(row.ID);
    }
};

/**
removeEmail            :   function
Description            :   This function is to remove the seleted email from DB
*/
var removeEmail = function (idEmail) {
    $.ajax({
        url: "../Configuration/DeleteEmail",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'text',
        data: JSON.stringify({
            id : idEmail
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                alert("Data Deleted Successfully");
                getUsers();
            } else {
                alert("Error in deleting the data");
            }
        },
        async: false
    });
};

/**
saveEmail              :   function
Description            :   This function is to save the email in DB
*/
var saveEmail = function () {
    if ($('#idEmail').val() === "") {
        alert("Please enter Email Id");
        return false;
    }
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var regVal = regex.test($('#idEmail').val());
    if (!regVal) {
        alert("Please enter valid Email Id");
        return false;
    }
    var email = [];
    email.push($('#idEmail').val());
    $.ajax({
        url: "../Configuration/AddEmailList",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            email: email,
            id: id
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                $('#idEmail').val("");
                getUsers();
            } else {
                alert("Error in saving the data");
            }
           
        },
        async: false
    });
    
};

/**
saveDetails            :   function
Description            :   This function is to save all the details of alarm enable or disable status.
*/
function saveDetails() {
    var data = $("#idAlarmTable").bootstrapTable('getData');
    var result = false;
    for (var index = 0; index < data.length; index++) {
        if (data[index].isEnabled === "YES") {
            if ((data[index].Target) <= 0) {
                result = true;
                break;
            }
        }
    }
    if (result) {
        alert("Target value should b greater than 0 if alarm is enabled");
        return false;
    }
    $.ajax({
        url: "../AlarmEnabling/UpdateAlaramInfo",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            alaramInfo: $("#idAlarmTable").bootstrapTable('getData')
        }),
        success: function (data) {
            if (data === 1 || data === "1") {
                loadGrid();
            } else {
                alert("Error in saving the data");
            }
            
        },
        async: false
    });
}