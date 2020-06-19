/**
 * 初始化工业报表详情对话框
 */
var IndustryInfoDlg = {
    industryInfoData : {}
};

/**
 * 清除数据
 */
IndustryInfoDlg.clearData = function() {
    this.industryInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
IndustryInfoDlg.set = function(key, val) {
    this.industryInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
IndustryInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
IndustryInfoDlg.close = function() {
    parent.layer.close(window.parent.Industry.layerIndex);
}

/**
 * 收集数据
 */
IndustryInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
IndustryInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/industry/add", function(data){
        Feng.success("添加成功!");
        window.parent.Industry.table.refresh();
        IndustryInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.industryInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
IndustryInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/industry/update", function(data){
        Feng.success("修改成功!");
        window.parent.Industry.table.refresh();
        IndustryInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.industryInfoData);
    ajax.start();
}

$(function() {

});
