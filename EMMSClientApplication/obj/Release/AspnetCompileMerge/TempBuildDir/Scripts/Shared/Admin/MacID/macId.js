var deviceID = 0;
var loadGrid = function () {
    $('#idMacIDTable').bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'ID', title: 'ID', align: 'left' },
                    { field: 'Name', title: 'MAC ID', align: 'left' },
                    { field: 'edit', title: 'Action', align: 'center', formatter: actionFormatter, events: 'actionEvents' }
        ]
    });
    $('#idMacIDTable').bootstrapTable("hideColumn", "ID");
    $("#idMacIDTable").bootstrapTable("showLoading");
    $.ajax({
        url: "../Configuration/GetDeviceID",
        type: 'GET',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (data) {
            $('#idMacIDTable').bootstrapTable("load", data);
            $("#idMacIDTable").bootstrapTable("hideLoading");
        },
        async: true
    });
};
var actionFormatter = function (value, row, index) {
    return [
        '<a class="edit ml10" href="javascript:void(0)" title="Edit">',
        '<i class="glyphicon glyphicon-edit"></i>',
        '</a>'
    ].join('');
};
window.actionEvents = {
    'click .edit': function (e, value, row, index) {
        $('#idMacId').val(row.Name);
        deviceID = row.ID;
    }
};
var saveDeviceDetails = function () {
    if ($('#idMacId').val() === "") {
        alert("please enter MacID");
        return false;
    }
    $.ajax({
        url: "../Configuration/AddDeviceId",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            deviceid: $('#idMacId').val(),
            id: deviceID
        }),
        success: function (data) {
            $('#idMacId').val("");
            switch (data) {
                case 0:
                    alert("Error in saving the data");
                    break;
                case 1:
                    alert("Data saved Successfully");
                    deviceID = 0;
                    loadGrid();
                    break;
                case 2:
                    alert("Mac Id format should be 'xx:xx:xx:xx or xx-xx-xx-xx or xxxxxxxxxx'");
                    break;
                case 3:
                    alert("Devie already registered");
                    break;
            }
        },
        async: false
    });
}