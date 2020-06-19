/**
 * sys_role_dept管理初始化
 */
var SysRoleDept = {
    id: "SysRoleDeptTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysRoleDept.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysRoleDept.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysRoleDept.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_role_dept
 */
SysRoleDept.openAddSysRoleDept = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_role_dept',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysRoleDept/sysRoleDept_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_role_dept详情
 */
SysRoleDept.openSysRoleDeptDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_role_dept详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysRoleDept/sysRoleDept_update/' + SysRoleDept.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_role_dept
 */
SysRoleDept.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysRoleDept/delete", function (data) {
            Feng.success("删除成功!");
            SysRoleDept.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysRoleDeptId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_role_dept列表
 */
SysRoleDept.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysRoleDept.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysRoleDept.initColumn();
    var table = new BSTable(SysRoleDept.id, "/sysRoleDept/list", defaultColunms);
    table.setPaginationType("client");
    SysRoleDept.table = table.init();
});
