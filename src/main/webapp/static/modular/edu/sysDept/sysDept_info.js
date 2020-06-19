/**
 * 初始化sys_dept详情对话框
 */
var SysDeptInfoDlg = {
    sysDeptInfoData : {}
};

/**
 * 清除数据
 */
SysDeptInfoDlg.clearData = function() {
    this.sysDeptInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysDeptInfoDlg.set = function(key, val) {
    this.sysDeptInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SysDeptInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SysDeptInfoDlg.close = function() {
    parent.layer.close(window.parent.SysDept.layerIndex);
}

/**
 * 收集数据
 */
SysDeptInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
SysDeptInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysDept/add", function(data){
        Feng.success("添加成功!");
        window.parent.SysDept.table.refresh();
        SysDeptInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysDeptInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SysDeptInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/sysDept/update", function(data){
        Feng.success("修改成功!");
        window.parent.SysDept.table.refresh();
        SysDeptInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.sysDeptInfoData);
    ajax.start();
}

$(function() {

});
