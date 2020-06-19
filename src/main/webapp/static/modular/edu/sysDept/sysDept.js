/**
 * sys_dept管理初始化
 */
var SysDept = {
    id: "SysDeptTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysDept.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysDept.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysDept.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_dept
 */
SysDept.openAddSysDept = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_dept',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysDept/sysDept_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_dept详情
 */
SysDept.openSysDeptDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_dept详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysDept/sysDept_update/' + SysDept.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_dept
 */
SysDept.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysDept/delete", function (data) {
            Feng.success("删除成功!");
            SysDept.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysDeptId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_dept列表
 */
SysDept.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysDept.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysDept.initColumn();
    var table = new BSTable(SysDept.id, "/sysDept/list", defaultColunms);
    table.setPaginationType("client");
    SysDept.table = table.init();
});
