/**
 * sys_user_role管理初始化
 */
var SysUserRole = {
    id: "SysUserRoleTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysUserRole.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysUserRole.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysUserRole.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_user_role
 */
SysUserRole.openAddSysUserRole = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_user_role',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysUserRole/sysUserRole_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_user_role详情
 */
SysUserRole.openSysUserRoleDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_user_role详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysUserRole/sysUserRole_update/' + SysUserRole.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_user_role
 */
SysUserRole.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysUserRole/delete", function (data) {
            Feng.success("删除成功!");
            SysUserRole.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysUserRoleId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_user_role列表
 */
SysUserRole.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysUserRole.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysUserRole.initColumn();
    var table = new BSTable(SysUserRole.id, "/sysUserRole/list", defaultColunms);
    table.setPaginationType("client");
    SysUserRole.table = table.init();
});
