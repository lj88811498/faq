/**
 * 初始化paper_subjects_answer详情对话框
 */
var PaperSubjectsAnswerInfoDlg = {
    paperSubjectsAnswerInfoData : {}
};

/**
 * 清除数据
 */
PaperSubjectsAnswerInfoDlg.clearData = function() {
    this.paperSubjectsAnswerInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
PaperSubjectsAnswerInfoDlg.set = function(key, val) {
    this.paperSubjectsAnswerInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
PaperSubjectsAnswerInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
PaperSubjectsAnswerInfoDlg.close = function() {
    parent.layer.close(window.parent.PaperSubjectsAnswer.layerIndex);
}

/**
 * 收集数据
 */
PaperSubjectsAnswerInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
PaperSubjectsAnswerInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/paperSubjectsAnswer/add", function(data){
        Feng.success("添加成功!");
        window.parent.PaperSubjectsAnswer.table.refresh();
        PaperSubjectsAnswerInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.paperSubjectsAnswerInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
PaperSubjectsAnswerInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/paperSubjectsAnswer/update", function(data){
        Feng.success("修改成功!");
        window.parent.PaperSubjectsAnswer.table.refresh();
        PaperSubjectsAnswerInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.paperSubjectsAnswerInfoData);
    ajax.start();
}

$(function() {

});
