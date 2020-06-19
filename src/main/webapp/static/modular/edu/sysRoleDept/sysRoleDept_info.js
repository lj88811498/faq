/**
 * 初始化sys_role_dept详情对话框
 */
var SysRoleDeptInfoDlg = {
    sysRoleDeptInfoData : {}
};

/**
 * 清除数据
 */
SysRoleDeptInfoDlg.clearData = function() {
    this.sysRoleDeptInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysRoleDeptInfoDlg.set = function(key, val) {
    this.sysRoleDeptInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysRoleDeptInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysRoleDeptInfoDlg.close = function() {
    parent.layer.close(window.parent.SysRoleDept.layerIndex);
}

/**
 * 收集数据
 */
SysRoleDeptInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysRoleDeptInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysRoleDept/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysRoleDept.table.refresh();
        SysRoleDeptInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysRoleDeptInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysRoleDeptInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysRoleDept/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysRoleDept.table.refresh();
        SysRoleDeptInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysRoleDeptInfoData);
    ajax.start();
}

$(function() {

});
