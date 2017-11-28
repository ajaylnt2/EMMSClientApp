var uomID = 0;

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
var loadUOMGrid = function () {
	$('#idUOMTable').bootstrapTable({
		pagination: 'true',
		columns: [
                    { field: 'ID', title: 'ID', align: 'left' },
                    { field: 'Name', title: 'UOM Name', align: 'left' },
                    { field: 'edit', title: 'Action', align: 'center', formatter: uomActionFormatter, events: 'actionEvents' }
		]
	});
	$('#idUOMTable').bootstrapTable("hideColumn", "ID");
	$("#idUOMTable").bootstrapTable("showLoading");
	$.ajax({
	    url: "../Configuration/GetUOMs",
	    type: 'GET',
	    contentType: "application/json; charset=utf-8",
	    dataType: 'json',
	    success: function (data) {
	        $('#idUOMTable').bootstrapTable("load", data);
	        $("#idUOMTable").bootstrapTable("hideLoading");
	    },
	    async: true
	});
};

var uomActionFormatter = function (value, row, index) {
	return [
        '<a class="edit ml10" href="javascript:void(0)" title="EditUOM">',
        '<i class="glyphicon glyphicon-edit"></i>',
        '</a>'
	].join('');
};

window.actionEvents = {
    'click .edit': function (e, value, row, index) {
        $('#idUOM').val(row.Name);
        uomID = row.ID;
    }
};

var saveUOM = function () {
    if ($('#idUOM').val().trim() === "") {
        alert("Empty space is not allowed");
        return false;
    }
    if ($('#idUOM').val() === "") {
        alert("please enter UOM");
        return false;
    }
    if ($('#idUOM').val().length > 30) {
        alert("UOM should not be more than 30 characters");
        return false;
    }
    $.ajax({
        url: "../Configuration/SaveUOM",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            uom: $('#idUOM').val(),
            id: uomID
        }),
        success: function (data) {
            switch (data) {
                case 0:
                    alert("Error in saving the data");
                    break;
                case 1:
                    alert("Data saved Successfully");
                    $('#idUOM').val("");
                    uomID = 0;
                    loadUOMGrid();
                    break;
                case 2:
                    alert("UOM already exists");
                    break;
            }
        },
        async: false
    });
}

var loadEmailConfig = function () {
    $.ajax({
        url: "../Configuration/GetEmailConfiguration",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#idSmtpServer').val(data[0].smtpServer);
            $('#idSmtpPort').val(data[0].smtpPort);
            $('#idUserName').val(data[0].smtpUserName);
            $('#idPassword').val(data[0].smtpPassword);
        },
        async: true
    });
}
var saveEmailConfig = function () {
    if (($('#idSmtpServer').val() === "") || ($('#idSmtpServer').val().trim() === "")) {
        alert("please enter SMTP server");
        return false;
    }
    if (($('#idSmtpServer').val().length>60)) {
        alert("SMTP server name should not be greater than 60 characters");
        return false;
    }
    if (($('#idSmtpPort').val() === "") || ($('#idSmtpPort').val().trim() === "")) {
        alert("Please enter SMTP Port number");
        return false;
    }
    if (($('#idSmtpPort').val().length > 4) || ($('#idSmtpPort').val().length < 2)) {
        alert("Please enter valid SMTP Port number");
        return false;
    }
    if ($('#idSmtpPort').val() < 0){
        alert("Negative numbers are not allowed");
        return false;
    }
    if ($('#idUserName').val().length >60) {
        alert("Username should not be more thatn 60 characters");
        return false;
    }
    if ($('#idPassword').val().length > 60) {
        alert("Password should not be more thatn 60 characters");
        return false;
    }
    
    var emailconfig = [];
    emailconfig.push(
        {
            "smtpServer"     : $('#idSmtpServer').val(),
            "smtpPort"       : $('#idSmtpPort').val(),
            "smtpUserName"   : $('#idUserName').val(),
            "smtpPassword"   : $('#idPassword').val()
        }
    );
    $.ajax({
        url: "../Configuration/AddEmailConfig",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            emailConfig: emailconfig
        }),
        success: function (data) {
            if (data === 0) {
                alert("Error in saving the data");
            } else {
                alert("Data Saved Successfully");
                loadEmailConfig();
            }
        },
        async: false
    });
    loadEmailConfig();
}