/**
 * 初始化sys_menu详情对话框
 */
var SysMenuInfoDlg = {
    sysMenuInfoData : {}
};

/**
 * 清除数据
 */
SysMenuInfoDlg.clearData = function() {
    this.sysMenuInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysMenuInfoDlg.set = function(key, val) {
    this.sysMenuInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysMenuInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysMenuInfoDlg.close = function() {
    parent.layer.close(window.parent.SysMenu.layerIndex);
}

/**
 * 收集数据
 */
SysMenuInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysMenuInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysMenu/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysMenu.table.refresh();
        SysMenuInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysMenuInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysMenuInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysMenu/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysMenu.table.refresh();
        SysMenuInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysMenuInfoData);
    ajax.start();
}

$(function() {

});
