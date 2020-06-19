/**
 * sys_user管理初始化
 */
var SysUser = {
    id: "SysUserTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysUser.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysUser.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysUser.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_user
 */
SysUser.openAddSysUser = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_user',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysUser/sysUser_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_user详情
 */
SysUser.openSysUserDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_user详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysUser/sysUser_update/' + SysUser.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_user
 */
SysUser.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysUser/delete", function (data) {
            Feng.success("删除成功!");
            SysUser.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysUserId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_user列表
 */
SysUser.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysUser.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysUser.initColumn();
    var table = new BSTable(SysUser.id, "/sysUser/list", defaultColunms);
    table.setPaginationType("client");
    SysUser.table = table.init();
});
