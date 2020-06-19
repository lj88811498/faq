/**
 * 财务报表详情表管理初始化
 */
var FinanceDetails = {
    id: "FinanceDetailsTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
FinanceDetails.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
    ];
};

/**
 * 检查是否选中
 */
FinanceDetails.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        FinanceDetails.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加财务报表详情表
 */
FinanceDetails.openAddFinanceDetails = function () {
    var index = layer.open({
        type: 2,
        title: '添加财务报表详情表',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/financeDetails/financeDetails_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看财务报表详情表详情
 */
FinanceDetails.openFinanceDetailsDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: '财务报表详情表详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/financeDetails/financeDetails_update/' + FinanceDetails.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除财务报表详情表
 */
FinanceDetails.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/financeDetails/delete", function (data) {
            Feng.success("删除成功!");
            FinanceDetails.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("financeDetailsId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询财务报表详情表列表
 */
FinanceDetails.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    FinanceDetails.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = FinanceDetails.initColumn();
    var table = new BSTable(FinanceDetails.id, "/financeDetails/list", defaultColunms);
    table.setPaginationType("client");
    FinanceDetails.table = table.init();
});
