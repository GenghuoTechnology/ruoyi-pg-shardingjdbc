/*
 Navicat Premium Data Transfer

 Source Server         : local_pg
 Source Server Type    : PostgreSQL
 Source Server Version : 150002 (150002)
 Source Host           : localhost:5432
 Source Catalog        : ruoyi-pg
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150002 (150002)
 File Encoding         : 65001

 Date: 01/09/2023 15:20:55
*/


-- ----------------------------
-- Sequence structure for gen_table_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_column_column_id_seq";
CREATE SEQUENCE "public"."gen_table_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."gen_table_column_column_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for gen_table_table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_table_id_seq";
CREATE SEQUENCE "public"."gen_table_table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."gen_table_table_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_config_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_config_config_id_seq";
CREATE SEQUENCE "public"."sys_config_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_config_config_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_dept_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dept_dept_id_seq";
CREATE SEQUENCE "public"."sys_dept_dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_dept_dept_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_dict_data_dict_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_data_dict_code_seq";
CREATE SEQUENCE "public"."sys_dict_data_dict_code_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_dict_data_dict_code_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_dict_type_dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_type_dict_id_seq";
CREATE SEQUENCE "public"."sys_dict_type_dict_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_dict_type_dict_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_job_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_job_id_seq";
CREATE SEQUENCE "public"."sys_job_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_job_job_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_job_log_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_log_job_log_id_seq";
CREATE SEQUENCE "public"."sys_job_log_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_job_log_job_log_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_logininfor_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_logininfor_info_id_seq";
CREATE SEQUENCE "public"."sys_logininfor_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_logininfor_info_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_menu_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_menu_menu_id_seq";
CREATE SEQUENCE "public"."sys_menu_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_menu_menu_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_notice_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_notice_notice_id_seq";
CREATE SEQUENCE "public"."sys_notice_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_notice_notice_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_oper_log_oper_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_oper_log_oper_id_seq";
CREATE SEQUENCE "public"."sys_oper_log_oper_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_oper_log_oper_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_post_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_post_post_id_seq";
CREATE SEQUENCE "public"."sys_post_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_post_post_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_role_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_role_role_id_seq";
CREATE SEQUENCE "public"."sys_role_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_role_role_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_user_id_seq";
CREATE SEQUENCE "public"."sys_user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;
ALTER SEQUENCE "public"."sys_user_user_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('gen_table_table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "table_comment" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sub_table_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sub_table_fk_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "class_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'crud'::character varying,
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "gen_type" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "gen_path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT '/'::character varying,
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
ALTER TABLE "public"."gen_table" OWNER TO "postgres";
COMMENT ON COLUMN "public"."gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "public"."gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "public"."gen_table"."sub_table_name" IS '关联子表的表名';
COMMENT ON COLUMN "public"."gen_table"."sub_table_fk_name" IS '子表关联的外键名';
COMMENT ON COLUMN "public"."gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "public"."gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作 sub主子表操作）';
COMMENT ON COLUMN "public"."gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "public"."gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "public"."gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "public"."gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "public"."gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "public"."gen_table"."gen_type" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "public"."gen_table"."gen_path" IS '生成路径（不填默认项目路径）';
COMMENT ON COLUMN "public"."gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gen_table"."remark" IS '备注';
COMMENT ON TABLE "public"."gen_table" IS '代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO "public"."gen_table" ("table_id", "table_name", "table_comment", "sub_table_name", "sub_table_fk_name", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "gen_type", "gen_path", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, 'indicator', '', NULL, NULL, 'Indicator', 'crud', 'com.ruoyi.web', 'web', 'indicator', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-08-28 17:37:51.633247', '', NULL, NULL);
INSERT INTO "public"."gen_table" ("table_id", "table_name", "table_comment", "sub_table_name", "sub_table_fk_name", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "gen_type", "gen_path", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (21, 'testd_hash', '', NULL, NULL, 'TestdHash', 'crud', 'com.ruoyi.web', 'web', 'hash', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-08-30 16:43:45.826446', '', NULL, NULL);
INSERT INTO "public"."gen_table" ("table_id", "table_name", "table_comment", "sub_table_name", "sub_table_fk_name", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "gen_type", "gen_path", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (22, 'testd_month', '', NULL, NULL, 'TestdMonth', 'crud', 'com.ruoyi.web', 'web', 'month', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-08-30 16:43:45.826446', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_column";
CREATE TABLE "public"."gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('gen_table_column_column_id_seq'::regclass),
  "table_id" varchar(64) COLLATE "pg_catalog"."default",
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'EQ'::character varying,
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
ALTER TABLE "public"."gen_table_column" OWNER TO "postgres";
COMMENT ON COLUMN "public"."gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "public"."gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "public"."gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "public"."gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "public"."gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "public"."gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "public"."gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "public"."gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."gen_table_column" IS '代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (1, '1', 'column_id', '字段名称', 'bigint', 'Long', 'columnId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (2, '1', 'tablespace_name', '表命名空间', 'varchar(255)', 'String', 'tablespaceName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (3, '1', 'table_name', '表名', 'varchar(255)', 'String', 'tableName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (4, '1', 'column_name', '字段名', 'varchar(255)', 'String', 'columnName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (5, '1', 'description', '描述', 'varchar(255)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (6, '1', 'relevance_table', '关联表名', 'text', 'String', 'relevanceTable', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (7, '1', 'column_type', '字段类型', 'varchar(255)', 'String', 'columnType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (8, '1', 'column_length', '字段长度', 'int', 'Long', 'columnLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-04-13 22:39:26', '', '2023-04-20 17:10:15');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (9, '2', 'sql_query_id', '查询语句', 'bigint', 'Long', 'sqlQueryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (10, '2', 'sql_query', '表命名空间', 'varchar(255)', 'String', 'sqlQuery', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (11, '2', 'description', '描述', 'varchar(255)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (12, '2', 'is_del', '逻辑删除0未删除，1删除', 'varchar(255)', 'String', 'isDel', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (13, '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (14, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (15, '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (16, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-04-20 17:07:23', '', '2023-04-20 17:11:04');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (17, '3', 'counter_id', '取数id', 'bigint', 'Long', 'counterId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (18, '3', 'content', '取数内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (19, '3', 'counter', '数值', 'bigint', 'Long', 'counter', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (20, '3', 'unit', '单位', 'varchar(255)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (21, '3', 'start_time', '请求时间', 'time', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (22, '3', 'end_time', '结束时间', 'time', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (23, '3', 'cron', '周期', 'varchar(255)', 'String', 'cron', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-07-18 08:58:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (24, '4', 'counter_id', '取数id', 'bigint', 'Long', 'counterId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-07-18 08:58:43', '', '2023-07-21 14:17:43');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (25, '4', 'content', '取数内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2023-07-18 08:58:43', '', '2023-07-21 14:17:43');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (26, '4', 'counter', '数值', 'bigint', 'Long', 'counter', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-07-18 08:58:43', '', '2023-07-21 14:17:43');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (27, '4', 'unit', '单位', 'varchar(255)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-07-18 08:58:43', '', '2023-07-21 14:17:43');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (28, '4', 'start_time', '请求时间', 'time', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-07-18 08:58:43', '', '2023-07-21 14:17:43');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (29, '4', 'end_time', '结束时间', 'time', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-07-18 08:58:43', '', '2023-07-21 14:17:43');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (31, '5', 'counter_id', '取数id', 'bigint', 'Long', 'counterId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (32, '5', 'counter', '数值', 'bigint', 'Long', 'counter', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (33, '5', 'unit', '单位', 'varchar(255)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (34, '5', 'start_time', '请求时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (35, '5', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (36, '5', 'cron_remark', '周期', 'varchar(255)', 'String', 'cronRemark', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (37, '5', 't_flag', '周期标志：1', 'int', 'Long', 'tFlag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (38, '5', 'type', '工单类型', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (39, '5', 'local', '地区', 'varchar(255)', 'String', 'local', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (40, '5', 'state', '处理结果', 'tinyint', 'Long', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (42, '5', 'reason', '失败原因', 'text', 'String', 'reason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 12, 'admin', '2023-07-21 14:17:19', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (43, '4', 'cron_remark', '周期', 'varchar(255)', 'String', 'cronRemark', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, '', '2023-07-21 14:17:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (44, '4', 't_flag', '周期标志：1', 'int', 'Long', 'tFlag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-07-21 14:17:43', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (45, '5', 'time_use', '查询用时ms', 'text', 'String', 'timeUse', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 11, '', '2023-07-24 18:45:37', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (46, '5', 'query_time', '查询时间
', 'datetime', 'Date', 'queryTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, '', '2023-07-24 18:45:37', '', '2023-08-09 11:21:57');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (47, '5', 'type_d', '自定义归类', 'varchar(255)', 'String', 'typeD', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2023-08-09 11:21:57', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (48, '5', 'type_dc', '自定义归类子选项', 'varchar(255)', 'String', 'typeDc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, '', '2023-08-09 11:21:58', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (2, '6', 'pusher', '推送方', 'varchar', 'String', 'pusher', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (3, '6', 'category_path_code', '菜单路径编码', 'varchar', 'String', 'categoryPathCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (4, '6', 'biz_date_time', '业务数据日期时间', 'timestamp', 'Date', 'bizDateTime', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (6, '6', 'dimension_code', '维度编码,默认def', 'varchar', 'String', 'dimensionCode', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (7, '6', 'indicator_code', '指标编码', 'varchar', 'String', 'indicatorCode', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (1, '6', 'push_time', '数据推送时间', 'timestamp', 'Date', 'pushTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 1, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (5, '6', 'org_index_code_path', '组织编码路径(用@隔开,格式: 1.@省编码@; 2.@省编码@市编码@; 3.@省编码@市编码@区县编码@; 4.@省编码@市编码@区县编码@街道编码@)', 'varchar', 'String', 'orgIndexCodePath', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (8, '6', 'indicator_value', '指标值', 'varchar', 'String', 'indicatorValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (9, '6', 'indicator_value2', '指标值2', 'varchar', 'String', 'indicatorValue2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (10, '6', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (11, '6', 'id', NULL, 'int8', 'String', 'id', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', NULL, '', 11, 'admin', '2023-08-28 17:37:51.633247', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (21, '21', 'push_time', '数据推送时间', 'timestamp', 'Date', 'pushTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 1, 'admin', '2023-08-30 16:43:45.826446', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (22, '21', 'pusher', '推送方', 'varchar', 'String', 'pusher', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-08-30 16:43:45.826446', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (23, '21', 'id', NULL, 'int8', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', NULL, '', 3, 'admin', '2023-08-30 16:43:45.826446', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (24, '22', 'push_time', '数据推送时间', 'timestamp', 'Date', 'pushTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 1, 'admin', '2023-08-30 16:43:45.826446', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (25, '22', 'pusher', '推送方', 'varchar', 'String', 'pusher', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-08-30 16:43:45.826446', '', NULL);
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (26, '22', 'id', NULL, 'int8', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', NULL, '', 11, 'admin', '2023-08-30 16:43:45.826446', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for indicator
-- ----------------------------
DROP TABLE IF EXISTS "public"."indicator";
CREATE TABLE "public"."indicator" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "category_path_code" varchar(255) COLLATE "pg_catalog"."default",
  "biz_date_time" timestamp(6),
  "org_index_code_path" varchar(255) COLLATE "pg_catalog"."default",
  "dimension_code" varchar(255) COLLATE "pg_catalog"."default" DEFAULT 'def'::character varying,
  "indicator_code" varchar(255) COLLATE "pg_catalog"."default",
  "indicator_value" varchar(255) COLLATE "pg_catalog"."default",
  "indicator_value2" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "id" int8
)
;
ALTER TABLE "public"."indicator" OWNER TO "postgres";
COMMENT ON COLUMN "public"."indicator"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."indicator"."pusher" IS '推送方';
COMMENT ON COLUMN "public"."indicator"."category_path_code" IS '菜单路径编码';
COMMENT ON COLUMN "public"."indicator"."biz_date_time" IS '业务数据日期时间';
COMMENT ON COLUMN "public"."indicator"."org_index_code_path" IS '组织编码路径(用@隔开,格式: 1.@省编码@; 2.@省编码@市编码@; 3.@省编码@市编码@区县编码@; 4.@省编码@市编码@区县编码@街道编码@)';
COMMENT ON COLUMN "public"."indicator"."dimension_code" IS '维度编码,默认def';
COMMENT ON COLUMN "public"."indicator"."indicator_code" IS '指标编码';
COMMENT ON COLUMN "public"."indicator"."indicator_value" IS '指标值';
COMMENT ON COLUMN "public"."indicator"."indicator_value2" IS '指标值2';
COMMENT ON COLUMN "public"."indicator"."create_time" IS '创建时间';

-- ----------------------------
-- Records of indicator
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for indicator_1
-- ----------------------------
DROP TABLE IF EXISTS "public"."indicator_1";
CREATE TABLE "public"."indicator_1" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "category_path_code" varchar(255) COLLATE "pg_catalog"."default",
  "biz_date_time" timestamp(6),
  "org_index_code_path" varchar(255) COLLATE "pg_catalog"."default",
  "dimension_code" varchar(255) COLLATE "pg_catalog"."default" DEFAULT 'def'::character varying,
  "indicator_code" varchar(255) COLLATE "pg_catalog"."default",
  "indicator_value" varchar(255) COLLATE "pg_catalog"."default",
  "indicator_value2" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "id" int8
)
;
ALTER TABLE "public"."indicator_1" OWNER TO "postgres";
COMMENT ON COLUMN "public"."indicator_1"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."indicator_1"."pusher" IS '推送方';
COMMENT ON COLUMN "public"."indicator_1"."category_path_code" IS '菜单路径编码';
COMMENT ON COLUMN "public"."indicator_1"."biz_date_time" IS '业务数据日期时间';
COMMENT ON COLUMN "public"."indicator_1"."org_index_code_path" IS '组织编码路径(用@隔开,格式: 1.@省编码@; 2.@省编码@市编码@; 3.@省编码@市编码@区县编码@; 4.@省编码@市编码@区县编码@街道编码@)';
COMMENT ON COLUMN "public"."indicator_1"."dimension_code" IS '维度编码,默认def';
COMMENT ON COLUMN "public"."indicator_1"."indicator_code" IS '指标编码';
COMMENT ON COLUMN "public"."indicator_1"."indicator_value" IS '指标值';
COMMENT ON COLUMN "public"."indicator_1"."indicator_value2" IS '指标值2';
COMMENT ON COLUMN "public"."indicator_1"."create_time" IS '创建时间';

-- ----------------------------
-- Records of indicator_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for indicator_2
-- ----------------------------
DROP TABLE IF EXISTS "public"."indicator_2";
CREATE TABLE "public"."indicator_2" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "category_path_code" varchar(255) COLLATE "pg_catalog"."default",
  "biz_date_time" timestamp(6),
  "org_index_code_path" varchar(255) COLLATE "pg_catalog"."default",
  "dimension_code" varchar(255) COLLATE "pg_catalog"."default" DEFAULT 'def'::character varying,
  "indicator_code" varchar(255) COLLATE "pg_catalog"."default",
  "indicator_value" varchar(255) COLLATE "pg_catalog"."default",
  "indicator_value2" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "id" int8
)
;
ALTER TABLE "public"."indicator_2" OWNER TO "postgres";
COMMENT ON COLUMN "public"."indicator_2"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."indicator_2"."pusher" IS '推送方';
COMMENT ON COLUMN "public"."indicator_2"."category_path_code" IS '菜单路径编码';
COMMENT ON COLUMN "public"."indicator_2"."biz_date_time" IS '业务数据日期时间';
COMMENT ON COLUMN "public"."indicator_2"."org_index_code_path" IS '组织编码路径(用@隔开,格式: 1.@省编码@; 2.@省编码@市编码@; 3.@省编码@市编码@区县编码@; 4.@省编码@市编码@区县编码@街道编码@)';
COMMENT ON COLUMN "public"."indicator_2"."dimension_code" IS '维度编码,默认def';
COMMENT ON COLUMN "public"."indicator_2"."indicator_code" IS '指标编码';
COMMENT ON COLUMN "public"."indicator_2"."indicator_value" IS '指标值';
COMMENT ON COLUMN "public"."indicator_2"."indicator_value2" IS '指标值2';
COMMENT ON COLUMN "public"."indicator_2"."create_time" IS '创建时间';

-- ----------------------------
-- Records of indicator_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_blob_triggers";
CREATE TABLE "public"."qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;
ALTER TABLE "public"."qrtz_blob_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_calendars";
CREATE TABLE "public"."qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;
ALTER TABLE "public"."qrtz_calendars" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_cron_triggers";
CREATE TABLE "public"."qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."qrtz_cron_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', '*/5 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME101', '12', '0 0 3 ? * MON', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME102', '12', '* * * 1/1 * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME103', '12', '* * * 1/1 * ?', 'Asia/Shanghai');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_fired_triggers";
CREATE TABLE "public"."qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" bool,
  "requests_recovery" bool
)
;
ALTER TABLE "public"."qrtz_fired_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_job_details";
CREATE TABLE "public"."qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" bool NOT NULL,
  "is_nonconcurrent" bool NOT NULL,
  "is_update_data" bool NOT NULL,
  "requests_recovery" bool NOT NULL,
  "job_data" bytea
)
;
ALTER TABLE "public"."qrtz_job_details" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\207{\\014\\251\\000xpt\\000\\000pppt\\000\\0011t\\000\\0160/10 * * * * ?t\\000\\021ryTask.ryNoParamst\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\001t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\227\\240\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\207{\\014\\251\\000xpt\\000\\000pppt\\000\\0011t\\000\\0160/15 * * * * ?t\\000\\025ryTask.ryParams(''ry'')t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\002t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\234\\211\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\207{\\014\\251\\000xpt\\000\\000pppt\\000\\0011t\\000\\0160/20 * * * * ?t\\0008ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\003t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\345\\244\\232\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\207\\261\\374U\\310xpt\\000\\000pppt\\000\\0011t\\000\\015*/5 * * * * ?t\\000\\015bimsTask.testt\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000dt\\000\\006\\346\\265\\213\\350\\257\\225t\\000\\0011t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME101', '12', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\211g\\351\\344\\250xpt\\000\\000pppt\\000\\0011t\\000\\0150 0 3 ? * MONt\\000\\017bimsTask.count1t\\000\\00212sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000et\\000\\014\\345\\221\\250\\345\\217\\226\\347\\224\\250\\346\\210\\267t\\000\\0011t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME102', '12', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\211\\206\\355I\\010xpt\\000\\000pppt\\000\\0011t\\000\\015* * * 1/1 * ?t\\000\\017bimsTask.count3t\\000\\00212sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000ft\\000 \\346\\214\\211\\345\\244\\25124\\345\\260\\217\\346\\227\\266\\347\\273\\237\\350\\256\\241\\346\\210\\220\\345\\212\\237\\345\\267\\245\\345\\215\\225t\\000\\0011t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME103', '12', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001\\211\\210\\200s\\370xpt\\000\\000pppt\\000\\0011t\\000\\015* * * 1/1 * ?t\\000\\017bimsTask.count5t\\000\\00212sr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000gt\\000#\\346\\214\\211\\345\\244\\25124\\345\\260\\217\\346\\227\\266\\347\\273\\237\\350\\256\\241\\345\\267\\245\\345\\215\\225\\345\\244\\261\\350\\264\\245\\346\\225\\260t\\000\\0011t\\000\\0011x\\000');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_locks";
CREATE TABLE "public"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."qrtz_locks" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_locks" ("sched_name", "lock_name") VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');
INSERT INTO "public"."qrtz_locks" ("sched_name", "lock_name") VALUES ('RuoyiScheduler', 'STATE_ACCESS');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_paused_trigger_grps";
CREATE TABLE "public"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."qrtz_paused_trigger_grps" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_scheduler_state";
CREATE TABLE "public"."qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;
ALTER TABLE "public"."qrtz_scheduler_state" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simple_triggers";
CREATE TABLE "public"."qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;
ALTER TABLE "public"."qrtz_simple_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simprop_triggers";
CREATE TABLE "public"."qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" bool,
  "bool_prop_2" bool
)
;
ALTER TABLE "public"."qrtz_simprop_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_triggers";
CREATE TABLE "public"."qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;
ALTER TABLE "public"."qrtz_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1693549780000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, 2, '');
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1693549785000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, 2, '');
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1693549780000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, 2, '');
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', 'TASK_CLASS_NAME100', 'DEFAULT', NULL, 1693549780000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, -1, '');
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME101', '12', 'TASK_CLASS_NAME101', '12', NULL, 1693767600000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, -1, '');
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME102', '12', 'TASK_CLASS_NAME102', '12', NULL, 1693549777000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, -1, '');
INSERT INTO "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME103', '12', 'TASK_CLASS_NAME103', '12', NULL, 1693549777000, -1, 5, 'PAUSED', 'CRON', 1693549777000, 0, NULL, -1, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
  "config_id" int8 NOT NULL DEFAULT nextval('sys_config_config_id_seq'::regclass),
  "config_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "config_key" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "config_value" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "config_type" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "public"."sys_config" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_config"."config_id" IS '字典编码';
COMMENT ON COLUMN "public"."sys_config"."config_name" IS '字典排序';
COMMENT ON COLUMN "public"."sys_config"."config_key" IS '字典标签';
COMMENT ON COLUMN "public"."sys_config"."config_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_config"."config_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_config"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_config"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_config" IS '参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-04-13 22:37:20', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-04-13 22:37:20', '', NULL, '初始化密码 123456');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-04-13 22:37:20', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-04-13 22:37:20', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-04-13 22:37:20', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-04-13 22:37:20', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL DEFAULT nextval('sys_dept_dept_id_seq'::regclass),
  "parent_id" int8 DEFAULT 0,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "order_num" int4 DEFAULT 0,
  "leader" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phone" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "email" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
ALTER TABLE "public"."sys_dept" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS '部门id';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '父部门id';
COMMENT ON COLUMN "public"."sys_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_dept"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "public"."sys_dept"."phone" IS '联系电话';
COMMENT ON COLUMN "public"."sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '部门状态:0正常,1停用';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_dept" IS '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
INSERT INTO "public"."sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time") VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "dict_code" int8 NOT NULL DEFAULT nextval('sys_dict_data_dict_code_seq'::regclass),
  "dict_sort" int4 DEFAULT 0,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_value" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "public"."sys_dict_data" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_dict_data"."dict_code" IS '字典编码';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_sort" IS '字典排序';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_label" IS '字典标签';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_data"."css_class" IS '样式属性（其他样式扩展）';
COMMENT ON COLUMN "public"."sys_dict_data"."list_class" IS '表格回显样式';
COMMENT ON COLUMN "public"."sys_dict_data"."is_default" IS '是否默认（Y是 N否）';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '状态（0正常 1禁用）';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '性别男');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '性别女');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '性别未知');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '显示菜单');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '隐藏菜单');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '默认分组');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '系统分组');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '系统默认是');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '系统默认否');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '通知');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '公告');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '关闭状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '其他操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '新增操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '修改操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '删除操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '授权操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '导出操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '导入操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '强退操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '生成操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '清空操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '停用状态');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "dict_id" int8 NOT NULL DEFAULT nextval('sys_dict_type_dict_id_seq'::regclass),
  "dict_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "public"."sys_dict_type" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_dict_type"."dict_id" IS '字典主键';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '状态（0正常 1禁用）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '用户性别列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '菜单状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '系统开关列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '任务状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '任务分组列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '系统是否列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '通知类型列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '通知状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '操作类型列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '登录状态列表');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
  "job_id" int8 NOT NULL DEFAULT nextval('sys_job_job_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default" DEFAULT '3'::character varying,
  "concurrent" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "public"."sys_job" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_job"."job_id" IS '任务主键';
COMMENT ON COLUMN "public"."sys_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."sys_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "public"."sys_job"."concurrent" IS '是否并发执行（0允许 1禁止）';
COMMENT ON COLUMN "public"."sys_job"."status" IS '状态（0正常 1暂停）';
COMMENT ON COLUMN "public"."sys_job"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_job"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_job"."remark" IS '备注信息';
COMMENT ON TABLE "public"."sys_job" IS '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-04-13 22:37:20', '', NULL, '');
INSERT INTO "public"."sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-04-13 22:37:20', '', '2023-04-24 14:37:54', '');
INSERT INTO "public"."sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-04-13 22:37:20', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job_log";
CREATE TABLE "public"."sys_job_log" (
  "job_log_id" int8 NOT NULL DEFAULT nextval('sys_job_log_job_log_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
ALTER TABLE "public"."sys_job_log" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_job_log"."job_log_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "public"."sys_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "public"."sys_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."sys_job_log"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."sys_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_logininfor";
CREATE TABLE "public"."sys_logininfor" (
  "info_id" int8 NOT NULL DEFAULT nextval('sys_logininfor_info_id_seq'::regclass),
  "user_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "msg" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_time" timestamp(6)
)
;
ALTER TABLE "public"."sys_logininfor" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_logininfor"."info_id" IS '访问ID';
COMMENT ON COLUMN "public"."sys_logininfor"."user_name" IS '登录账号';
COMMENT ON COLUMN "public"."sys_logininfor"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "public"."sys_logininfor"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."sys_logininfor"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."sys_logininfor"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_logininfor"."status" IS '登录状态 0成功 1失败';
COMMENT ON COLUMN "public"."sys_logininfor"."msg" IS '提示消息';
COMMENT ON COLUMN "public"."sys_logininfor"."login_time" IS '访问时间';
COMMENT ON TABLE "public"."sys_logininfor" IS '系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" int8 NOT NULL DEFAULT nextval('sys_menu_menu_id_seq'::regclass),
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "order_num" int4,
  "path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "component" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "is_frame" int4 DEFAULT 1,
  "is_cache" int4 DEFAULT 0,
  "menu_type" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "visible" int4 DEFAULT 0,
  "status" int2 DEFAULT 0,
  "perms" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "icon" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "query" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_menu" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '菜单名称';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '请求地址';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '打开方式（menuItem页签 menuBlank新窗口）';
COMMENT ON COLUMN "public"."sys_menu"."is_frame" IS '是否为外链（0是 1否）';
COMMENT ON COLUMN "public"."sys_menu"."is_cache" IS '是否缓存（0缓存 1不缓存）';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '类型:M目录,C菜单,F按钮';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '菜单状态:0显示,1隐藏';
COMMENT ON COLUMN "public"."sys_menu"."status" IS '菜单状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '权限标识';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON COLUMN "public"."sys_menu"."query" IS '查询参数';
COMMENT ON TABLE "public"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', 0, 0, '', 'system', 'admin', '2023-04-13 22:37:20', '', NULL, '系统管理目录', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', 0, 0, '', 'monitor', 'admin', '2023-04-13 22:37:20', '', NULL, '系统监控目录', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', 0, 0, '', 'tool', 'admin', '2023-04-13 22:37:20', '', NULL, '系统工具目录', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', 0, 0, 'system:user:list', 'user', 'admin', '2023-04-13 22:37:20', '', NULL, '用户管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', 0, 0, 'system:role:list', 'peoples', 'admin', '2023-04-13 22:37:20', '', NULL, '角色管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', 0, 0, 'system:menu:list', 'tree-table', 'admin', '2023-04-13 22:37:20', '', NULL, '菜单管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', 0, 0, 'system:dept:list', 'tree', 'admin', '2023-04-13 22:37:20', '', NULL, '部门管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', 0, 0, 'system:post:list', 'post', 'admin', '2023-04-13 22:37:20', '', NULL, '岗位管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', 0, 0, 'system:dict:list', 'dict', 'admin', '2023-04-13 22:37:20', '', NULL, '字典管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', 0, 0, 'system:config:list', 'edit', 'admin', '2023-04-13 22:37:20', '', NULL, '参数设置菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', 0, 0, 'system:notice:list', 'message', 'admin', '2023-04-13 22:37:20', '', NULL, '通知公告菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', 0, 0, '', 'log', 'admin', '2023-04-13 22:37:20', '', NULL, '日志管理菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', 0, 0, 'monitor:online:list', 'online', 'admin', '2023-04-13 22:37:20', '', NULL, '在线用户菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', 0, 0, 'monitor:job:list', 'job', 'admin', '2023-04-13 22:37:20', '', NULL, '定时任务菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', 0, 0, 'monitor:druid:list', 'druid', 'admin', '2023-04-13 22:37:20', '', NULL, '数据监控菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', 0, 0, 'monitor:server:list', 'server', 'admin', '2023-04-13 22:37:20', '', NULL, '服务监控菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', 0, 0, 'monitor:cache:list', 'redis', 'admin', '2023-04-13 22:37:20', '', NULL, '缓存监控菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', 1, 0, 'C', 0, 0, 'monitor:cache:list', 'redis-list', 'admin', '2023-04-13 22:37:20', '', NULL, '缓存列表菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', 0, 0, 'tool:build:list', 'build', 'admin', '2023-04-13 22:37:20', '', NULL, '表单构建菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', 0, 0, 'tool:gen:list', 'code', 'admin', '2023-04-13 22:37:20', '', NULL, '代码生成菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', 0, 0, 'tool:swagger:list', 'swagger', 'admin', '2023-04-13 22:37:20', '', NULL, '系统接口菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', 0, 0, 'monitor:operlog:list', 'form', 'admin', '2023-04-13 22:37:20', '', NULL, '操作日志菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', 0, 0, 'monitor:logininfor:list', 'logininfor', 'admin', '2023-04-13 22:37:20', '', NULL, '登录日志菜单', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1000, '用户查询', 100, 1, '', '', 1, 0, 'F', 0, 0, 'system:user:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1001, '用户新增', 100, 2, '', '', 1, 0, 'F', 0, 0, 'system:user:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1002, '用户修改', 100, 3, '', '', 1, 0, 'F', 0, 0, 'system:user:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1003, '用户删除', 100, 4, '', '', 1, 0, 'F', 0, 0, 'system:user:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1004, '用户导出', 100, 5, '', '', 1, 0, 'F', 0, 0, 'system:user:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1005, '用户导入', 100, 6, '', '', 1, 0, 'F', 0, 0, 'system:user:import', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1006, '重置密码', 100, 7, '', '', 1, 0, 'F', 0, 0, 'system:user:resetPwd', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1007, '角色查询', 101, 1, '', '', 1, 0, 'F', 0, 0, 'system:role:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1008, '角色新增', 101, 2, '', '', 1, 0, 'F', 0, 0, 'system:role:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1009, '角色修改', 101, 3, '', '', 1, 0, 'F', 0, 0, 'system:role:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1010, '角色删除', 101, 4, '', '', 1, 0, 'F', 0, 0, 'system:role:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1011, '角色导出', 101, 5, '', '', 1, 0, 'F', 0, 0, 'system:role:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1012, '菜单查询', 102, 1, '', '', 1, 0, 'F', 0, 0, 'system:menu:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1013, '菜单新增', 102, 2, '', '', 1, 0, 'F', 0, 0, 'system:menu:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1014, '菜单修改', 102, 3, '', '', 1, 0, 'F', 0, 0, 'system:menu:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1015, '菜单删除', 102, 4, '', '', 1, 0, 'F', 0, 0, 'system:menu:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1016, '部门查询', 103, 1, '', '', 1, 0, 'F', 0, 0, 'system:dept:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1017, '部门新增', 103, 2, '', '', 1, 0, 'F', 0, 0, 'system:dept:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1018, '部门修改', 103, 3, '', '', 1, 0, 'F', 0, 0, 'system:dept:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1019, '部门删除', 103, 4, '', '', 1, 0, 'F', 0, 0, 'system:dept:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1020, '岗位查询', 104, 1, '', '', 1, 0, 'F', 0, 0, 'system:post:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1021, '岗位新增', 104, 2, '', '', 1, 0, 'F', 0, 0, 'system:post:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1022, '岗位修改', 104, 3, '', '', 1, 0, 'F', 0, 0, 'system:post:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1023, '岗位删除', 104, 4, '', '', 1, 0, 'F', 0, 0, 'system:post:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1024, '岗位导出', 104, 5, '', '', 1, 0, 'F', 0, 0, 'system:post:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1025, '字典查询', 105, 1, '#', '', 1, 0, 'F', 0, 0, 'system:dict:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1026, '字典新增', 105, 2, '#', '', 1, 0, 'F', 0, 0, 'system:dict:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1027, '字典修改', 105, 3, '#', '', 1, 0, 'F', 0, 0, 'system:dict:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1028, '字典删除', 105, 4, '#', '', 1, 0, 'F', 0, 0, 'system:dict:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1029, '字典导出', 105, 5, '#', '', 1, 0, 'F', 0, 0, 'system:dict:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1030, '参数查询', 106, 1, '#', '', 1, 0, 'F', 0, 0, 'system:config:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1031, '参数新增', 106, 2, '#', '', 1, 0, 'F', 0, 0, 'system:config:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1032, '参数修改', 106, 3, '#', '', 1, 0, 'F', 0, 0, 'system:config:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1033, '参数删除', 106, 4, '#', '', 1, 0, 'F', 0, 0, 'system:config:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1034, '参数导出', 106, 5, '#', '', 1, 0, 'F', 0, 0, 'system:config:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1035, '公告查询', 107, 1, '#', '', 1, 0, 'F', 0, 0, 'system:notice:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1036, '公告新增', 107, 2, '#', '', 1, 0, 'F', 0, 0, 'system:notice:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1037, '公告修改', 107, 3, '#', '', 1, 0, 'F', 0, 0, 'system:notice:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1038, '公告删除', 107, 4, '#', '', 1, 0, 'F', 0, 0, 'system:notice:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1039, '操作查询', 500, 1, '#', '', 1, 0, 'F', 0, 0, 'monitor:operlog:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1040, '操作删除', 500, 2, '#', '', 1, 0, 'F', 0, 0, 'monitor:operlog:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1041, '日志导出', 500, 3, '#', '', 1, 0, 'F', 0, 0, 'monitor:operlog:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1042, '登录查询', 501, 1, '#', '', 1, 0, 'F', 0, 0, 'monitor:logininfor:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1043, '登录删除', 501, 2, '#', '', 1, 0, 'F', 0, 0, 'monitor:logininfor:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1044, '日志导出', 501, 3, '#', '', 1, 0, 'F', 0, 0, 'monitor:logininfor:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1045, '账户解锁', 501, 4, '#', '', 1, 0, 'F', 0, 0, 'monitor:logininfor:unlock', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', 0, 0, 'monitor:online:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', 0, 0, 'monitor:online:batchLogout', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', 0, 0, 'monitor:online:forceLogout', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', 0, 0, 'monitor:job:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', 0, 0, 'monitor:job:add', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', 0, 0, 'monitor:job:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', 0, 0, 'monitor:job:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', 0, 0, 'monitor:job:changeStatus', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1054, '任务导出', 110, 6, '#', '', 1, 0, 'F', 0, 0, 'monitor:job:export', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1055, '生成查询', 116, 1, '#', '', 1, 0, 'F', 0, 0, 'tool:gen:query', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1056, '生成修改', 116, 2, '#', '', 1, 0, 'F', 0, 0, 'tool:gen:edit', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1057, '生成删除', 116, 3, '#', '', 1, 0, 'F', 0, 0, 'tool:gen:remove', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1058, '导入代码', 116, 4, '#', '', 1, 0, 'F', 0, 0, 'tool:gen:import', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1059, '预览代码', 116, 5, '#', '', 1, 0, 'F', 0, 0, 'tool:gen:preview', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark", "query") VALUES (1060, '生成代码', 116, 6, '#', '', 1, 0, 'F', 0, 0, 'tool:gen:code', '#', 'admin', '2023-04-13 22:37:20', '', NULL, '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
  "notice_id" int8 NOT NULL DEFAULT nextval('sys_notice_notice_id_seq'::regclass),
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" varchar(2000) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_notice" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_notice"."notice_id" IS '公告主键';
COMMENT ON COLUMN "public"."sys_notice"."notice_title" IS '公告标题';
COMMENT ON COLUMN "public"."sys_notice"."notice_type" IS '公告类型（1通知 2公告）';
COMMENT ON COLUMN "public"."sys_notice"."notice_content" IS '公告内容';
COMMENT ON COLUMN "public"."sys_notice"."status" IS '公告状态（0正常 1关闭）';
COMMENT ON COLUMN "public"."sys_notice"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_notice"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_notice"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_notice"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_notice" IS '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_notice" ("notice_id", "notice_title", "notice_type", "notice_content", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2 ', '5paw54mI5pys5YaF5a65', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '管理员');
INSERT INTO "public"."sys_notice" ("notice_id", "notice_title", "notice_type", "notice_content", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1 ', '57u05oqk5YaF5a65', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
  "oper_id" int8 NOT NULL DEFAULT nextval('sys_oper_log_oper_id_seq'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "business_type" int4 DEFAULT 0,
  "method" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "request_method" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operator_type" int4 DEFAULT 0,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_url" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_ip" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_location" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_param" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "json_result" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_time" timestamp(6),
  "cost_time" int8
)
;
ALTER TABLE "public"."sys_oper_log" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '业务类型（0其它 1新增 2修改 3删除）';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."sys_oper_log"."operator_type" IS '操作类别（0其它 1后台用户 2手机端用户）';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '登录账号';
COMMENT ON COLUMN "public"."sys_oper_log"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '请求URL';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_ip" IS '主机地址';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_location" IS '操作地点';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "public"."sys_oper_log"."status" IS '操作状态（0正常 1异常）';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_oper_log"."cost_time" IS '消耗时间';
COMMENT ON TABLE "public"."sys_oper_log" IS '操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (100, '执行查询sql语句', 0, 'com.ruoyi.web.controller.bims.BimsTableNormalQueryController.execQuery()', 'GET', 1, 'admin', NULL, '/web/query/execQuery/3474', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200,"data":[{"ATTRID":7,"ATTRNAME":"NasPort","ATTRTYPE":1,"DESCRIPTION":"Radius包中的NAS_Port属性值"},{"ATTRID":8,"ATTRNAME":"NasPortType","ATTRTYPE":1,"DESCRIPTION":"Radius包中的NAS_Port_Type属性值"},{"ATTRID":9,"ATTRNAME":"VPI","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":10,"ATTRNAME":"VCI","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":11,"ATTRNAME":"VlanId","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":12,"ATTRNAME":"Slot","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":13,"ATTRNAME":"SubSlot","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":14,"ATTRNAME":"Port","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":15,"ATTRNAME":"Mack","ATTRTYPE":2,"DESCRIPTION":"根据Radius包中相应的属性分析得到，各厂商不同"},{"ATTRID":16,"ATTRNAME":"Vendor","ATTRTYPE":2,"DESCRIPTION":"根据上面的NASIP查找其对应的厂商名"},{"ATTRID":99,"ATTRNAME":"UserType","ATTRTYPE":1,"DESCRIPTION":"参见MD_SYSCODE表"},{"ATTRID":101,"ATTRNAME":"Password","ATTRTYPE":2,"DESCRIPTION":"Radius包中的User_Password属性值或CHAP_Password属性值"},{"ATTRID":102,"ATTRNAME":"Authenticator","ATTRTYPE":2,"DESCRIPTION":"Radius认证请求包中的Authenticator序列"},{"ATTRID":103,"ATTRNAME":"Prottype","ATTRTYPE":1,"DESCRIPTION":"如果Lc-Password由User_Password属性值构成在为1（CHAP），否则为0  (PAP)"},{"ATTRID":104,"ATTRNAME":"Secret","ATTRTYPE":2,"DESCRIPTION":"根据上面的NASIP查找得到相应的通讯密钥"},{"ATTRID":201,"ATTRNAME":"Filter","ATTRTYPE":2,"DESCRIPTION":"返回用户上网的返回权限，如：169用户返回local"},{"ATTRID":202,"ATTRNAME":"Session_timeout","ATTRTYPE":1,"DESCRIPTION":"如果下面的Lc-Session_Timeout_type值为时长限制，则以秒为单位，如果为流量限制则以K为单位"},{"ATTRID":203,"ATTRNAME":"Framed_ip","ATTRTYPE":2,"DESCRIPTION":"用户上网的IP地址，如果由设备分配则此处填255.255.255.254如果是Radius分配则此处填分配的ip地址"},{"ATTRID":204,"ATTRNAME":"Service_Flag","ATTRTYPE":1,"DESCRIPTION":"用户上网的方式默认为Framed既为值2"},{"ATTRID":205,"ATTRNAME":"Framed_ip_potocol","ATTRTYPE":2,"DESCRIPTION":"用户上网的Framed_Potocol默认为PPP既为值1"},{"ATTRID":206,"ATTRNAME":"Framed_ip_netmask","ATTRTYPE":2,"D', '0', NULL, '2023-08-25 18:13:01.106043', 311);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (120, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{"tables":"indicator"}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-28 17:37:51.896371', 251);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (121, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"indicator"}', NULL, '0', NULL, '2023-08-28 17:42:29.823915', 165);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (140, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{"tables":"testd_month,testd_hash"}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-30 16:43:45.995516', 716);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (141, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"testd_hash,testd_month"}', NULL, '0', NULL, '2023-08-30 16:44:08.937436', 296);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (160, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:45:37.766627', 198);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (180, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:47:55.806248', 146);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (200, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:51:46.411426', 138);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (220, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":101,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:54:47.71403', 79);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (201, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"DEFAULT","jobId":100,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:55:46.898997', 44);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (202, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":101,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:55:57.969251', 37);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (240, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 16:58:52.837782', 177);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (260, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 17:01:09.462413', 200);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (280, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '10.0.0.206', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-08-31 17:05:46.359958', 591);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (300, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 09:54:27.013716', 129);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (320, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":103,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 09:54:58.316742', 65);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (340, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 10:22:39.37813', 142);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (341, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":103,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 10:22:43.768038', 44);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (360, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":103,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 13:19:29.778716', 187);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (361, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":102,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 13:26:57.517638', 449);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (380, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":103,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 13:29:48.607522', 509);
INSERT INTO "public"."sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time", "cost_time") VALUES (400, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{"jobGroup":"12","jobId":103,"misfirePolicy":"0","params":{}}', '{"msg":"操作成功","code":200}', '0', NULL, '2023-09-01 14:30:15.167275', 104);
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_post";
CREATE TABLE "public"."sys_post" (
  "post_id" int8 NOT NULL DEFAULT nextval('sys_post_post_id_seq'::regclass),
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "public"."sys_post" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_post"."post_id" IS '岗位ID';
COMMENT ON COLUMN "public"."sys_post"."post_code" IS '岗位编码';
COMMENT ON COLUMN "public"."sys_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "public"."sys_post"."post_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_post"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_post"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_post"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_post"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_post"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_post" IS '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-04-13 22:37:20', '', NULL, '');
INSERT INTO "public"."sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-04-13 22:37:20', '', NULL, '');
INSERT INTO "public"."sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-04-13 22:37:20', '', NULL, '');
INSERT INTO "public"."sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-04-13 22:37:20', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" int8 NOT NULL DEFAULT nextval('sys_role_role_id_seq'::regclass),
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" int4,
  "data_scope" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "menu_check_strictly" bool DEFAULT true,
  "dept_check_strictly" bool DEFAULT true,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "public"."sys_role" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_key" IS '角色权限字符串';
COMMENT ON COLUMN "public"."sys_role"."role_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_role"."data_scope" IS '数据范围（1：全部数据权限 2：自定数据权限）';
COMMENT ON COLUMN "public"."sys_role"."status" IS '角色状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_role"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_role" IS '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "menu_check_strictly", "dept_check_strictly", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '超级管理员', 'admin', 1, '1', 't', 't', '0', '0', 'admin', '2023-04-13 22:37:20', '', NULL, '超级管理员');
INSERT INTO "public"."sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "menu_check_strictly", "dept_check_strictly", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '普通角色', 'common', 2, '2', 't', 't', '0', '0', 'admin', '2023-04-13 22:37:20', 'admin', '2023-04-18 09:39:31', '普通角色');
INSERT INTO "public"."sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "menu_check_strictly", "dept_check_strictly", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (100, '创意维护', 'support', 3, '1', 't', 't', '0', '0', 'ry', '2023-05-05 15:47:23', 'admin', '2023-05-05 15:50:12', NULL);
INSERT INTO "public"."sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "menu_check_strictly", "dept_check_strictly", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (101, '电信系统管理员', 'bimsSuper', 0, '1', 't', 't', '0', '0', 'admin', '2023-05-05 15:57:15', 'admin', '2023-05-05 15:57:51', NULL);
INSERT INTO "public"."sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "menu_check_strictly", "dept_check_strictly", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (102, '电信业务维护员', 'bimsCommon', 1, '1', 't', 't', '0', '0', 'admin', '2023-05-05 15:59:41', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
ALTER TABLE "public"."sys_role_dept" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_role_dept"."role_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_role_dept"."dept_id" IS '岗位ID';
COMMENT ON TABLE "public"."sys_role_dept" IS '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_role_dept" ("role_id", "dept_id") VALUES (2, 100);
INSERT INTO "public"."sys_role_dept" ("role_id", "dept_id") VALUES (2, 101);
INSERT INTO "public"."sys_role_dept" ("role_id", "dept_id") VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
ALTER TABLE "public"."sys_role_menu" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."sys_role_menu" IS '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 2);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 3);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 100);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 101);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 102);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 103);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 104);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 105);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 106);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 107);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 108);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 109);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 110);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 111);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 112);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 113);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 114);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 115);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 116);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 117);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 500);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 501);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1000);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1001);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1002);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1003);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1004);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1005);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1006);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1007);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1008);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1009);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1010);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1011);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1012);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1013);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1014);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1015);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1016);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1017);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1018);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1019);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1020);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1021);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1022);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1023);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1024);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1025);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1026);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1027);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1028);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1029);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1030);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1031);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1032);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1033);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1034);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1035);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1036);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1037);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1038);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1039);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1040);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1041);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1042);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1043);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1044);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1045);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1046);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1047);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1048);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1049);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1050);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1051);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1052);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1053);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1054);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1055);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1056);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1057);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1058);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1059);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (2, 1060);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 2);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 100);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 101);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 102);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 105);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 107);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 108);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 109);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 110);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 111);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 112);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 113);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 114);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 500);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 501);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1000);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1001);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1002);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1003);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1004);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1005);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1006);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1007);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1008);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1009);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1010);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1011);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1012);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1013);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1014);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1015);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1025);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1026);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1027);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1028);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1029);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1035);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1036);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1037);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1038);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1039);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1040);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1041);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1042);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1043);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1044);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1045);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1046);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1047);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1048);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1049);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1050);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1051);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1052);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1053);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (100, 1054);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 1);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 105);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 1025);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 2000);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 2002);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 2003);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 2005);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (101, 2006);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 1);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 105);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 1025);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 2000);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 2003);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 2005);
INSERT INTO "public"."sys_role_menu" ("role_id", "menu_id") VALUES (102, 2006);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" int8 NOT NULL DEFAULT nextval('sys_user_user_id_seq'::regclass),
  "dept_id" int8,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "user_type" varchar(2) COLLATE "pg_catalog"."default" DEFAULT '00'::character varying,
  "email" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phonenumber" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sex" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "salt" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_date" timestamp(6),
  "pwd_update_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_user" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user"."dept_id" IS '部门ID';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '登录账号';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '类型:Y默认用户,N非默认用户';
COMMENT ON COLUMN "public"."sys_user"."email" IS '用户邮箱';
COMMENT ON COLUMN "public"."sys_user"."phonenumber" IS '手机号码';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '用户性别（0男 1女 2未知）';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像路径';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."salt" IS '盐加密';
COMMENT ON COLUMN "public"."sys_user"."status" IS '帐号状态:0正常,1禁用';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '拒绝登录描述';
COMMENT ON COLUMN "public"."sys_user"."login_ip" IS '最后登录IP';
COMMENT ON COLUMN "public"."sys_user"."login_date" IS '最后登录时间';
COMMENT ON COLUMN "public"."sys_user"."pwd_update_date" IS '密码最后更新时间';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_user"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_user" IS '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_user" ("user_id", "dept_id", "user_name", "nick_name", "user_type", "email", "phonenumber", "sex", "avatar", "password", "salt", "status", "del_flag", "login_ip", "login_date", "pwd_update_date", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$tRj9jZ6ZshSWxkZLPVYC7eOmYE3ByqIOzsPPbPkv8dygIA3wQgQsG', '', '0', '0', '127.0.0.1', '2023-09-01 14:29:54.038', NULL, 'admin', '2023-04-13 22:37:20', '', '2023-09-01 14:29:54.052358', '管理员');
INSERT INTO "public"."sys_user" ("user_id", "dept_id", "user_name", "nick_name", "user_type", "email", "phonenumber", "sex", "avatar", "password", "salt", "status", "del_flag", "login_ip", "login_date", "pwd_update_date", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$tRj9jZ6ZshSWxkZLPVYC7eOmYE3ByqIOzsPPbPkv8dygIA3wQgQsG', '', '0', '0', '127.0.0.1', '2023-05-05 15:45:05', NULL, 'admin', '2023-04-13 22:37:20', '', '2023-05-05 15:45:05', '测试员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_online";
CREATE TABLE "public"."sys_user_online" (
  "sessionId" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "login_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "start_timestamp" timestamp(6),
  "last_access_time" timestamp(6),
  "expire_time" int4 DEFAULT 0
)
;
ALTER TABLE "public"."sys_user_online" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_user_online"."sessionId" IS '用户会话id';
COMMENT ON COLUMN "public"."sys_user_online"."login_name" IS '登录账号';
COMMENT ON COLUMN "public"."sys_user_online"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_user_online"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "public"."sys_user_online"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."sys_user_online"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."sys_user_online"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_user_online"."status" IS '在线状态on_line在线off_line离线';
COMMENT ON COLUMN "public"."sys_user_online"."start_timestamp" IS 'session创建时间';
COMMENT ON COLUMN "public"."sys_user_online"."last_access_time" IS 'session最后访问时间';
COMMENT ON COLUMN "public"."sys_user_online"."expire_time" IS '超时时间，单位为分钟';
COMMENT ON TABLE "public"."sys_user_online" IS '在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;
ALTER TABLE "public"."sys_user_post" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_user_post"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_post"."post_id" IS '岗位ID';
COMMENT ON TABLE "public"."sys_user_post" IS '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_user_post" ("user_id", "post_id") VALUES (1, 1);
INSERT INTO "public"."sys_user_post" ("user_id", "post_id") VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
ALTER TABLE "public"."sys_user_role" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "public"."sys_user_role" IS '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_user_role" ("user_id", "role_id") VALUES (1, 1);
INSERT INTO "public"."sys_user_role" ("user_id", "role_id") VALUES (1, 101);
INSERT INTO "public"."sys_user_role" ("user_id", "role_id") VALUES (1, 102);
INSERT INTO "public"."sys_user_role" ("user_id", "role_id") VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for testd_hash
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_hash";
CREATE TABLE "public"."testd_hash" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_hash" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_hash"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_hash"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_hash
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_hash_1
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_hash_1";
CREATE TABLE "public"."testd_hash_1" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_hash_1" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_hash_1"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_hash_1"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_hash_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_hash_2
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_hash_2";
CREATE TABLE "public"."testd_hash_2" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_hash_2" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_hash_2"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_hash_2"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_hash_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month";
CREATE TABLE "public"."testd_month" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202101
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202101";
CREATE TABLE "public"."testd_month_202101" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202101" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202101"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202101"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202101
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202102
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202102";
CREATE TABLE "public"."testd_month_202102" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202102" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202102"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202102"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202102
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202103
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202103";
CREATE TABLE "public"."testd_month_202103" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202103" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202103"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202103"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202103
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202104
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202104";
CREATE TABLE "public"."testd_month_202104" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202104" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202104"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202104"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202104
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202105
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202105";
CREATE TABLE "public"."testd_month_202105" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202105" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202105"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202105"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202105
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202106
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202106";
CREATE TABLE "public"."testd_month_202106" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202106" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202106"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202106"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202106
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202107
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202107";
CREATE TABLE "public"."testd_month_202107" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202107" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202107"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202107"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202107
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202108
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202108";
CREATE TABLE "public"."testd_month_202108" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202108" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202108"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202108"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202108
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202109
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202109";
CREATE TABLE "public"."testd_month_202109" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202109" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202109"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202109"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202109
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202110
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202110";
CREATE TABLE "public"."testd_month_202110" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202110" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202110"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202110"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202110
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202111
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202111";
CREATE TABLE "public"."testd_month_202111" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202111" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202111"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202111"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202111
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202112
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202112";
CREATE TABLE "public"."testd_month_202112" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202112" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202112"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202112"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202112
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202201
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202201";
CREATE TABLE "public"."testd_month_202201" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202201" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202201"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202201"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202201
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202202
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202202";
CREATE TABLE "public"."testd_month_202202" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202202" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202202"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202202"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202202
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202203
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202203";
CREATE TABLE "public"."testd_month_202203" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202203" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202203"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202203"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202203
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202204
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202204";
CREATE TABLE "public"."testd_month_202204" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202204" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202204"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202204"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202204
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202205
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202205";
CREATE TABLE "public"."testd_month_202205" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202205" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202205"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202205"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202205
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202206
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202206";
CREATE TABLE "public"."testd_month_202206" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202206" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202206"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202206"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202206
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202207
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202207";
CREATE TABLE "public"."testd_month_202207" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202207" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202207"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202207"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202207
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202208
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202208";
CREATE TABLE "public"."testd_month_202208" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202208" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202208"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202208"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202208
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202209
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202209";
CREATE TABLE "public"."testd_month_202209" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202209" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202209"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202209"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202209
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202210
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202210";
CREATE TABLE "public"."testd_month_202210" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202210" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202210"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202210"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202210
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202211
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202211";
CREATE TABLE "public"."testd_month_202211" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202211" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202211"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202211"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202211
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202212
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202212";
CREATE TABLE "public"."testd_month_202212" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202212" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202212"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202212"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202212
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202301
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202301";
CREATE TABLE "public"."testd_month_202301" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202301" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202301"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202301"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202301
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202302
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202302";
CREATE TABLE "public"."testd_month_202302" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202302" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202302"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202302"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202302
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202303
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202303";
CREATE TABLE "public"."testd_month_202303" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202303" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202303"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202303"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202303
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202304
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202304";
CREATE TABLE "public"."testd_month_202304" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202304" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202304"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202304"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202304
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202305
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202305";
CREATE TABLE "public"."testd_month_202305" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202305" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202305"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202305"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202305
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202306
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202306";
CREATE TABLE "public"."testd_month_202306" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202306" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202306"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202306"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202306
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202307
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202307";
CREATE TABLE "public"."testd_month_202307" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202307" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202307"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202307"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202307
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202308
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202308";
CREATE TABLE "public"."testd_month_202308" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202308" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202308"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202308"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202308
-- ----------------------------
BEGIN;
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:35.667', '24', 904046142243733504);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.088', '5', 904046144059867137);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.131', '22', 904046144173113344);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.145', '28', 904046144223444993);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.154', '167', 904046144261193728);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.163', '16', 904046144311525377);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.186', '14', 904046144395411456);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.194', '15', 904046144424771585);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.2', '19', 904046144449937408);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.205', '34', 904046144470908929);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.213', '33', 904046144500269056);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.217', '13', 904046144517046273);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.22', '27', 904046144529629184);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.226', '17', 904046144558989313);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.232', '5', 904046144584155136);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.237', '18', 904046144613515265);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.246', '16', 904046144647069696);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.253', '24', 904046144672235521);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.256', '2', 904046144684818432);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.259', '1', 904046144697401345);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.264', '6', 904046144722567168);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.268', '3', 904046144730955777);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.272', '3', 904046144747732992);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.275', '1', 904046144760315905);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.291', '2', 904046144844201984);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.301', '9', 904046144873562113);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.308', '7', 904046144902922240);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.313', '92', 904046144928088065);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.317', '34', 904046144944865280);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.325', '22', 904046144999391233);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.34', '41', 904046145041334272);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.348', '18', 904046145074888705);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.354', '10', 904046145095860224);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.358', '3', 904046145121026049);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.366', '1', 904046145146191872);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.37', '28', 904046145158774785);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.372', '8', 904046145175552000);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.377', '20', 904046145188134913);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.384', '5', 904046145221689344);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.39', '25', 904046145242660865);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.398', '4', 904046145292992512);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.407', '1', 904046145326546945);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.414', '37', 904046145355907072);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.421', '89', 904046145381072897);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.425', '252', 904046145393655808);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.428', '23', 904046145414627329);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.434', '19', 904046145448181760);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.444', '214', 904046145477541889);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.448', '13', 904046145490124800);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.451', '15', 904046145498513409);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.465', '59', 904046145574010880);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.472', '11', 904046145590788097);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.478', '18', 904046145615953920);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.482', '8', 904046145645314049);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.491', '2', 904046145683062784);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.502', '14', 904046145712422913);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.507', '2', 904046145737588736);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.517', '20', 904046145779531777);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.523', '18', 904046145804697600);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.528', '37', 904046145842446337);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.537', '37', 904046145863417856);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.542', '14', 904046145888583681);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.547', '22', 904046145905360896);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.557', '7', 904046146006024193);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.579', '32', 904046146043772928);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.588', '3', 904046146085715969);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.594', '13', 904046146098298880);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.599', '18', 904046146119270401);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.605', '5', 904046146165407744);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.625', '26', 904046146232516609);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.63', '67', 904046146274459648);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.64', '26', 904046146291236865);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.693', '1', 904046146538700800);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.71', '28', 904046146589032449);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.723', '80', 904046146681307136);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.739', '82', 904046146710667265);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.744', '38', 904046146731638784);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.75', '34', 904046146756804609);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.756', '44', 904046146786164736);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.762', '25', 904046146807136257);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.767', '17', 904046146832302080);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.789', '5', 904046146932965377);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.797', '6', 904046146958131200);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.802', '8', 904046146974908417);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.808', '68', 904046147016851456);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.818', '19', 904046147062988801);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.833', '3', 904046147134291968);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.847', '10', 904046147163652097);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.851', '9', 904046147180429312);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.855', '1', 904046147197206529);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.859', '7', 904046147213983744);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.864', '51', 904046147230760961);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.867', '13', 904046147243343872);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.869', '100', 904046147251732481);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.87', '64', 904046147268509696);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.877', '42', 904046147297869825);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.885', '6', 904046147364978688);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.9', '8', 904046147385950209);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.905', '29', 904046147406921728);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.909', '9', 904046147419504641);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.912', '27', 904046147432087552);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.915', '21', 904046147444670465);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.918', '7', 904046147461447680);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.922', '2', 904046147474030593);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.925', '32', 904046147486613504);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.941', '55', 904046147587276801);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.955', '3', 904046147616636928);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.961', '73', 904046147637608449);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.978', '64', 904046147708911616);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.982', '12', 904046147725688833);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.985', '34', 904046147738271744);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.987', '11', 904046147746660353);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.989', '4', 904046147755048960);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.99', '40', 904046147763437569);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.993', '19', 904046147767631872);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.994', '19', 904046147776020481);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:37.997', '8', 904046147788603392);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.002', '22', 904046147813769217);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.006', '6', 904046147822157824);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.009', '16', 904046147843129345);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.013', '4', 904046147859906560);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.016', '17', 904046147876683777);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.023', '5', 904046147897655296);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.025', '2', 904046147906043905);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.027', '3', 904046147914432512);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.03', '1', 904046147927015425);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.034', '60', 904046147943792640);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.038', '126', 904046147968958465);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.047', '25', 904046148015095808);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.074', '52', 904046148124147713);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.083', '22', 904046148149313536);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.085', '36', 904046148153507841);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.086', '57', 904046148178673664);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.093', '12', 904046148199645185);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.1', '15', 904046148224811008);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.103', '3', 904046148233199617);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.105', '9', 904046148245782528);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.11', '31', 904046148262559745);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.112', '5', 904046148270948352);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.114', '13', 904046148279336961);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.117', '2', 904046148287725568);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.119', '8', 904046148300308481);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.121', '1', 904046148308697088);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.123', '190', 904046148317085697);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.125', '6', 904046148325474304);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.127', '32', 904046148333862913);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.129', '25', 904046148342251520);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.131', '21', 904046148350640129);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.134', '37', 904046148363223040);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.135', '68', 904046148367417345);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.137', '46', 904046148371611648);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.138', '19', 904046148380000257);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.139', '31', 904046148384194560);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.14', '6', 904046148388388865);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.143', '5', 904046148396777472);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.145', '4', 904046148405166081);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.146', '40', 904046148413554688);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.15', '34', 904046148430331905);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.152', '23', 904046148438720512);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.154', '3', 904046148442914817);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.156', '2', 904046148455497728);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.181', '17', 904046148560355329);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.184', '14', 904046148568743936);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.186', '3', 904046148577132545);
INSERT INTO "public"."testd_month_202308" ("push_time", "pusher", "id") VALUES ('2023-08-31 16:36:38.187', '18', 904046148581326848);
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202309
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202309";
CREATE TABLE "public"."testd_month_202309" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202309" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202309"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202309"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202309
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202310
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202310";
CREATE TABLE "public"."testd_month_202310" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202310" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202310"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202310"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202310
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202311
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202311";
CREATE TABLE "public"."testd_month_202311" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202311" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202311"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202311"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202311
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202312
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202312";
CREATE TABLE "public"."testd_month_202312" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202312" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202312"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202312"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202312
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202401
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202401";
CREATE TABLE "public"."testd_month_202401" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202401" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202401"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202401"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202401
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202402
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202402";
CREATE TABLE "public"."testd_month_202402" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202402" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202402"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202402"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202402
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202403
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202403";
CREATE TABLE "public"."testd_month_202403" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202403" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202403"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202403"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202403
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202404
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202404";
CREATE TABLE "public"."testd_month_202404" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202404" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202404"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202404"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202404
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202405
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202405";
CREATE TABLE "public"."testd_month_202405" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202405" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202405"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202405"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202405
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202406
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202406";
CREATE TABLE "public"."testd_month_202406" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202406" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202406"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202406"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202406
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202407
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202407";
CREATE TABLE "public"."testd_month_202407" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202407" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202407"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202407"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202407
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202408
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202408";
CREATE TABLE "public"."testd_month_202408" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202408" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202408"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202408"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202409
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202409";
CREATE TABLE "public"."testd_month_202409" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202409" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202409"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202409"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202409
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202410
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202410";
CREATE TABLE "public"."testd_month_202410" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202410" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202410"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202410"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202410
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202411
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202411";
CREATE TABLE "public"."testd_month_202411" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202411" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202411"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202411"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202411
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202412
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202412";
CREATE TABLE "public"."testd_month_202412" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202412" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202412"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202412"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202412
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202501
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202501";
CREATE TABLE "public"."testd_month_202501" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202501" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202501"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202501"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202501
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202502
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202502";
CREATE TABLE "public"."testd_month_202502" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202502" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202502"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202502"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202502
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202503
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202503";
CREATE TABLE "public"."testd_month_202503" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202503" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202503"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202503"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202503
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202504
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202504";
CREATE TABLE "public"."testd_month_202504" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202504" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202504"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202504"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202504
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202505
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202505";
CREATE TABLE "public"."testd_month_202505" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202505" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202505"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202505"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202505
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202506
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202506";
CREATE TABLE "public"."testd_month_202506" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202506" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202506"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202506"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202506
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202507
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202507";
CREATE TABLE "public"."testd_month_202507" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202507" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202507"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202507"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202507
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202508
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202508";
CREATE TABLE "public"."testd_month_202508" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202508" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202508"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202508"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202508
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202509
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202509";
CREATE TABLE "public"."testd_month_202509" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202509" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202509"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202509"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202509
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202510
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202510";
CREATE TABLE "public"."testd_month_202510" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202510" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202510"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202510"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202510
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202511
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202511";
CREATE TABLE "public"."testd_month_202511" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202511" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202511"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202511"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202511
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for testd_month_202512
-- ----------------------------
DROP TABLE IF EXISTS "public"."testd_month_202512";
CREATE TABLE "public"."testd_month_202512" (
  "push_time" timestamp(6),
  "pusher" varchar(255) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
ALTER TABLE "public"."testd_month_202512" OWNER TO "postgres";
COMMENT ON COLUMN "public"."testd_month_202512"."push_time" IS '数据推送时间';
COMMENT ON COLUMN "public"."testd_month_202512"."pusher" IS '推送方';

-- ----------------------------
-- Records of testd_month_202512
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Function structure for auto_insert_sub_indicator_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."auto_insert_sub_indicator_table"();
CREATE OR REPLACE FUNCTION "public"."auto_insert_sub_indicator_table"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE
    time_column_name    text ;			-- 父表中用于分区的时间字段的名称（推送时间）
    curMM               varchar(6);		-- 'YYYYMM'字串,用做分区子表的后缀
    isExist             boolean;		-- 分区子表,是否已存在
    startTime           text;
    endTime             text;
    strSQL              text;
    dimensionCodeDefValue varchar(3);   -- （读者可忽略）
    
-- 如果表名使用很多，也可以声明一个变量表示字表名称
BEGIN
    -- 调用前,必须首先初始化(时间字段名):time_column_name [直接从调用参数中获取!!]
    -- 没有显示的声明参数，使用TG_ARGV[0]获取参数
    time_column_name := TG_ARGV[0];
 
    -- 判断对应分区表 是否已经存在?
	EXECUTE 'SELECT $1.'||time_column_name INTO strSQL USING NEW;
	curMM := to_char( strSQL::timestamp , 'YYYYMM' );
	select count(*) INTO isExist from pg_class where relname = (TG_RELNAME||'_'||curMM);
 
	-- 若不存在, 则插入前需先创建子分区
	IF ( isExist = false ) THEN
        -- 创建子分区表，写明约束。TG_RELNAME为主表的名字，分表将继承主表的所有字段，但不会继承主键和索引等，需要手动创建。
        startTime := curMM||'01 00:00:00.000';
        endTime := to_char( startTime::timestamp + interval '1 month', 'YYYY-MM-DD HH24:MI:SS.MS');
        strSQL := 'CREATE TABLE IF NOT EXISTS '||TG_RELNAME||'_'||curMM||
                  ' ( CHECK('||time_column_name||'>='''|| startTime ||''' AND '
                             ||time_column_name||'< '''|| endTime ||''' )
                          ) INHERITS ('||TG_RELNAME||') ;';
		EXECUTE strSQL;
 
        -- 创建主键，id主键只能保证单个表的唯一，多个子表可能会存在相同的主键。这里为子表创建复合主键
        strSQL := 'ALTER TABLE '||TG_RELNAME||'_'||curMM||' ADD PRIMARY KEY(indicator_code, biz_date_time, org_index_code_path, dimension_code) ';
        EXECUTE strSQL;
 
        -- 修改dimension_code字段的默认值（读者可忽略）
        strSQL := 'ALTER TABLE '||TG_RELNAME||'_'||curMM||' ALTER COLUMN dimension_code set DEFAULT ' || quote_literal('def') || ' ';
        EXECUTE strSQL;
 
        -- 创建索引（使用分表的字段），可选。 TODO： 现在先只为业务数据日期时间添加索引，后面有需要再加
        strSQL := 'CREATE INDEX '||TG_RELNAME||'_'||curMM||'_INDEX_'||time_column_name||' ON '
                          ||TG_RELNAME||'_'||curMM||' ('||time_column_name||');';
        EXECUTE strSQL;
 
    	-- 还可自定义其他语句，注意对应表名
    	
    END IF;
 
    -- 插入数据到子分区(主键冲突时更新数据，否则新增数据)!
    strSQL := 'INSERT INTO '||TG_RELNAME||'_'||curMM||' SELECT $1.*' ||
              ' on conflict (indicator_code, biz_date_time, org_index_code_path, dimension_code) ' ||
              ' do update set ' ||
              ' push_time = EXCLUDED.push_time,' ||
              ' pusher = EXCLUDED.pusher,' ||
              ' category_path_code = EXCLUDED.category_path_code,' ||
              ' biz_date_time = EXCLUDED.biz_date_time,' ||
              ' org_index_code_path = EXCLUDED.org_index_code_path,' ||
              ' dimension_code = EXCLUDED.dimension_code,' ||
              ' indicator_code = EXCLUDED.indicator_code,' ||
              ' indicator_value = EXCLUDED.indicator_value,' ||
              ' indicator_value2 = EXCLUDED.indicator_value2';
	EXECUTE strSQL USING NEW;
	RETURN NULL;
	
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "public"."auto_insert_sub_indicator_table"() OWNER TO "postgres";

-- ----------------------------
-- Function structure for create_table_with_suffix
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_table_with_suffix"("table_name" text, "suffix" text);
CREATE OR REPLACE FUNCTION "public"."create_table_with_suffix"("table_name" text, "suffix" text)
  RETURNS "pg_catalog"."void" AS $BODY$
BEGIN
    EXECUTE format('CREATE TABLE IF NOT EXISTS %I (LIKE %I INCLUDING ALL)', table_name || '_' || suffix, table_name);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "public"."create_table_with_suffix"("table_name" text, "suffix" text) OWNER TO "postgres";

-- ----------------------------
-- Function structure for create_tables_between_months
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_tables_between_months"("start_month" text, "end_month" text, "table_name" text);
CREATE OR REPLACE FUNCTION "public"."create_tables_between_months"("start_month" text, "end_month" text, "table_name" text)
  RETURNS "pg_catalog"."void" AS $BODY$
DECLARE
    current_month text := start_month;
BEGIN
    WHILE current_month <= end_month LOOP
        -- 调用 create_table_with_suffix 函数来创建表
        PERFORM public.create_table_with_suffix(table_name, current_month);
        
        -- 增加一个月，以便在下一次迭代中创建下一个表
        current_month := to_char(to_date(current_month, 'YYYYMM') + interval '1 month', 'YYYYMM');
    END LOOP;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "public"."create_tables_between_months"("start_month" text, "end_month" text, "table_name" text) OWNER TO "postgres";

-- ----------------------------
-- Function structure for drop_tables_by_prefix
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."drop_tables_by_prefix"("_prefix" text);
CREATE OR REPLACE FUNCTION "public"."drop_tables_by_prefix"("_prefix" text)
  RETURNS "pg_catalog"."void" AS $BODY$
DECLARE 
    _table_name text;
BEGIN
    FOR _table_name IN 
        SELECT table_name 
        FROM information_schema.tables 
        WHERE table_name LIKE _prefix || '%'
    LOOP
        EXECUTE 'DROP TABLE IF EXISTS ' || _table_name;
    END LOOP;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "public"."drop_tables_by_prefix"("_prefix" text) OWNER TO "postgres";

-- ----------------------------
-- Function structure for find_in_set
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."find_in_set"(int8, varchar);
CREATE OR REPLACE FUNCTION "public"."find_in_set"(int8, varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
DECLARE
  STR ALIAS FOR $1;
  STRS ALIAS FOR $2;
  POS INTEGER;
  STATUS BOOLEAN;
BEGIN
	SELECT POSITION( ','||STR||',' IN ','||STRS||',') INTO POS;
	IF POS > 0 THEN
	  STATUS = TRUE;
	ELSE
	  STATUS = FALSE;
	END IF;
	RETURN STATUS;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "public"."find_in_set"(int8, varchar) OWNER TO "postgres";

-- ----------------------------
-- View structure for view_self_table_columns
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_self_table_columns";
CREATE VIEW "public"."view_self_table_columns" AS  SELECT columns.table_catalog,
    columns.table_schema,
    columns.table_name,
    columns.ordinal_position AS sort,
    columns.column_name,
    columns.data_type AS typename,
        CASE
            WHEN columns.is_nullable::text = 'no'::text AND c.contype <> 'p'::"char" THEN '1'::text
            ELSE NULL::text
        END AS is_required,
        CASE
            WHEN c.contype = 'p'::"char" THEN '1'::text
            ELSE '0'::text
        END AS is_pk,
    COALESCE(columns.character_maximum_length::integer, columns.numeric_precision::integer, '-1'::integer) AS length,
    columns.numeric_scale AS scale,
        CASE columns.is_nullable
            WHEN 'NO'::text THEN 0
            ELSE 1
        END AS cannull,
    columns.column_default AS defaultval,
        CASE
            WHEN POSITION(('nextval'::text) IN (columns.column_default)) > 0 THEN 1
            ELSE 0
        END AS isidentity,
        CASE
            WHEN POSITION(('nextval'::text) IN (columns.column_default)) > 0 THEN 1
            ELSE 0
        END AS is_increment,
    c.detext AS column_comment,
    c.typname AS column_type,
    c.contype,
    columns.ordinal_position
   FROM information_schema.columns
     LEFT JOIN ( SELECT pg_database.datname,
            pg_get_userbyid(pg_class.relowner) AS tableowner,
            pg_ns.nspname,
            pg_class.relname,
            pg_attr.attname,
            pg_desc.description AS detext,
            pg_type.typname,
            pg_cons.contype
           FROM pg_class
             LEFT JOIN pg_attribute pg_attr ON pg_attr.attrelid = pg_class.oid
             LEFT JOIN pg_description pg_desc ON pg_desc.objoid = pg_attr.attrelid AND pg_desc.objsubid = pg_attr.attnum
             LEFT JOIN pg_namespace pg_ns ON pg_ns.oid = pg_class.relnamespace
             LEFT JOIN pg_database ON pg_class.relowner = pg_database.datdba
             LEFT JOIN pg_type ON pg_attr.atttypid = pg_type.oid
             LEFT JOIN ( SELECT pg_con.oid,
                    pg_con.conname,
                    pg_con.connamespace,
                    pg_con.contype,
                    pg_con.condeferrable,
                    pg_con.condeferred,
                    pg_con.convalidated,
                    pg_con.conrelid,
                    pg_con.contypid,
                    pg_con.conindid,
                    pg_con.conparentid,
                    pg_con.confrelid,
                    pg_con.confupdtype,
                    pg_con.confdeltype,
                    pg_con.confmatchtype,
                    pg_con.conislocal,
                    pg_con.coninhcount,
                    pg_con.connoinherit,
                    pg_con.conkey,
                    pg_con.confkey,
                    pg_con.conpfeqop,
                    pg_con.conppeqop,
                    pg_con.conffeqop,
                    pg_con.confdelsetcols,
                    pg_con.conexclop,
                    pg_con.conbin,
                    unnest(pg_con.conkey) AS conkey_new
                   FROM pg_constraint pg_con) pg_cons ON pg_attr.attrelid = pg_class.oid AND pg_attr.attnum = pg_cons.conkey_new AND pg_cons.conrelid = pg_class.oid
          WHERE pg_attr.attnum > 0 AND pg_attr.attrelid = pg_class.oid) c ON columns.table_catalog::name = c.datname AND columns.table_schema::name = c.nspname AND columns.table_name::name = c.relname AND columns.column_name::name = c.attname;
ALTER TABLE "public"."view_self_table_columns" OWNER TO "postgres";

-- ----------------------------
-- View structure for view_self_table
-- ----------------------------
DROP VIEW IF EXISTS "public"."view_self_table";
CREATE VIEW "public"."view_self_table" AS  SELECT c.relname AS table_name,
    obj_description(c.oid) AS table_comment,
    CURRENT_TIMESTAMP AS create_time,
    CURRENT_TIMESTAMP AS update_time
   FROM pg_class c
     LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND c.relname !~~ 'spatial_%'::text AND (n.nspname = 'public'::name OR n.nspname = 'ruoyi'::name) AND n.nspname <> ''::name;
ALTER TABLE "public"."view_self_table" OWNER TO "postgres";

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gen_table_column_column_id_seq"
OWNED BY "public"."gen_table_column"."column_id";
SELECT setval('"public"."gen_table_column_column_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gen_table_table_id_seq"
OWNED BY "public"."gen_table"."table_id";
SELECT setval('"public"."gen_table_table_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_config_config_id_seq"
OWNED BY "public"."sys_config"."config_id";
SELECT setval('"public"."sys_config_config_id_seq"', 100, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dept_dept_id_seq"
OWNED BY "public"."sys_dept"."dept_id";
SELECT setval('"public"."sys_dept_dept_id_seq"', 200, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dict_data_dict_code_seq"
OWNED BY "public"."sys_dict_data"."dict_code";
SELECT setval('"public"."sys_dict_data_dict_code_seq"', 100, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dict_type_dict_id_seq"
OWNED BY "public"."sys_dict_type"."dict_id";
SELECT setval('"public"."sys_dict_type_dict_id_seq"', 100, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_job_job_id_seq"
OWNED BY "public"."sys_job"."job_id";
SELECT setval('"public"."sys_job_job_id_seq"', 100, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_job_log_job_log_id_seq"
OWNED BY "public"."sys_job_log"."job_log_id";
SELECT setval('"public"."sys_job_log_job_log_id_seq"', 180, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_logininfor_info_id_seq"
OWNED BY "public"."sys_logininfor"."info_id";
SELECT setval('"public"."sys_logininfor_info_id_seq"', 639, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_menu_menu_id_seq"
OWNED BY "public"."sys_menu"."menu_id";
SELECT setval('"public"."sys_menu_menu_id_seq"', 2000, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_notice_notice_id_seq"
OWNED BY "public"."sys_notice"."notice_id";
SELECT setval('"public"."sys_notice_notice_id_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_oper_log_oper_id_seq"
OWNED BY "public"."sys_oper_log"."oper_id";
SELECT setval('"public"."sys_oper_log_oper_id_seq"', 419, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_post_post_id_seq"
OWNED BY "public"."sys_post"."post_id";
SELECT setval('"public"."sys_post_post_id_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_role_role_id_seq"
OWNED BY "public"."sys_role"."role_id";
SELECT setval('"public"."sys_role_role_id_seq"', 100, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_user_user_id_seq"
OWNED BY "public"."sys_user"."user_id";
SELECT setval('"public"."sys_user_user_id_seq"', 100, false);

-- ----------------------------
-- Triggers structure for table indicator
-- ----------------------------
CREATE TRIGGER "insert_indicator_table_trigger" BEFORE INSERT ON "public"."indicator"
FOR EACH ROW
EXECUTE PROCEDURE "public"."auto_insert_sub_indicator_table"('biz_date_time');

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "public"."qrtz_calendars" ADD CONSTRAINT "qrtz_calendars_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_ft_inst_job_req_rcvry" ON "public"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_j_g" ON "public"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_jg" ON "public"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_t_g" ON "public"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_tg" ON "public"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_trig_inst_name" ON "public"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_fired_triggers" ADD CONSTRAINT "qrtz_fired_triggers_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------
CREATE INDEX "idx_qrtz_j_grp" ON "public"."qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_j_req_recovery" ON "public"."qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "public"."qrtz_job_details" ADD CONSTRAINT "qrtz_job_details_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "public"."qrtz_locks" ADD CONSTRAINT "qrtz_locks_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "public"."qrtz_paused_trigger_grps" ADD CONSTRAINT "qrtz_paused_trigger_grps_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "public"."qrtz_scheduler_state" ADD CONSTRAINT "qrtz_scheduler_state_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_t_c" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "calendar_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_g" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_j" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_jg" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_g_state" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_state" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_next_fire_time" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_misfire" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire_grp" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_state" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "pk_sys_config" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "pk_sys_dept" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "pk_sys_dict_data" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Uniques structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_dict_type_key" UNIQUE ("dict_type");

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "pk_sys_dict_type" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "pk_sys_job" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "public"."sys_job_log" ADD CONSTRAINT "pk_sys_job_log" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "public"."sys_logininfor" ADD CONSTRAINT "pk_sys_logininfor" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "pk_sys_menu" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "pk_sys_notice" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "pk_sys_oper_log" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "public"."sys_post" ADD CONSTRAINT "pk_sys_post" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "pk_sys_role" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "public"."sys_role_dept" ADD CONSTRAINT "pk_sys_role_dept" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "pk_sys_role_menu" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "pk_sys_user" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_online
-- ----------------------------
ALTER TABLE "public"."sys_user_online" ADD CONSTRAINT "pk_sys_user_online" PRIMARY KEY ("sessionId");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "public"."sys_user_post" ADD CONSTRAINT "pk_sys_user_post" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "pk_sys_user_role" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Primary Key structure for table testd_hash
-- ----------------------------
ALTER TABLE "public"."testd_hash" ADD CONSTRAINT "testd_month_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_hash_1
-- ----------------------------
ALTER TABLE "public"."testd_hash_1" ADD CONSTRAINT "testd_hash_1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_hash_2
-- ----------------------------
ALTER TABLE "public"."testd_hash_2" ADD CONSTRAINT "testd_hash_1_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month
-- ----------------------------
ALTER TABLE "public"."testd_month" ADD CONSTRAINT "testd_month_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202101
-- ----------------------------
ALTER TABLE "public"."testd_month_202101" ADD CONSTRAINT "testd_month_202101_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202102
-- ----------------------------
ALTER TABLE "public"."testd_month_202102" ADD CONSTRAINT "testd_month_202102_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202103
-- ----------------------------
ALTER TABLE "public"."testd_month_202103" ADD CONSTRAINT "testd_month_202103_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202104
-- ----------------------------
ALTER TABLE "public"."testd_month_202104" ADD CONSTRAINT "testd_month_202104_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202105
-- ----------------------------
ALTER TABLE "public"."testd_month_202105" ADD CONSTRAINT "testd_month_202105_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202106
-- ----------------------------
ALTER TABLE "public"."testd_month_202106" ADD CONSTRAINT "testd_month_202106_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202107
-- ----------------------------
ALTER TABLE "public"."testd_month_202107" ADD CONSTRAINT "testd_month_202107_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202108
-- ----------------------------
ALTER TABLE "public"."testd_month_202108" ADD CONSTRAINT "testd_month_202108_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202109
-- ----------------------------
ALTER TABLE "public"."testd_month_202109" ADD CONSTRAINT "testd_month_202109_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202110
-- ----------------------------
ALTER TABLE "public"."testd_month_202110" ADD CONSTRAINT "testd_month_202110_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202111
-- ----------------------------
ALTER TABLE "public"."testd_month_202111" ADD CONSTRAINT "testd_month_202111_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202112
-- ----------------------------
ALTER TABLE "public"."testd_month_202112" ADD CONSTRAINT "testd_month_202112_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202201
-- ----------------------------
ALTER TABLE "public"."testd_month_202201" ADD CONSTRAINT "testd_month_202201_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202202
-- ----------------------------
ALTER TABLE "public"."testd_month_202202" ADD CONSTRAINT "testd_month_202202_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202203
-- ----------------------------
ALTER TABLE "public"."testd_month_202203" ADD CONSTRAINT "testd_month_202203_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202204
-- ----------------------------
ALTER TABLE "public"."testd_month_202204" ADD CONSTRAINT "testd_month_202204_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202205
-- ----------------------------
ALTER TABLE "public"."testd_month_202205" ADD CONSTRAINT "testd_month_202205_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202206
-- ----------------------------
ALTER TABLE "public"."testd_month_202206" ADD CONSTRAINT "testd_month_202206_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202207
-- ----------------------------
ALTER TABLE "public"."testd_month_202207" ADD CONSTRAINT "testd_month_202207_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202208
-- ----------------------------
ALTER TABLE "public"."testd_month_202208" ADD CONSTRAINT "testd_month_202208_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202209
-- ----------------------------
ALTER TABLE "public"."testd_month_202209" ADD CONSTRAINT "testd_month_202209_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202210
-- ----------------------------
ALTER TABLE "public"."testd_month_202210" ADD CONSTRAINT "testd_month_202210_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202211
-- ----------------------------
ALTER TABLE "public"."testd_month_202211" ADD CONSTRAINT "testd_month_202211_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202212
-- ----------------------------
ALTER TABLE "public"."testd_month_202212" ADD CONSTRAINT "testd_month_202212_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202301
-- ----------------------------
ALTER TABLE "public"."testd_month_202301" ADD CONSTRAINT "testd_month_202301_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202302
-- ----------------------------
ALTER TABLE "public"."testd_month_202302" ADD CONSTRAINT "testd_month_202302_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202303
-- ----------------------------
ALTER TABLE "public"."testd_month_202303" ADD CONSTRAINT "testd_month_202303_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202304
-- ----------------------------
ALTER TABLE "public"."testd_month_202304" ADD CONSTRAINT "testd_month_202304_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202305
-- ----------------------------
ALTER TABLE "public"."testd_month_202305" ADD CONSTRAINT "testd_month_202305_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202306
-- ----------------------------
ALTER TABLE "public"."testd_month_202306" ADD CONSTRAINT "testd_month_202306_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202307
-- ----------------------------
ALTER TABLE "public"."testd_month_202307" ADD CONSTRAINT "testd_month_202308_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202308
-- ----------------------------
ALTER TABLE "public"."testd_month_202308" ADD CONSTRAINT "testd_month_copy1_pkey1" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202309
-- ----------------------------
ALTER TABLE "public"."testd_month_202309" ADD CONSTRAINT "testd_month_202309_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202310
-- ----------------------------
ALTER TABLE "public"."testd_month_202310" ADD CONSTRAINT "testd_month_202310_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202311
-- ----------------------------
ALTER TABLE "public"."testd_month_202311" ADD CONSTRAINT "testd_month_202311_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202312
-- ----------------------------
ALTER TABLE "public"."testd_month_202312" ADD CONSTRAINT "testd_month_202312_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202401
-- ----------------------------
ALTER TABLE "public"."testd_month_202401" ADD CONSTRAINT "testd_month_202401_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202402
-- ----------------------------
ALTER TABLE "public"."testd_month_202402" ADD CONSTRAINT "testd_month_202402_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202403
-- ----------------------------
ALTER TABLE "public"."testd_month_202403" ADD CONSTRAINT "testd_month_202403_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202404
-- ----------------------------
ALTER TABLE "public"."testd_month_202404" ADD CONSTRAINT "testd_month_202404_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202405
-- ----------------------------
ALTER TABLE "public"."testd_month_202405" ADD CONSTRAINT "testd_month_202405_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202406
-- ----------------------------
ALTER TABLE "public"."testd_month_202406" ADD CONSTRAINT "testd_month_202406_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202407
-- ----------------------------
ALTER TABLE "public"."testd_month_202407" ADD CONSTRAINT "testd_month_202407_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202408
-- ----------------------------
ALTER TABLE "public"."testd_month_202408" ADD CONSTRAINT "testd_month_202408_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202409
-- ----------------------------
ALTER TABLE "public"."testd_month_202409" ADD CONSTRAINT "testd_month_202409_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202410
-- ----------------------------
ALTER TABLE "public"."testd_month_202410" ADD CONSTRAINT "testd_month_202410_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202411
-- ----------------------------
ALTER TABLE "public"."testd_month_202411" ADD CONSTRAINT "testd_month_202411_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202412
-- ----------------------------
ALTER TABLE "public"."testd_month_202412" ADD CONSTRAINT "testd_month_202412_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202501
-- ----------------------------
ALTER TABLE "public"."testd_month_202501" ADD CONSTRAINT "testd_month_202501_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202502
-- ----------------------------
ALTER TABLE "public"."testd_month_202502" ADD CONSTRAINT "testd_month_202502_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202503
-- ----------------------------
ALTER TABLE "public"."testd_month_202503" ADD CONSTRAINT "testd_month_202503_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202504
-- ----------------------------
ALTER TABLE "public"."testd_month_202504" ADD CONSTRAINT "testd_month_202504_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202505
-- ----------------------------
ALTER TABLE "public"."testd_month_202505" ADD CONSTRAINT "testd_month_202505_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202506
-- ----------------------------
ALTER TABLE "public"."testd_month_202506" ADD CONSTRAINT "testd_month_202506_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202507
-- ----------------------------
ALTER TABLE "public"."testd_month_202507" ADD CONSTRAINT "testd_month_202507_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202508
-- ----------------------------
ALTER TABLE "public"."testd_month_202508" ADD CONSTRAINT "testd_month_202508_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202509
-- ----------------------------
ALTER TABLE "public"."testd_month_202509" ADD CONSTRAINT "testd_month_202509_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202510
-- ----------------------------
ALTER TABLE "public"."testd_month_202510" ADD CONSTRAINT "testd_month_202510_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202511
-- ----------------------------
ALTER TABLE "public"."testd_month_202511" ADD CONSTRAINT "testd_month_202511_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table testd_month_202512
-- ----------------------------
ALTER TABLE "public"."testd_month_202512" ADD CONSTRAINT "testd_month_202512_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_sched_name_trigger_name_trigger_grou_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_sched_name_job_name_job_group_fkey" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "public"."qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;
