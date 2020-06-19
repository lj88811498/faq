/**
 * 初始化角色信息详情对话框
 */
var RoleInfoDlg = {
    roleInfoData : {}
};

/**
 * 清除数据
 */
RoleInfoDlg.clearData = function() {
    this.roleInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
RoleInfoDlg.set = function(key, val) {
    this.roleInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
RoleInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
RoleInfoDlg.close = function() {
    parent.layer.close(window.parent.Role.layerIndex);
}

/**
 * 收集数据
 */
RoleInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
RoleInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/role/add", function(data){
        Feng.success("添加成功!");
        window.parent.Role.table.refresh();
        RoleInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.roleInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
RoleInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/role/update", function(data){
        Feng.success("修改成功!");
        window.parent.Role.table.refresh();
        RoleInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.roleInfoData);
    ajax.start();
}

$(function() {

});
