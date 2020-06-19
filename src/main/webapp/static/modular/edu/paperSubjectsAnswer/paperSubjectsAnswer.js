/**
 * paper_subjects_answer管理初始化
 */
var PaperSubjectsAnswer = {
    id: "PaperSubjectsAnswerTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
PaperSubjectsAnswer.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
PaperSubjectsAnswer.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        PaperSubjectsAnswer.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加paper_subjects_answer
 */
PaperSubjectsAnswer.openAddPaperSubjectsAnswer = function () {
    var index = layer.open({
        type: 2,
        title: '添加paper_subjects_answer',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/paperSubjectsAnswer/paperSubjectsAnswer_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看paper_subjects_answer详情
 */
PaperSubjectsAnswer.openPaperSubjectsAnswerDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'paper_subjects_answer详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/paperSubjectsAnswer/paperSubjectsAnswer_update/' + PaperSubjectsAnswer.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除paper_subjects_answer
 */
PaperSubjectsAnswer.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/paperSubjectsAnswer/delete", function (data) {
            Feng.success("删除成功!");
            PaperSubjectsAnswer.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("paperSubjectsAnswerId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询paper_subjects_answer列表
 */
PaperSubjectsAnswer.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    PaperSubjectsAnswer.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = PaperSubjectsAnswer.initColumn();
    var table = new BSTable(PaperSubjectsAnswer.id, "/paperSubjectsAnswer/list", defaultColunms);
    table.setPaginationType("client");
    PaperSubjectsAnswer.table = table.init();
});
