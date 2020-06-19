/**
 * 初始化sys_role_menu详情对话框
 */
var SysRoleMenuInfoDlg = {
    sysRoleMenuInfoData : {}
};

/**
 * 清除数据
 */
SysRoleMenuInfoDlg.clearData = function() {
    this.sysRoleMenuInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysRoleMenuInfoDlg.set = function(key, val) {
    this.sysRoleMenuInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysRoleMenuInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysRoleMenuInfoDlg.close = function() {
    parent.layer.close(window.parent.SysRoleMenu.layerIndex);
}

/**
 * 收集数据
 */
SysRoleMenuInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysRoleMenuInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysRoleMenu/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysRoleMenu.table.refresh();
        SysRoleMenuInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysRoleMenuInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysRoleMenuInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysRoleMenu/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysRoleMenu.table.refresh();
        SysRoleMenuInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysRoleMenuInfoData);
    ajax.start();
}

$(function() {

});
