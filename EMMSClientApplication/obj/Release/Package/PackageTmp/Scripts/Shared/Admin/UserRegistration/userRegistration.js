var userid = 0;
var loadUserTable = function () {
    $('#idUserTable').bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'UserId', title: 'User ID', align: 'left' },
                    { field: 'EmailId', title: 'Email', align: 'left' },
                    { field: 'RoleId', title: 'Role', align: 'left' },
                    { field: 'UserType', title: 'Role', align: 'left' },
                    { field: 'ActionItem', title: 'Action', align: 'center', formatter: uomActionFormatter, events: 'actionEvents' }
        ]
    });
    $('#idUserTable').bootstrapTable("hideColumn", "UserId");
    $('#idUserTable').bootstrapTable("hideColumn", "RoleId");
    $("#idUserTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../Admin/GetEmailAddress",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#idUserTable').bootstrapTable("load", data);
            $("#idUserTable").bootstrapTable("hideLoading");
        },
        async: true
    });
};

/**
uomActionFormatter   :   function
Description          :   This function will return the delete button and will append to 
                         each row in the table
*/
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
        $('#idUserName').val(row.EmailId);
        $('#idAdminSelect').val(row.RoleId);
        userid = row.UserId;
    },
    'click .remove': function (e, value, row, index) {
        removeEmail(row.UserId);
    }
};

var removeEmail = function (userId) {
    $.ajax({
        url: "../Admin/DeleteEmailAddress",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            id: userId
        }),
        success: function (data) {
            if ((data === 0) || (data === "0")) {
                alert("Error in deleting the data");
            } else {
                if ((data === 1) || (data === "1")) {
                    alert("Data deleted successfully");
                    loadUserTable();
                } 
            }
        },
        async: false
    });
};

var saveUsers = function () {
    var userName = $('#idUserName').val().trim();
    if (userName === "" || userName.length > 60) {
        alert("Please enter valid Email Id");
        return false;
    }
    if (($('#idAdminSelect').val() === 0) || ($('#idAdminSelect').val() === "0")) {
        alert("Please select Role");
        return false;
    }
    var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var regVal = regex.test($('#idUserName').val());
    if (!regVal) {
        alert("Please enter valid Email Id");
        return false;
    }
    $.ajax({
        url: "../Admin/SaveEmailAddress",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            emailId: $('#idUserName').val(),
            roleId: $('#idAdminSelect').val(),
            Id: userid
        }),
        success: function (data) {
            if((data === 0) || (data === "0")){
                alert("Error in saving the data");
            } else {
                if ((data === 1) || (data === "1")) {
                    alert("Data saved successfully");
                    loadUserTable();
                    $('#idUserName').val("");
                    $('#idAdminSelect').val("0");
                } else {
                    if ((data === 2) || (data === "2")) {
                        alert("Email id already registered");
                    }
                }
            }
            userid = 0;
        },
        async: false
    });
};