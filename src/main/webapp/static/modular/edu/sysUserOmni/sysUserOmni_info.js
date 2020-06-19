/**
 * 初始化sys_user_omni详情对话框
 */
var SysUserOmniInfoDlg = {
    sysUserOmniInfoData : {}
};

/**
 * 清除数据
 */
SysUserOmniInfoDlg.clearData = function() {
    this.sysUserOmniInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysUserOmniInfoDlg.set = function(key, val) {
    this.sysUserOmniInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysUserOmniInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysUserOmniInfoDlg.close = function() {
    parent.layer.close(window.parent.SysUserOmni.layerIndex);
}

/**
 * 收集数据
 */
SysUserOmniInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysUserOmniInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysUserOmni/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysUserOmni.table.refresh();
        SysUserOmniInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysUserOmniInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysUserOmniInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysUserOmni/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysUserOmni.table.refresh();
        SysUserOmniInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysUserOmniInfoData);
    ajax.start();
}

$(function() {

});
