package com.github.edu.core.exception;

/**
 * 所有业务异常的枚举
 *
 * @author fengshuonan
 * @date 2016年11月12日 下午5:04:51
 */
public enum BizExceptionEnum {
	
	FILE_DIRECTORY_NOT_EXIST(10023, "文件目录不存在"),
	FILE_EXCEED_LIMIT_DOWNLOAD_FAIL(10025, "文件超出1G，请通过其他方式获取文件内容"),

    NULL_ENTITY_ERROR(400, "实体类为空"),
    READ_ENTITY_ERROR(400, "数据读取异常"),

    RES_LANGUAGES_INPUT_CHECK_ERROR(401, "语种的输入最大文字数为4"),
    RES_DATASPACER_INPUT_CHECK_ERROR(401, "空间范围的输入最大文字数为12"),
    RES_DATATIMERA_INPUT_CHECK_ERROR(401, "时间范围的输入最大文字数为12"),
    RES_DATADES_INPUT_CHECK_ERROR(401, "描述的输入最大文字数为200"),

    RES_DATAACQUISA_INPUT_CHECK_ERROR(401, "获取途径的输入最大文字数为12"),
    RES_DATACOOPERAT_INPUT_CHECK_ERROR(401, "合作方式的输入最大文字数为12"),
    RES_DATAOWNER_INPUT_CHECK_ERROR(401, "数据所有权的输入最大文字数为12"),
    RES_DATAUSAGE_INPUT_CHECK_ERROR(401, "使用限制的输入最大文字数为12"),
    RES_DATALSCLASS_INPUT_CHECK_ERROR(401, "法律密级的输入最大文字数为12"),
    RES_DATAISCLASS_INPUT_CHECK_ERROR(401, "内部密级的输入最大文字数为12"),

    RES_FIELDNAME_INPUT_CHECK_ERROR(401, "数据字典的字段名称的输入最大文字数为50"),
    RES_FIELDMEANING_INPUT_CHECK_ERROR(401, "数据字典的字段含义的输入最大文字数为50"),
    RES_FIELDDESC_INPUT_CHECK_ERROR(401, "数据字典的字段描述的输入最大文字数为50"),
    RES_DATALABEL_INPUT_CHECK_ERROR(401, "数据字典的数据标签的输入最大文字数为6"),

    RES_RELA_DESC_INPUT_CHECK__OVERLONG(401, "关联关系的接口描述的输入最大文字数为200"),
    RES_REQ_FIELDNAME_INPUT_CHECK_OVERLONG(401, "请求参数的字段名称的输入最大文字数为6"),
    RES_REQ_FIELDDESC_INPUT_CHECK_OVERLONG(401, "请求参数的字段描述的输入最大文字数为12"),
    RES_RTN_FIELDNAME_INPUT_CHECK_OVERLONG(401, "返回参数的字段名称的输入最大文字数为6"),
    RES_RTN_FIELDDESC_INPUT_CHECK_OVERLONG(401, "返回参数的字段描述的输入最大文字数为12"),

    RES_APPINFO_SUPPMETHOD_INPUT_CHECK_OVERLONG(401, "应用信息的支持方式的输入最大文字数为6"),
    RES_APPINFO_REQMETHOD_INPUT_CHECK_OVERLONG(401, "应用信息的请求方式的输入最大文字数为6"),
    RES_APPINFO_CALLTIMES_INPUT_CHECK_OVERLONG(401, "应用信息的调用次数的输入最大文字数为6"),
    RES_APPINFO_SPARETIMES_INPUT_CHECK_OVERLONG(401, "应用信息的备用次数的输入最大文字数为6"),
    RES_APPINFO_PRICE_INPUT_CHECK_OVERLONG(401, "应用信息的价格的输入最大文字数为6"),
    RES_DICINFO_DATALABEL_INPUT_CHECK_OVERLONG(401, "数据字典的数据标签的输入最大文字数为6"),

    ISREQUIRED_PARAM_ERROR(500, "必填参数有误"),
    PARAM_ERROR(500, "传入参数有误"),
    SEARCH_VALUE_ERROR(500, "模糊查询条件存在非法字符"),
    PARAM_USER_NOT_EXIST(500, "用户不存在"),
    URI_ILLEGAL(500, "接口地址非法"),

    REPEAT_CATEGORY_WAS_USED(501, "此数据分类使用中，不能删除"),
    REPEAT_PROVIDER_WAS_USED(501, "此供应商使用中，不能删除"),

    REPEAT_PROVIDER_ERROR(501, "供应商名称已存在"),
    REPEAT_CATEGORY_ERROR(501, "分类名称已存在"),
    REPEAT_RES_TITLE_EXIST(501, "数据集名称已存在"),
    RELA_PARAM_EXIST(501, "关联关系关联接口已存在"),
    REQ_PARAM_EXIST(501, "请求参数已存在"),
    RTN_PARAM_EXIST(501, "返回参数已存在"),
    RES_DATALABEL_INPUT_REPEAT(501, "数据字典的数据标签已存在"),

    REPEAT_CATECODE_NOT_EXIST(502, "分类标识不存在"),
    RES_PARAM_TYPE_NOT_EXITS(502, "数据集类型不存在"),
    RES_PARAM_GROUPCODE_NOT_EXITS(502, "数据业务组标识不存在"),
    REPEAT_RES_NOT_EXIST(502, "数据集不存在"),
    PROVIDER_NOT_EXIST(502, "提供单位不存在"),
    PARAM_CODE_TOO_LONG(503, "标识超过了限定长度"),
    RES_DS_STAUTS_ERROR(503, "数据集未编辑完成，不能发布"),
    RES_DS_STAUTS_CANCEL_ERROR(503, "数据集尚未发布，不能取消发布"),

    RES_STATUS_STOP_NO_PUBLISHED(503, "数据集待编辑状态，不能发布"),
    RES_DS_STAUTS_PUBLISHED(503, "数据集已发布，不能重复发布"),
    RES_NOT_SHARE_PUBLISHED(503, "没有配置任何数据共享权限，不能发布"),

    RES_PARAM_TYPE_IS_EMPTY(504, "数据集类型不能为空"),
    RES_PARAM_TITLE_IS_EMPTY(504, "数据集名称不能为空"),
    RES_PARAM_GROUPCODE_IS_EMPTY(504, "数据业务组不能为空"),
    RES_PARAM_GROUPNAME_IS_EMPTY(504, "数据业务组名称不能为空"),
    RES_PARAM_GROUPCREATER_IS_EMPTY(504, "数据业务组创建人不能为空"),
    RES_PARAM_URI_MYSQL_ERROR(504, "数据集数据库表路径错误"),
    RES_PARAM_URI_IS_EMPTY(504, "数据集路径不能为空"),
//    RES_PARAM_URI_IS_ERROR(504, "数据集路径格式不正确"),
    DATA_DESC_ISNULL(504, "接口简介不能为空"),
    RESTITLE_ISNULL(504, "数据集名称不能为空"),
    CATEFCODE_ISNULL(504, "一级分类不能为空"),
    CATESCODE_ISNULL(504, "二级分类不能为空"),
    PROTITLE_ISNULL(504, "接口来源不能为空"),
    RTNEXAMPLE_ISNULL(504, "返回示例不能为空"),
    URI_ISNULL(504, "接口地址不能为空"),
    REQPARAM_ISNULL(504, "请求参数不能为空"),
    APPINFO_REQMETHOD_ISNULL(504, "应用信息请求方式不能为空"),
    APPINFO_SUPPMETHOD_ISNULL(504, "应用信息支持方式不能为空"),
    APPINFO_PRICE_ISNULL(504, "应用信息价格不能为空"),
    APPINFO_SPARETIMES_ISNULL(504, "应用信息备用次数不能为空"),
    APPINFO_STATUS_ISNULL(504, "应用信息状态不能为空"),
    RTNPARAM_ISNULL(504, "返回参数不能为空"),
    DATALABEL_ISNULL(504, "数据标签不能为空"),
    CLOUD_MAP_WORD_NOT_EXIST(504, "不能删除一个不存在的关键词"),
    CLOUD_MAP_WORD_PARAMS_ERROR(504, "关键词参数错误"),
    RES_RELA_INTERFACE_INPUT_CHECK_ISNULL(504, "关联关系的关联接口不能为空"),
    RES_REQ_FIELDNAME_INPUT_CHECK_ISNULL(504, "请求参数的字段名称不能为空"),
    RES_RTN_FIELDNAME_INPUT_CHECK_ISNULL(504, "返回参数的字段名称不能为空"),
    APPINFO_ISNULL(504, "应用信息不能为空"),
    REQPARAM_FIELDNAME_ISNULL(504, "请求参数字段名称不能为空"),
    REQPARAM_FIELDTYPE_ISNULL(504, "请求参数字段类型不能为空"),
    REQPARAM_ISREQUIRED_ISNULL(504, "请求参数必填不能为空"),
    REQPARAM_FIELDESC_ISNULL(504, "请求参数描述不能为空"),
    RTNPARAM_FIELDNAME_ISNULL(504, "返回参数字段名称不能为空"),
    RTNPARAM_FIELDTYPE_ISNULL(504, "返回参数字段类型不能为空"),
    RTNPARAM_ISREQUIRED_ISNULL(504, "返回参数必填不能为空"),
    RTNPARAM_FIELDESC_ISNULL(504, "返回参数字段名称不能为空"),
    DATA_CTENTER_ERROR(504, "驱动ID为空"),

    MYSQL_CONNECTION_ERROR(516,"获取数据库内容出错"),


    RES_PARAM_GROUPNAME_EXITS(505, "数据业务组名称已存在"),
    RES_PARAM_TITLE_OVER_LONG(505, "数据集名称不能大于50个汉字"),
    RES_PARAM_GROUPNAME_OVER_LONG(505, "数据业务组名称不能大于12个汉字"),

    RES_PARAM_GROUP_WAS_USED(506, "该数据业务组下存有数据集"),
    RES_OUT_CONN_ERROR(506, "该数据集下已接入文件"),
    RES_KINS_INFO_NOT_EXIST(506, "数据血缘信息不存在"),
    PROVIDERS_OUT_CONN_ERROR(506, "已被接入对象关联"),
    RES_RESTYPE_IS_NOT_EXIST(506, "分类未定义"),

    RES_KINS_INFO_ERROR(507, "数据血缘信息有误"),
    RES_TYEP_NOT_EXIST(507, "数据集类型错误"),
    MEDIUM_TYEP_NOT_EXIST(507, "数据集存储介质类型错误"),

    /** 数据字典模板上传 */
    DIC_FILE_NOT_EXIST(601, "数据字典模板文件不存在"),
    DIC_FILE_READ_ERROR(602, "数据字典模板文件读取失败"),
    FILE_ERROR(603,"文件操作失败"),

    TEMPLATE_FILE_NOT_EXIST(601, "模板文件不存在"),
    TEMPLATE_FILE_UPLOAD_ERROR(602, "模板文件读取失败"),

    REDIS_DATA_SET_ERROR(701, "设置缓存数据出错"),
    REDIS_DATA_GET_ERROR(702, "获取缓存数据出错"),
    REDIS_DATA_EXPIRE_ERROR(703, "设置缓存超时时间异常"),

    DASSCORE_SUCCESS(6001, "调用daasCore接口成功"),
    DASSCORE_DN_LIST_ERROR(6002, "获取数据节点列表出错"),
    DASSCORE_DU_DATA_ERROR(6002, "获取数据单元内数据出错"),
    DASSCORE_DU_FILE_ERROR(6008, "数据单元文件或目录不存在"),
    DASSCORE_DU_DOWNLOAD_ERROR(6003, "文件写入本地失败"),
    DASSCORE_DU_DOWNLOAD_TARGET_EMPTY(6004, "目标为空"),
    DASSCORE_DU_INFO_ERROR(6003, "获取数据单元信息出错"),
    DASSCORE_DU_CREATE_ERROR(6003, "创建数据节点出错"),
    DASSCORE_DU_CREATE_EXIST(6002, "创建数据节点已存在"),


    CATEGORYMANAGE_TYPE_ERROR(901,"新增类别错误"),
    CATEGORYMANAGE_DELETE_ERROR(902,"当前所选类别下存在子分类，不能删除"),
    CATEGORYMANAGE_CTYPE_ERROR(903,"分类类型错误"),
    CATEGORYMANAGE_NAME_ERROR(904,"分类名称不能为空"),
    CATEGORYMANAGE_CNAME_ERROR(905,"请输入2-10位由英文、中文或中英文组合的名称"),
    CATEGORYMANAGE_DESC_ERROR(906,"请输入50字以内的描述信息"),
    CATEGORYMANAGE_SEARCHNAME_ERROR(907,"请输入30字以内的搜索信息"),
    CATEGORYMANAGE_PARAMS_ERROR(908,"传入参数有误"),
    CATEGORYMANAGE_PARAMTYPE_ERROR(909,"请传入正确增加类型参数"),
    CATEGORYMANAGE_DETAIL_ERROR(910,"未查询到数据"),
    CATEGORYMANAGE_ADDRESS_ERROR(911,"请输入100字以内由中文、英文或中英文数字特殊字符组合的联系地址"),
    CATEGORYMANAGE_CONTRACT_ERROR(912,"请输入2-10位英文或中文的联系人姓名"),
    CATEGORYMANAGE_POSTCODE_ERROR(913,"请输入6位数字的邮政编码"),
    CATEGORYMANAGE_TEL_ERROR(914,"请输入有效11位数字的联系电话"),
    CATEGORYMANAGE_DEL_ERROR(915,"当前所选含有不存在分类，请重新选择"),
    CATEGORYMANAGE_PROVIDERPARAMS_ERROR(916,"提供单位名称，联系人，联系电话输入不能为空"),
    CATEGORYMANAGE_UPDATE_ERROR(917,"当前操作数据不存在，请输入正确参数"),
    CATEGORYMANAGE_UPLOAD_ERROR(918,"上传文件为空"),
    CATEGORYMANAGE_UPLOADREPEAT_ERROR(919,"上传失败，上传文件中有重复数据"),
    CATEGORYMANAGE_UPLOAD_ONELEVEL_ERROR(920,"上传失败，不能上传一级分类数据"),
    CATEGORYMANAGE_UPLOAD_FILENAME_ERROR(921,"上传失败，请上传csv文件"),
    CATEGORYMANAGE_UPLOAD_LEVEL_ERROR(923,"上传失败，文件只允许导入的层级为2,3,4级"),
    CATEGORYMANAGE_UPLOAD_ENCODING_ERROR(924,"上传失败，请上传UTF-8格式的文件"),
    CATEGORYMANAGE_PROVIDERNULL_ERROR(925,"标识，上级编码，层级输入不能为空"),
    CATEGORYMANAGE_COUNTLEVEL2_ERROR(926,"上传失败，二级分类最多导入99个"),
    CATEGORYMANAGE_COUNTLEVEL3AND4_ERROR(926,"上传失败，三级和四级分类最多导入999个"),
    INSERT_REPEAT_ERROR(927,"新增失败，名称重复"),
    INSERT_FORBID_ERROR(929,"新增失败，当前层级不能新增子级"),
    UPDATE_REPEAT_ERROR(928,"重命名失败，名称重复"),
    CATEGORYMANAGE_NULL_ERROR(929,"输入参数为空"),
    LISTMETADATAINFO_URI_NULL(930, "请求的路径不能为空"),
    FILE_IS_NOT_EXISTS(931, "请求的文件不存在"),
    TABLE_IS_NOT_EXISTS(931, "请求的表不存在"),
    NOT_COMPLETE_SYN(932, "尚未同步完成，请稍后查看"),

    SQL_INSERT_ERROR(801, "新增异常"),
    SQL_UPDATE_ERROR(802, "修改异常"),
    SQL_DELETE_ERROR(803, "删除异常"),

    /**
     * 数据质量
     */
    DATAQUALITY_NAME_ERROR(951, "请输入长度1-20位的数字，字母，汉字、下划线及其组合"),
    DATAQUALITY_DESC_ERROR(952, "请输入50位以内的任务描述"),
    DATAQUALITY_DEL_ERROR(953, "该任务正在运行，请稍后再试！"),
    DATAQUALITY_NOTEXIST_ERROR(954, "该任务不存在，请稍后再试！"),
    REPORT_NOTEXIST_ERROR(954, "该任务的报告不存在！"),
    DETAIL_NOTEXIST_ERROR(955, "该任务不存在！"),
    REMARK_NOTEXIST_ERROR(956, "该备注不存在！"),
    REPORT_NOT_SUPPORT_ERROR(956, "该类型的报告暂不支持！"),
    REMARK_TYPE_ERROR(957, "请输入正确的筛选类型！"),
    DATAQUALITY_TASK_ERROR(958, "请输入正确的任务执行类型！"),
    REPORT_PARAM_ERROR(959, "请输入正确的参数！"),
    REGEX_NOTEXIST_ERROR(960, "该任务暂无配置规则"),
    REGEX_INSERT_ERROR(961, "请正确配置规则"),
    DQ_STOPTASK_ERROR(962, "停止失败，该任务已运行完成"),
    RULE_NOTEXIST_ERROR(963, "删除失败，该规则不存在"),
    RULE_RULENAME_ERROR(964, "规则名称请输入1-15个字符"),
    RULE_RULE_ERROR(965, "规则请输入1-500个字符"),
    RULE_NAMEREPEAT_ERROR(966, "规则名称重复"),
    RULE_UPDATENAME_ERROR(967, "没有权限，不能修改当前规则"),
    RULE_DELNAME_ERROR(968, "没有权限，不能删除当前规则"),
    RULE_DELETE_ERROR(969, "有任务正在使用该规则，请先删除任务！"),
    /**
     * 数据治理
     */
    DATAGOVERN_PROCESS_NODES_ERROR(970, "配置工作流节点错误！"),
    DATAGOVERN_TASK_NOT_EXIST_ERROR(971, "任务不存在！"),
    DATAGOVERN_PROCESS_UPLOAD_JAR_ERROR(972, "上传jar包失败！"),
    DATAGOVERN_PROCESS_UPDATE_TASKID_NOT_UNIQUE_ERROR(973, "修改配置工作流所属taskId不唯一！"),
    DATAGOVERN_TASK_NAME_ERROR(974, "请输入长度1-20位的数字，字母，汉字、下划线及其组合"),
    DATAGOVERN_TASK_DESC_ERROR(975, "请输入50位以内的任务描述"),
    DATAGOVERN_TASK_RUNNING_ERROR(976, "该任务正在运行，请稍后再试！"),
//    DATAGOVERN_TASK_NOTEXIST_ERROR(977, "该任务不存在，请稍后再试！"),
    DATAGOVERN_TASK_TYPE_ERROR(978, "请输入正确的任务执行类型！"),
    DATAGOVERN_TASK_EXECUTE_ERROR(979, "数据治理任务执行失败"),
    DATAGOVERN_TASK_SHELL_INVOKE_ERROR(980, "数据治理任务脚本调用失败"),
    DATAGOVERN_TASK_NOT_RUNNING_ERROR(981, "不能停止一个没有运行的任务"),
    DATAGOVERN_TASK_RULE_IN_USE_ERROR(982, "不能停止一个正在使用的自定义规则"),
    DATAGOVERN_TASK_STOP_ERROR(983, "停止数据治理任务失败"),
    DATAGOVERN_TASK_RULE_NULL_UUID_ERROR(984, "保存自定义规则需要带上上传jar包时返回的uuid"),
    DATAGOVERN_TASK_START_ERROR(985, "启动数据治理任务失败"),
    DATAGOVERN_TASK_CANNOT_EDIT_ERROR(986, "不能编辑已经运行过的任务"),
    DATAGOVERN_TASK_NO_NODES_ERROR(987, "不能运行没有规则的任务"),
    DATAGOVERN_TASK_RULE_DUPLICATION_ERROR(988, "自定义规则不能重名"),
    DATAGOVERN_TASK_RULE_VM_NULL_ERROR(989, "前端传递的DataGovernCustomRuleVm参数不能为null"),
    DATAGOVERN_TASK_RULE_NULL_ERROR(990, "ruleId不能为null"),
    DATAGOVERN_TASK_GET_LIST_PAGE_ERROR(991, "获取任务列表的分页参数不能为null"),
    DATAGOVERN_TASK_NULL_ERROR(992, "数据治理任务不能为null"),
    DATAGOVERN_TASK_ID_NULL_ERROR(993, "数据治理任务id不能为null"),
    DATAGOVERN_TASK_TOKEN_NULL_ERROR(994, "数据治理任务token不能为null"),
    DATAGOVERN_TASK_RULE_NOT_SUPPORT_ERROR(995, "不支持的数据治理规则"),
    DATAGOVERN_TASK_DATASOURCE_DATASETID_NULL_ERROR(996, "数据源的dataset id不能为null"),
    DATAGOVERN_TASK_INSERT_META_PARAMS_ERROR(997, "插入元数据的参数有错误"),
    DATAGOVERN_TASK_INSERT_META_ERROR(998, "插入元数据发生错误"),
    DATAGOVERN_TASK_INSERT_LINEAGE_PARAMS_ERROR(999, "插入血缘的参数有错误"),
    DATAGOVERN_WATERMARK_FILE_ERROR(1000,"水印文件不存在"),
    DATAGOVERN_WATERMARK_IMAGE_ERROR(1001,"请上传格式为PDF、PNG、JPG的图片"),
    DATAGOVERN_WATERMARK_IMAGE_RATIO_ERROR(1002,"请上传尺寸大于256*256的图片"),

    /**
     * 任务相关
     */
    TASK_CREATE_ERROR(701,"任务创建失败"),
    TASK_EDIT_ERROR(702,"任务修改错误"),
    TASK_START_OR_STOP_ERROR(703,"任务启停错误"),
    TASK_TITLE_REPEAT(704,"任务名称重复"),
    TASK_REQUEST_RAPRAMS_ERROR(705,"请求参数有误"),
    TASK_START_ERROR(706,"任务启动失败"),
    TASK_STOP_ERROR(707,"任务暂停失败"),
    TASK_DEL_ERROR(708,"任务删除失败"),
    TASK_WRITE_ERROR(709,"数据写入错误"),
    TASK_FILE_FORMAT_ERROR(710,"数据大小格式不正确"),
    TASK_RES_CREATE_ERROR(711,"数据集创建失败"),
    TASK_RELATION_CREATE_ERROR(712,"血缘关系修改失败"),
    TASK_KINS_UPDATE_ERROR(713,"修改数据集上下游血缘信息失败"),
    TASK_DATA_INFO_ERROR(714,"获取数据单元信息失败"),
    TASK_DN_CREATE_ERROR(715,"数据节点创建失败"),
    TASK_DU_CREATE_ERROR(716,"数据单元创建失败"),
    TASK_DU_PUT_ERROR(717,"数据上传失败"),
    TASK_RES_DETAIL_ERROR(718,"获取数据集详情失败"),
    TASK_RES_TYPE_ERROR(719,"数据集不匹配"),
    TASK_RES_HAVE_ERROR(720,"数据集不存在"),
    TASK_TABLE_CREATE_ERROR(721,"建表失败"),
    TASK_QUARTZ_FIRE_ERROR(722,"任务时间有误,将不会被执行"),
    TASK_MEDIUM_TABLE_ERROR(723,"目标表不存在"),
    TASK_DS_RES_REPEAT(724, "相同的数据源和数据集任务已存在!"),
    TASK_RES_SINGLE(725, "请选择单表数据集!"),
    TASK_RES_TITLE_IS_EMPTY(726, "数据集名称不能为空"),
    TASK_RES_TITLE_OVER_LONG(727, "数据集名称不能大于50个汉字"),
    TASK_PARAM_GROUPCODE_IS_EMPTY(728, "数据业务组不能为空"),
    TASK_PARAM_GROUPCODE_NOT_EXITS(729, "数据业务组标识不存在"),
    TASK_PARAM_URI_IS_EMPTY(730, "数据集路径不能为空"),
    TASK_RES_TITLE_REPEAT(731, "数据集名称已存在"),
    NOT_EXIST_DS_ENGINE(731, "非法的数据源引擎"),
    TASKT_RES_ID_ERROR(733, "数据集id有误"),
    TASK_KINS_INFO_ERROR(734, "数据血缘信息有误"),
    TASK_RULE_ERROR(735, "任务创建失败,rule参数有误"),
    TASK_TITLE_OVERLENGTH(736, "任务名称超长"),
    TASK_TITLE_LESS(737, "任务名称过短"),
    TASK_MEDIUM_TABLE_EXIST(738,"目标表已存在"),
    TASK_UPDATE_ERROR(739,"更新任务信息异常"),
    TASK_INTERFACE_ERROR(740,"接口调用异常"),
    NOT_FIND_USER_META_DATA_TENANT(731, "没有查到当前用户的元数据租户的模型id"),
    
    //MetaProcessorServiceImpl单元测试新增常量
    META_PROCESSOR_META_ID_CANNOT_BE_NULL(100001, "需要清洗的元数据id不能为null"),
    META_PROCESSOR_META_IO_EXCEPTION(100002, "从hdfs读取数据到输出流过程中发生IO异常"),
	
	//合并进来的
	SUCCESS(200,"操作成功"),
    ERROR(500,"系统错误"),
    GET_SELECT_LIST_FILE(10015, "获取列表失败"),
    DB_INSERT_SUCCESS(200, "新增成功"),
    DB_SELECT_LIST_SUCCESS(200, "获取列表成功"),
    DB_INSERT_ERROR(10015, "新增失败"),
    DB_UPDATE_ERROR(10015, "修改失败"),
    DB_DELETE_ERROR(10015, "删除失败"),
    NULL_PARAMS(10025,"参数不能为空"),
    DELETE_DICTIONARY_VAL_EXIT(10006,"删除失败,包含的标准字典的值没有删除完"),
    DATA_DICTIONARY_IS_EMPTY(10006,"数据字典的数据不能为空"),
    DICTIONARY_CODE_REPEAT(10006,"字典编码重复，请重新输入"),
    DICTIONARY_NAME_REPEAT(10006,"字典名称重复，请重新输入"),
    DICTIONARY_NAME_AND_CODE_REPEAT(10006,"字典编码和名称重复，请重新输入"),
    DICTIONARY_CODE_VAL_REPEAT(10006,"字典值编码重复，请重新输入"),
    DICTIONARY_NAME_VAL_REPEAT(10006,"字典值名称重复，请重新输入"),
    DICTIONARY_NAME_AND_CODE_VAL_REPEAT(10006,"字典值编码和名称重复，请重新输入"),

    ATTRIBUTE_DEL_ERROR(600, "删除失败，删除参数有误"),
    ATTRIBUTE_DELCATEGORY_ERROR(601, "删除失败，当前删除分类下存在子分类或模型"),
    ATTRIBUTE_DELMODEL_ERROR(602, "删除失败，当前删除模型下存在属性"),
    ATTRIBUTE_INSERT_ERROR(603, "新增失败，新增参数错误"),
    ATTRIBUTE_INSERTNAME_ERROR(604, "新增失败，请输入2-10位的中文或英文的分类名称"),
    ATTRIBUTE_INSERTLEVEL_ERROR(605, "新增失败，不能新增一级目录"),
    ATTRIBUTE_INSERTCHILDREN_ERROR(606, "新增失败，不能新增四级子目录"),
    ATTRIBUTE_UPDATE_ERROR(608, "重命名失败，请输入2-10位的中文或英文的名称"),
    ATTRIBUTE_UPDATE_DIRNAME_ERROR(607, "重命名失败,名称重复"),
    ATTRIBUTE_UPDATE_NAME_ERROR(609, "重命名失败,参数有误"),
    ATTRIBUTE_DELETE_NOTEXIST_ERROR(610, "删除失败，当前删除数据不存在"),
    ATTRIBUTE_INSERT_NAMEREPEAT_ERROR(611, "新增失败，标题重复"),
    
    
    //交易平台
    PUBLISHED(503, "此元数据已发布到交易平台"),
    STATUS_ERROR(503, "已发布状态的元数据才能发布"),
    NOT_CREATE_API(503, "此元数据还未创建服务目录"),
    PUBLISH_DEALMALL_FAILED(503, "推送交易平台失败"),
    

    META_INFO_ERROR(503,"未获取到登录账号元数据租户信息"),
    USER_META_TENANT_ID_NOT_EXIST(503, "用户元数据租户ID不存在"),
	NAME_REPEAT(503, "名称重复"),
	TAG_IS_ENABLE(503, "该共用标签已被启用"),
	NAME_NOT_ACCORD(503, "名称不符合规则"),
	DIR_HAS_DATA(500, "该目录下面有引用数据"),
	TAG_ENABLE(500, "该标签被租户启用，请先停用标签"),
	TAG_MODEL_ENABLE(500, "该标签被模型引用，请先移除标签"),
	TAG_MUST_LOWER_HAIR(500, "共用标签状态必须是已下发"),
	BATCH_ADD_OR_UPDATE_ATTR_ERROR(503, "组装批量新增或修改元数据所有属性请求信息异常"),
	DATASOURCE_IS_NOT_EXIST(503, "数据连接不存在"),
	CALLPROVIDER_REPEAT(503, "同一数据集每个调用单位只能配置一个数据共享权限"),
	DATASOURCE_ERROR(503, "目标表暂未生成，请稍后重试"),
	APIREFERENCES(503, "此数据集的调用提供单位发布了服务，不能删除"),
	ILLEGAL_PARAMETER(503, "非法参数"),
	METADATASHARE_NOT_EXIST(503, "此数据共享权限不存在"),
	KUDU_DATASOURCE_ERROR(503,"kudu数据源连接异常"),
	HDFS_DATASOURCE_ERROR(503,"hdfs数据源连接异常"),
	TARGET_NOT_EXIST(503,"hdfs路径不存在"),
    IMPALA_REF_KUDU_FAIL(504,"impala关联kudu失败"),
    IMPALA_REF_KUDU_ALREADY(505,"impala已关联过kudu"),
    MERGE_FAILURE(503, "多表聚合创建目标表失败"),
    TOO_LONG(503, "超过了限定长度"),
    CANNOT_NUM_FOUR(503, "最多支持3级"),
    CANNOT_NUM_TEN(503, "最多支持10级"),
	AUTH_PROVIDER_ADD_FAILED(503, "交叉权限关系新增失败"),

    /**
     * ES搜索异常
     */
    ELASTICSEARCH_GET_LIST_PAGE_ERROR(505, "获取ES结果列表的分页参数不能为null"),
    ELASTICSEARCH_CLIENT_ERROR(506, "初始化ES客户端异常，请检查您的ES集群健康状况"),
    ELASTICSEARCH_INPUT_ERROR(507, "请输入不为空的内容"),
    ELASTICSEARCH_INPUT_DATASET_ID_ERROR(508, "传入的数据集ID不能为空"),
    ELASTICSEARCH_UPDATE_DATASET_ERROR(508, "更改后的数据集名称不能为空"),
    ELASTICSEARCH_RESTITLE_ERROR(509, "当前查询的内容不包含在数据集中，查询出的数据为空"),
    ELASTICSEARCH_INDEX_ERROR(510, "给定的索引在当前的ES集群中不存在"),
    ELASTICSEARCH_INPUT_LENGTH_ERROR(511, "输入的内容长度超过50"),
    ELASTICSEARCH_DETAIL_IS_NULL(512, "目标数据已经删除"),
    ELASTICSEARCH_FILTER_SPECIAL_CHAR(550, "暂不支持对特殊字符进行搜索"),


    /**
     * 创建表
     */
    CLOSE_CONNECTION_FAIL(800, "关闭连接失败"),
    CREATE_TABLE_FAIL(801, "创建表失败"),
    DELETE_TABLE_FAIL(802, "删除目标表失败"),
    BULID_CREATE_TABLE_SQL_FAIL(804, "组装创建表语句失败"),
    LINK_FAIL(805,"连接失败"),

    /**
     * 算子平台
     */
    OPERATOR_PARAMS_ERROR(809, "算子平台传递的参数为空"),
    OPERATOR_INSERT_META_ERROR(810, "算子平台插入元数据发生错误"),

    /**
     * 待支持类型
     */
    NOT_SUPPORT_DB(900, "待支持数据库"),
    NOT_SUPPORT_NOSQL(900, "待支持nosql数据库"),
    NOT_SUPPORT_CASE(500, "不支持该类型"),
    TARGETID_NOT_EXITS(500, "数据接入源不存在"),
    API_IS_USED(500, "服务正在有使用"),
    DELETE_META_FAILURE(500, "删除失败"),
    NOT_ACCESS_DELETE(500, "无权限删除应用"),

    TABLE_STRUCT_ERR(500, "表结构有问题"),

    GET_DATA_ERROR(10037, "获取数据失败"),
    ;

    BizExceptionEnum(int code, String message) {
        this.friendlyCode = code;
        this.friendlyMsg = message;
    }

    private int friendlyCode;

    private String friendlyMsg;

    public int getCode() {
        return friendlyCode;
    }

    public void setCode(int code) {
        this.friendlyCode = code;
    }

    public String getMessage() {
        return friendlyMsg;
    }

    public void setMessage(String message) {
        this.friendlyMsg = message;
    }

}