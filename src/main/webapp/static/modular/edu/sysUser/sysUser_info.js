/**
 * 初始化sys_user详情对话框
 */
var SysUserInfoDlg = {
    sysUserInfoData : {}
};

/**
 * 清除数据
 */
SysUserInfoDlg.clearData = function() {
    this.sysUserInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysUserInfoDlg.set = function(key, val) {
    this.sysUserInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysUserInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysUserInfoDlg.close = function() {
    parent.layer.close(window.parent.SysUser.layerIndex);
}

/**
 * 收集数据
 */
SysUserInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysUserInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysUser/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysUser.table.refresh();
        SysUserInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysUserInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysUserInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysUser/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysUser.table.refresh();
        SysUserInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysUserInfoData);
    ajax.start();
}

$(function() {

});
