/**
 * 初始化sys_user_role详情对话框
 */
var SysUserRoleInfoDlg = {
    sysUserRoleInfoData : {}
};

/**
 * 清除数据
 */
SysUserRoleInfoDlg.clearData = function() {
    this.sysUserRoleInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysUserRoleInfoDlg.set = function(key, val) {
    this.sysUserRoleInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysUserRoleInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysUserRoleInfoDlg.close = function() {
    parent.layer.close(window.parent.SysUserRole.layerIndex);
}

/**
 * 收集数据
 */
SysUserRoleInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysUserRoleInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysUserRole/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysUserRole.table.refresh();
        SysUserRoleInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysUserRoleInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysUserRoleInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysUserRole/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysUserRole.table.refresh();
        SysUserRoleInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysUserRoleInfoData);
    ajax.start();
}

$(function() {

});
