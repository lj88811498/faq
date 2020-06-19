/**
 * paper_subjects_bank管理初始化
 */
var PaperSubjectsBank = {
    id: "PaperSubjectsBankTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
PaperSubjectsBank.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
PaperSubjectsBank.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        PaperSubjectsBank.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加paper_subjects_bank
 */
PaperSubjectsBank.openAddPaperSubjectsBank = function () {
    var index = layer.open({
        type: 2,
        title: '添加paper_subjects_bank',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/paperSubjectsBank/paperSubjectsBank_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看paper_subjects_bank详情
 */
PaperSubjectsBank.openPaperSubjectsBankDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'paper_subjects_bank详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/paperSubjectsBank/paperSubjectsBank_update/' + PaperSubjectsBank.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除paper_subjects_bank
 */
PaperSubjectsBank.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/paperSubjectsBank/delete", function (data) {
            Feng.success("删除成功!");
            PaperSubjectsBank.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("paperSubjectsBankId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询paper_subjects_bank列表
 */
PaperSubjectsBank.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    PaperSubjectsBank.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = PaperSubjectsBank.initColumn();
    var table = new BSTable(PaperSubjectsBank.id, "/paperSubjectsBank/list", defaultColunms);
    table.setPaginationType("client");
    PaperSubjectsBank.table = table.init();
});
