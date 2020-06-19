/**
 * sys_role_menu管理初始化
 */
var SysRoleMenu = {
    id: "SysRoleMenuTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysRoleMenu.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysRoleMenu.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysRoleMenu.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_role_menu
 */
SysRoleMenu.openAddSysRoleMenu = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_role_menu',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysRoleMenu/sysRoleMenu_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_role_menu详情
 */
SysRoleMenu.openSysRoleMenuDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_role_menu详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysRoleMenu/sysRoleMenu_update/' + SysRoleMenu.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_role_menu
 */
SysRoleMenu.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysRoleMenu/delete", function (data) {
            Feng.success("删除成功!");
            SysRoleMenu.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysRoleMenuId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_role_menu列表
 */
SysRoleMenu.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysRoleMenu.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysRoleMenu.initColumn();
    var table = new BSTable(SysRoleMenu.id, "/sysRoleMenu/list", defaultColunms);
    table.setPaginationType("client");
    SysRoleMenu.table = table.init();
});
