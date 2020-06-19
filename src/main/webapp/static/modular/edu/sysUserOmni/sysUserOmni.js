/**
 * sys_user_omni管理初始化
 */
var SysUserOmni = {
    id: "SysUserOmniTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SysUserOmni.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
SysUserOmni.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SysUserOmni.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加sys_user_omni
 */
SysUserOmni.openAddSysUserOmni = function () {
    var index = layer.open({
        type: 2,
        title: '添加sys_user_omni',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/sysUserOmni/sysUserOmni_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看sys_user_omni详情
 */
SysUserOmni.openSysUserOmniDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'sys_user_omni详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/sysUserOmni/sysUserOmni_update/' + SysUserOmni.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除sys_user_omni
 */
SysUserOmni.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/sysUserOmni/delete", function (data) {
            Feng.success("删除成功!");
            SysUserOmni.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("sysUserOmniId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询sys_user_omni列表
 */
SysUserOmni.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SysUserOmni.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SysUserOmni.initColumn();
    var table = new BSTable(SysUserOmni.id, "/sysUserOmni/list", defaultColunms);
    table.setPaginationType("client");
    SysUserOmni.table = table.init();
});
