var loadGrid = function () {
    $('#idMappingTable').bootstrapTable({
        pagination: 'true',
        columns: [
                    { field: 'ID', title: 'ID', align: 'left' },
                    { field: 'Name', title: 'UOM Name', align: 'left' },
                    { field: 'plant', title: 'Plant Name', align: 'left' },
                    { field: 'edit', title: 'Action', align: 'center', formatter: ActionFormatter, events: 'actionEvents' }
        ]
    });
    $('#idMappingTable').bootstrapTable("hideColumn", "ID");
    $("#idMappingTable").bootstrapTable("showLoading");
};
var ActionFormatter = function (value, row, index) {
    return [
        '<a class="edit ml10" href="javascript:void(0)" title="EditUOM">',
        '<i class="glyphicon glyphicon-edit"></i>',
        '</a>'
    ].join('');
};