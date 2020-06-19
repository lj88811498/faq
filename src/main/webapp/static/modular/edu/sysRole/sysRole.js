/**
 * sys_role管理初始化
 */
var SysRole = {
    id: "SysRoleTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysRole.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysRole.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysRole.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_role
 */
SysRole.openAddSysRole = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_role',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysRole/sysRole_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_role详情
 */
SysRole.openSysRoleDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_role详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysRole/sysRole_update/' + SysRole.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_role
 */
SysRole.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysRole/delete", function (data) {
            Feng.success("删除成功!");
            SysRole.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysRoleId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_role列表
 */
SysRole.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysRole.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysRole.initColumn();
    var table = new BSTable(SysRole.id, "/sysRole/list", defaultColunms);
    table.setPaginationType("client");
    SysRole.table = table.init();
});
