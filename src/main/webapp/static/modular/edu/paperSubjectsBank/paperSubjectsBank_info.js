/**
 * 初始化paper_subjects_bank详情对话框
 */
var PaperSubjectsBankInfoDlg = {
    paperSubjectsBankInfoData : {}
};

/**
 * 清除数据
 */
PaperSubjectsBankInfoDlg.clearData = function() {
    this.paperSubjectsBankInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
PaperSubjectsBankInfoDlg.set = function(key, val) {
    this.paperSubjectsBankInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
PaperSubjectsBankInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
PaperSubjectsBankInfoDlg.close = function() {
    parent.layer.close(window.parent.PaperSubjectsBank.layerIndex);
}

/**
 * 收集数据
 */
PaperSubjectsBankInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
PaperSubjectsBankInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/paperSubjectsBank/add", function(data){
        Feng.success("添加成功!");
        window.parent.PaperSubjectsBank.table.refresh();
        PaperSubjectsBankInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.paperSubjectsBankInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
PaperSubjectsBankInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/paperSubjectsBank/update", function(data){
        Feng.success("修改成功!");
        window.parent.PaperSubjectsBank.table.refresh();
        PaperSubjectsBankInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.paperSubjectsBankInfoData);
    ajax.start();
}

$(function() {

});
