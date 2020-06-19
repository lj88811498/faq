/**
 * 初始化创新创业-技术前沿、产品推荐、项目申报详情对话框
 */
var CreationArticleInfoDlg = {
    creationArticleInfoData : {}
};

/**
 * 清除数据
 */
CreationArticleInfoDlg.clearData = function() {
    this.creationArticleInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
CreationArticleInfoDlg.set = function(key, val) {
    this.creationArticleInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
CreationArticleInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
CreationArticleInfoDlg.close = function() {
    parent.layer.close(window.parent.CreationArticle.layerIndex);
}

/**
 * 收集数据
 */
CreationArticleInfoDlg.collectData = function() {
    this
}

/**
 * 提交添加
 */
CreationArticleInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/creationArticle/add", function(data){
        Feng.success("添加成功!");
        window.parent.CreationArticle.table.refresh();
        CreationArticleInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.creationArticleInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
CreationArticleInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/creationArticle/update", function(data){
        Feng.success("修改成功!");
        window.parent.CreationArticle.table.refresh();
        CreationArticleInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.creationArticleInfoData);
    ajax.start();
}

$(function() {

});
