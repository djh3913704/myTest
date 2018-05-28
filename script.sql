USE [Luyepharm]
GO
/****** Object:  Table [dbo].[BLUE_TT_FileIO]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLUE_TT_FileIO](
	[id] [nvarchar](32) NOT NULL,
	[code] [nvarchar](32) NULL,
	[fromname] [nvarchar](64) NULL,
	[fromrowno] [int] NULL,
	[active] [nvarchar](1) NULL,
	[toname] [nvarchar](64) NULL,
	[remark] [nvarchar](64) NULL,
	[torowno] [int] NULL,
	[mappingid] [nvarchar](64) NULL,
	[direction] [nvarchar](24) NULL,
	[typecode] [nvarchar](12) NULL,
	[filterfieldvalues] [nvarchar](128) NULL,
	[keyfieldpairs] [nvarchar](128) NULL,
	[standardmove] [nvarchar](1) NULL,
	[appendmode] [nvarchar](24) NULL,
	[deletemode] [nvarchar](24) NULL,
	[distinctselect] [nvarchar](1) NULL,
	[fromtype] [nvarchar](24) NULL,
	[paramfield] [nvarchar](24) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BLUE_TT_IOMapping]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLUE_TT_IOMapping](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](64) NULL,
	[open] [nvarchar](1) NULL,
	[active] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BLUE_TT_IOMappingDetail]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLUE_TT_IOMappingDetail](
	[id] [nvarchar](32) NOT NULL,
	[parentid] [nvarchar](32) NULL,
	[fromfield] [nvarchar](64) NULL,
	[tofield] [nvarchar](64) NULL,
	[active] [nvarchar](1) NULL,
	[updateignore] [nvarchar](1) NULL,
	[insertignore] [nvarchar](1) NULL,
	[datatype] [nvarchar](16) NULL,
	[rule] [nvarchar](16) NULL,
	[no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dictionary]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dictionary](
	[id] [nvarchar](32) NOT NULL,
	[code] [nvarchar](24) NULL,
	[value] [nvarchar](64) NULL,
	[envalue] [nvarchar](64) NULL,
	[groupcode] [nvarchar](64) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [nvarchar](32) NOT NULL,
	[parentid] [nvarchar](32) NULL,
	[position] [nvarchar](32) NULL,
	[remark] [nvarchar](32) NULL,
	[code] [nvarchar](24) NULL,
	[name] [nvarchar](24) NULL,
	[enname] [nvarchar](24) NULL,
	[title] [nvarchar](64) NULL,
	[version] [nvarchar](12) NULL,
	[entitle] [nvarchar](64) NULL,
	[department] [nvarchar](32) NULL,
	[endepartment] [nvarchar](32) NULL,
	[territory] [nvarchar](32) NULL,
	[cntitle] [nvarchar](24) NULL,
	[province] [nvarchar](64) NULL,
	[grandpaid] [nvarchar](32) NULL,
	[grandpacode] [nvarchar](46) NULL,
	[ad_code] [nvarchar](24) NULL,
	[region] [nvarchar](46) NULL,
	[parentcode] [nvarchar](46) NULL,
	[rolecode] [nvarchar](32) NULL,
	[phone] [nvarchar](24) NULL,
	[productgroup] [nvarchar](24) NULL,
	[productgroupid] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[excelType]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excelType](
	[id] [int] NOT NULL,
	[names] [nvarchar](50) NULL,
	[booleans] [bit] NULL,
	[times] [datetime] NULL,
	[numbers] [numeric](18, 0) NULL,
	[dates] [date] NULL,
	[decimals] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fileio]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fileio](
	[id] [nvarchar](32) NOT NULL,
	[code] [nvarchar](32) NULL,
	[tablename] [nvarchar](64) NULL,
	[rowno] [int] NULL,
	[template] [nvarchar](32) NULL,
	[sheetname] [nvarchar](32) NULL,
	[active] [nvarchar](1) NULL,
	[no] [int] NULL,
	[tostandard] [nvarchar](1) NULL,
	[deltrue] [nvarchar](1) NULL,
	[appendmode] [nvarchar](32) NULL,
	[keyfield] [nvarchar](128) NULL,
	[updatefield] [nvarchar](128) NULL,
	[filterfield] [nvarchar](128) NULL,
	[fromtype] [nvarchar](32) NULL,
	[defaultbeforesave] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iohandler]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iohandler](
	[id] [nvarchar](255) NOT NULL,
	[iocode] [nvarchar](32) NULL,
	[namedsql] [nvarchar](128) NULL,
	[active] [nvarchar](1) NULL,
	[no] [int] NULL,
	[eventcode] [nvarchar](32) NULL,
	[errormsg] [nvarchar](max) NULL,
	[itemid] [nvarchar](32) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iomapping]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iomapping](
	[id] [nvarchar](64) NOT NULL,
	[columnname] [nvarchar](64) NULL,
	[fieldname] [nvarchar](64) NULL,
	[parentid] [nvarchar](32) NULL,
	[no] [int] NULL,
	[rule] [nvarchar](32) NULL,
	[formatter] [nvarchar](64) NULL,
	[active] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[log]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log](
	[id] [nvarchar](32) NOT NULL,
	[project] [nvarchar](254) NULL,
	[operator] [nvarchar](24) NULL,
	[updatetime] [datetime2](7) NULL,
	[remark] [nvarchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menu]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [nvarchar](32) NOT NULL,
	[TEXT] [nvarchar](32) NULL,
	[URL] [nvarchar](128) NULL,
	[PARENTID] [nvarchar](32) NULL,
	[ORDERNO] [int] NULL,
	[GRADE] [int] NULL,
	[IMG] [nvarchar](128) NULL,
	[ROOTID] [nvarchar](32) NULL,
	[ISMANAGER] [nvarchar](1) NULL,
	[ACTIVE] [nvarchar](1) NULL,
	[REMARK] [nvarchar](64) NULL,
	[MENUGROUP] [nvarchar](12) NULL,
	[POSITION] [nvarchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[org]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[org](
	[id] [nvarchar](32) NOT NULL,
	[code] [nvarchar](24) NULL,
	[name] [nvarchar](254) NULL,
	[active] [nvarchar](1) NULL,
	[enname] [nvarchar](254) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[roleauthority]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roleauthority](
	[id] [nvarchar](32) NOT NULL,
	[rolecode] [nvarchar](32) NULL,
	[menuid] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rolemapping]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rolemapping](
	[id] [nvarchar](32) NOT NULL,
	[caption] [nvarchar](32) NULL,
	[rolecode] [nvarchar](32) NULL,
	[type] [nvarchar](24) NULL,
	[title] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[territory]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[territory](
	[parentid1] [nvarchar](32) NOT NULL,
	[parentid2] [nvarchar](32) NULL,
	[parentid3] [nvarchar](32) NULL,
	[parentid4] [nvarchar](32) NULL,
	[parentid5] [nvarchar](32) NULL,
	[parentid6] [nvarchar](32) NULL,
	[parentid7] [nvarchar](32) NULL,
	[parentid8] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[parentid1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usr]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usr](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](32) NULL,
	[caption] [nvarchar](32) NULL,
	[password] [nvarchar](24) NULL,
	[active] [nvarchar](1) NULL,
	[type] [nvarchar](24) NULL,
	[rolecode] [nvarchar](32) NULL,
	[phone] [nvarchar](24) NULL,
	[headimg] [nvarchar](128) NULL,
	[title] [nvarchar](32) NULL,
	[employeeid] [nvarchar](32) NULL,
	[status_menugroup] [nvarchar](24) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usrorg]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usrorg](
	[id] [nvarchar](32) NOT NULL,
	[userid] [nvarchar](32) NULL,
	[orgid] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[workperiod]    Script Date: 2018/5/27 19:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workperiod](
	[id] [nvarchar](32) NOT NULL,
	[year] [int] NULL,
	[month] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BLUE_TT_FileIO] ([id], [code], [fromname], [fromrowno], [active], [toname], [remark], [torowno], [mappingid], [direction], [typecode], [filterfieldvalues], [keyfieldpairs], [standardmove], [appendmode], [deletemode], [distinctselect], [fromtype], [paramfield]) VALUES (N'product_1', N'excelType', N'excelType', NULL, N'T', N'excelType', NULL, NULL, N'product_im', NULL, N'import', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BLUE_TT_FileIO] ([id], [code], [fromname], [fromrowno], [active], [toname], [remark], [torowno], [mappingid], [direction], [typecode], [filterfieldvalues], [keyfieldpairs], [standardmove], [appendmode], [deletemode], [distinctselect], [fromtype], [paramfield]) VALUES (N'product_2', N'excelType', N'excelType', NULL, N'T', N'excelType', NULL, NULL, N'product_db', NULL, N'db', NULL, N'fromTable.code = toTable.code', N'T', N'UpdateChanged', NULL, NULL, NULL, NULL)
INSERT [dbo].[BLUE_TT_FileIO] ([id], [code], [fromname], [fromrowno], [active], [toname], [remark], [torowno], [mappingid], [direction], [typecode], [filterfieldvalues], [keyfieldpairs], [standardmove], [appendmode], [deletemode], [distinctselect], [fromtype], [paramfield]) VALUES (N'product_3', N'excelType', N'excelType', 2, N'T', N'excelType', NULL, NULL, N'product_im', N'convert', N'output', NULL, NULL, NULL, NULL, NULL, NULL, N'table', NULL)
INSERT [dbo].[BLUE_TT_FileIO] ([id], [code], [fromname], [fromrowno], [active], [toname], [remark], [torowno], [mappingid], [direction], [typecode], [filterfieldvalues], [keyfieldpairs], [standardmove], [appendmode], [deletemode], [distinctselect], [fromtype], [paramfield]) VALUES (N'test_1', N'excelType', N'excelType', NULL, N'T', N'excelType', NULL, NULL, N'test_im', NULL, N'import', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BLUE_TT_FileIO] ([id], [code], [fromname], [fromrowno], [active], [toname], [remark], [torowno], [mappingid], [direction], [typecode], [filterfieldvalues], [keyfieldpairs], [standardmove], [appendmode], [deletemode], [distinctselect], [fromtype], [paramfield]) VALUES (N'test_2', N'excelType', N'excelType', 2, N'T', N'excelType', NULL, NULL, N'test_im', N'convert', N'output', NULL, NULL, NULL, NULL, NULL, NULL, N'table', NULL)
INSERT [dbo].[BLUE_TT_IOMapping] ([id], [name], [open], [active]) VALUES (N'product_db', N'product_db', N'T', N'T')
INSERT [dbo].[BLUE_TT_IOMapping] ([id], [name], [open], [active]) VALUES (N'product_im', N'product_im', NULL, N'T')
INSERT [dbo].[BLUE_TT_IOMapping] ([id], [name], [open], [active]) VALUES (N'test_im', N'test_im', NULL, N'T')
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'product_1_1', N'product_im', N'产品编号', N'code', N'T', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'product_1_2', N'product_im', N'产品名称', N'name', N'T', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'product_1_3', N'product_im', N'折合率', N'convertrate', N'T', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'product_1_4', N'product_im', N'规格', N'specint', N'T', NULL, NULL, NULL, N'isEmpty', 6)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'product_1_5', N'product_im', N'规格（/瓶）', N'spec', N'T', NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'product_1_6', N'product_im', N'别名', N'alias', N'T', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'test_1', N'test_im', N'日期', N'dateField', N'T', NULL, NULL, N'date', NULL, 1)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'test_2', N'test_im', N'时间', N'timeField', N'T', NULL, NULL, N'datetime', NULL, 2)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'test_3', N'test_im', N'布尔值', N'boolField', N'T', NULL, NULL, N'boolean', NULL, 3)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'test_4', N'test_im', N'整型', N'intField', N'T', NULL, NULL, N'int', NULL, 4)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'test_5', N'test_im', N'小数', N'decimalField', N'T', NULL, NULL, N'decimal', NULL, 5)
INSERT [dbo].[BLUE_TT_IOMappingDetail] ([id], [parentid], [fromfield], [tofield], [active], [updateignore], [insertignore], [datatype], [rule], [no]) VALUES (N'test_6', N'test_im', N'百分比', N'percentField', N'T', NULL, NULL, N'percent', NULL, 6)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'10a45f4086e446349eb6815e247e24b2', N'8ae8af5682bb4172a3fcc75c34ec48c3', N'', NULL, N'test05', N'test05', NULL, N'NSD', NULL, N'nationalSalesDirector', NULL, NULL, NULL, N'全国销售部总监', N'全国', NULL, NULL, NULL, NULL, NULL, N'5', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'1d6a3e8459a84a88988f5b3d5f31099e', N'10a45f4086e446349eb6815e247e24b2', N'', NULL, N'test04', N'test04', NULL, N'DD', NULL, N'divisionalDirector', NULL, NULL, NULL, N'大区总监', N'全国', NULL, NULL, NULL, NULL, NULL, N'10', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'2A26D8D4526C4196BC09BD93656EF6DE', N'CM91', N'2A26D8D4526C4196BC09BD93656EF6DE', NULL, N'LGYY000552', N'王堃', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'辽宁', N'NSD21', N'LGYY000113', N'YY0552', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'2D73CD9F496E44AB8CCD1FA56BF82A2E', N'CM101', N'2D73CD9F496E44AB8CCD1FA56BF82A2E', NULL, N'LGYY000561', N'李立锋', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0561', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'34592CCDD597451485253F3F2ECEF412', N'BD11', N'34592CCDD597451485253F3F2ECEF412', NULL, N'LGYY000273', N'黄晶', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'江苏', N'BD11', N'LGYY000205', N'YY0273', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'3F62D7ADE0DA43928499DD43652B45A7', N'CM191', N'3F62D7ADE0DA43928499DD43652B45A7', NULL, N'LGYY000560', N'赵凯', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'上海', N'NSD21', N'LGYY000113', N'YY0560', N'销售二部', N'LGYY000024', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'4B05EB9CC06B4BA6A4BC458FEB0E4111', N'CM91', N'4B05EB9CC06B4BA6A4BC458FEB0E4111', NULL, N'LGYY000544', N'王猛', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'辽宁', N'NSD21', N'LGYY000113', N'YY0544', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'5156AFBFCD244E5C9403D35452F62EB1', N'CM181', N'5156AFBFCD244E5C9403D35452F62EB1', NULL, N'LGYY000559', N'侯玉权', NULL, N'SM', NULL, N'salesManager', N'自营', NULL, NULL, N'区域经理', N'上海', N'BUD11', N'LGYY000036', N'YY0559', N'自营', N'LGYY000114', N'1', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'59b5478489e8438595d1ca2ce7c67416', N'f6f5d2665750489baf23d6e9abbcc9c2', N'', NULL, N'test01', N'test01', NULL, N'LM', NULL, N'leaseManage', N'一部', NULL, NULL, N'招商经理', N'全国', NULL, NULL, N'test01', N'一部', NULL, N'7', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'59fefb47e71447f5879502a9666795f5', NULL, N'', NULL, N'test11', N'test11', NULL, N'ASP', NULL, N'accountsSupervisorPayable', NULL, NULL, NULL, N'应付会计', N'全国', NULL, NULL, NULL, NULL, NULL, N'17', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'5ab9cd99ab2a48f78e3fc3dc3af0e9e7', N'f6f5d2665750489baf23d6e9abbcc9c2', N'', NULL, N'test08', N'test08', NULL, N'SM', NULL, N'salesManager', N'自营', NULL, NULL, N'区域经理', N'全国', NULL, NULL, N'test08', N'自营', NULL, N'1', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'69a6b31e80f349d988ab23d8b12d5905', N'8ae8af5682bb4172a3fcc75c34ec48c3', N'', NULL, N'test03', N'test03', NULL, N'MS', NULL, N'marketingSupport', N'', NULL, NULL, N'运营支持', N'青、闽、新、湘、黑、云、宁、苏、川、蒙、冀、辽、鲁、甘、豫、渝、津、琼、京、吉、沪、浙、粤、晋、藏、桂、贵、鄂、赣、陕', NULL, NULL, N'test03', NULL, NULL, N'f5afeee62a1249f18864f070df80956d', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'7BCB293A014649499FBFA794ABCD9F48', N'CM101', N'7BCB293A014649499FBFA794ABCD9F48', NULL, N'LGYY000553', N'张号', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0553', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'8ae8af5682bb4172a3fcc75c34ec48c3', N'8db4199e070e4033a76241d2e2a92e00', N'', NULL, N'test06', N'test06', NULL, N'BUD', NULL, N'BUDirector', NULL, NULL, NULL, N'BUHead', N'全国', NULL, NULL, NULL, NULL, NULL, N'13', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'8db4199e070e4033a76241d2e2a92e00', NULL, N'', NULL, N'test07', N'test07', NULL, N'GM', NULL, N'generalManager', NULL, NULL, NULL, N'总经理', N'全国', NULL, NULL, NULL, NULL, NULL, N'8', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'A0BECFD693034426AC8252198FC64AE8', N'BD11', N'A0BECFD693034426AC8252198FC64AE8', NULL, N'LGYY000528', N'杜萍', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'山东', N'GM11', N'LGYY000005', N'YY0528', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'admin', NULL, N'admin', NULL, N'admin', N'管理员', NULL, N'admin', NULL, N'admin', N'', NULL, NULL, N'管理员', N'全国', NULL, NULL, N'admin', NULL, NULL, N'21', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'AM11', N'BD11', N'AM11', NULL, N'LGYY000135', N'魏特', NULL, N'AM', NULL, N'areaManager', N'商务', NULL, NULL, N'大区商务经理', N'江苏', N'GM11', N'LGYY000005', N'YY0135', N'商务', N'LGYY000205', N'20', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'APA11', N'SEM11', N'APA11', NULL, N'LGYY000343', N'江爱玲', NULL, N'ASP', NULL, N'accountsSupervisorPayable', N'财务部', NULL, NULL, N'应付会计', N'湘、蒙、沪、浙', N'CFO11', N'LGYY000013', N'YY0343', N'财务部', N'LGYY000093', N'17', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'AR11', N'SEM11', N'AR11', NULL, N'LGYY000307', N'刘依苗', NULL, N'AR', NULL, N'accountsReceivable', N'财务部', NULL, NULL, N'应收会计', N'全国', N'CFO11', N'LGYY000013', N'YY0307', N'财务部', N'LGYY000093', N'18', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'ASP11', N'SEM11', N'ASP11', NULL, N'LGYY000245', N'陈健', NULL, NULL, NULL, NULL, N'财务部', NULL, NULL, N'应付经理', N'全国', N'CFO11', N'LGYY000013', N'YY0245', N'财务部', N'LGYY000093', NULL, NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'ASP21', N'SEM11', N'ASP21', NULL, N'LGYY000262', N'刘铖', NULL, NULL, NULL, NULL, N'财务部', NULL, NULL, N'应付主管', N'全国', N'CFO11', N'LGYY000013', N'YY0262', N'财务部', N'LGYY000093', NULL, NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'ASP31', N'SEM11', N'ASP31', NULL, N'LGYY000376', N'唐佳云', NULL, N'ASP', NULL, N'accountsSupervisorPayable', N'财务部', NULL, NULL, N'应付会计', N'全国', N'CFO11', N'LGYY000013', N'YY0376', N'财务部', N'LGYY000093', N'17', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BD11', N'GM11', N'BD11', NULL, N'LGYY000205', N'郭徽', NULL, N'BD', NULL, N'businessDirector', N'商务', NULL, NULL, N'商务总监', N'全国', NULL, NULL, N'YY0205', N'商务', N'LGYY000005', N'16', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM101', N'BD11', N'BM101', NULL, N'LGYY000261', N'李双涛', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'重庆', N'GM11', N'LGYY000005', N'YY0261', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM111', N'BD11', N'BM111', NULL, N'LGYY000428', N'赵泽宝', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'云南', N'GM11', N'LGYY000005', N'YY0428', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM121', N'BD11', N'BM121', NULL, N'LGYY000379', N'施雷', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'陕西', N'GM11', N'LGYY000005', N'YY0379', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM21', N'BD11', N'BM21', NULL, N'LGYY000411', N'高凤娇', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'安徽', N'BD11', N'LGYY000205', N'YY0411', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM41', N'BD11', N'BM41', NULL, N'LGYY000095', N'郑浩然', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'河南', N'BD11', N'LGYY000205', N'YY0095', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM51', N'RM11', N'BM51', NULL, N'LGYY000159', N'金佳燕', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'浙江', N'BD11', N'LGYY000205', N'YY0159', N'商务', N'LGYY000281', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM61', N'RM11', N'BM61', NULL, N'LGYY000174', N'陈双阳', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'湖南', N'BD11', N'LGYY000205', N'YY0174', N'商务', N'LGYY000281', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM71', N'BD11', N'BM71', NULL, N'LGYY000045', N'李芳芳', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'北京', N'GM11', N'LGYY000005', N'YY0045', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM81', N'BD11', N'BM81', NULL, N'LGYY000152', N'卢嘉', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'辽宁', N'GM11', N'LGYY000005', N'YY0152', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BM91', N'BD11', N'BM91', NULL, N'LGYY000392', N'任家玉', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'黑龙江', N'GM11', N'LGYY000005', N'YY0392', N'商务', N'LGYY000205', N'15', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BO11', N'BO61', N'BO11', NULL, N'LGYY000019', N'王俊峰', NULL, N'BO', NULL, N'businessOperation', N'商务运营', NULL, NULL, N'商务运营', N'全国', N'BD11', N'LGYY000205', N'YY0019', N'商务运营', N'LGYY000037', N'14', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BO21', N'BO61', N'BO21', NULL, N'LGYY000141', N'杨婧', NULL, N'BO', NULL, N'businessOperation', N'商务运营', NULL, NULL, N'商务运营', N'全国', N'BD11', N'LGYY000205', N'YY0141', N'商务运营', N'LGYY000037', N'14', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BO31', N'BO61', N'BO31', NULL, N'LGYY000413', N'林雅群', NULL, N'BO', NULL, N'businessOperation', N'商务运营', NULL, NULL, N'商务运营', N'全国', N'BD11', N'LGYY000205', N'YY0413', N'商务运营', N'LGYY000037', N'14', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BO41', N'BO61', N'BO41', NULL, N'LGYY000464', N'张曼玲', NULL, N'BO', NULL, N'businessOperation', N'商务运营', NULL, NULL, N'商务运营', N'全国', N'BD11', N'LGYY000205', N'YY0464', N'商务运营', N'LGYY000037', N'14', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BO51', N'BO61', N'BO51', NULL, N'LGYY000070', N'张岩', NULL, N'BO', NULL, N'businessOperation', N'商务运营', NULL, NULL, N'商务运营', N'全国', N'BD11', N'LGYY000205', N'YY0070', N'商务运营', N'LGYY000037', N'14', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BO61', N'BD11', N'BO61', NULL, N'LGYY000037', N'甘艳丽', NULL, N'BO', NULL, N'businessOperation', N'商务运营', NULL, NULL, N'商务运营', N'全国', N'GM11', N'LGYY000005', N'YY0037', N'商务运营', N'LGYY000205', N'14', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'BUD11', N'GM11', N'BUD11', NULL, N'LGYY000036', N'朱爱民', NULL, N'BUD', NULL, N'BUDirector', N'全国', NULL, NULL, N'BUHead', N'全国', NULL, NULL, N'YY0036', N'全国', N'LGYY000005', N'13', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CFO11', NULL, N'CFO11', NULL, N'LGYY000013', N'黄华', NULL, N'CFO', NULL, N'chiefFinancialOfficer', N'财务部', NULL, NULL, N'财务总监', N'全国', NULL, NULL, N'YY0013', N'财务部', NULL, N'12', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM101', N'NSD21', N'CM101', NULL, N'LGYY000173', N'叶胜', NULL, N'CM', NULL, N'centerManager', N'销售二部', NULL, NULL, N'大区经理', N'苏、皖', N'BUD11', N'LGYY000036', N'YY0173', N'销售二部', N'LGYY000113', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM11', N'NSD11', N'CM11', NULL, N'LGYY000303', N'王文波', NULL, N'CM', NULL, N'centerManager', N'销售一部', NULL, NULL, N'大区经理', N'京、晋', N'BUD11', N'LGYY000036', N'YY0303', N'销售一部', N'LGYY000009', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM111', N'NSD21', N'CM111', NULL, N'LGYY000299', N'宋运煦', NULL, N'CM', NULL, N'centerManager', N'销售二部', NULL, NULL, N'大区经理', N'湘、赣', N'BUD11', N'LGYY000036', N'YY0299', N'销售二部', N'LGYY000113', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM121', N'NSD21', N'CM121', NULL, N'LGYY000471', N'朱敏', NULL, N'CM', NULL, N'centerManager', N'销售二部', NULL, NULL, N'大区经理', N'浙', N'BUD11', N'LGYY000036', N'YY0471', N'销售二部', N'LGYY000113', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM131', N'CM11', N'CM131', NULL, N'LGYY000053', N'韩光普', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'北京', N'NSD11', N'LGYY000009', N'YY0053', N'销售一部', N'LGYY000303', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM141', NULL, N'CM141', NULL, N'LGYY000457', N'吴盛明', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'辽宁', N'NSD21', N'LGYY000113', N'YY0457', N'销售二部', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM151', NULL, N'CM151', NULL, N'LGYY000265', N'黄加强', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0265', N'销售二部', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM161', NULL, N'CM161', NULL, N'LGYY000480', N'文开禾', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'四川', N'NSD11', N'LGYY000009', N'YY0480', N'销售一部', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM171', NULL, N'CM171', NULL, N'LGYY000327', N'程云峰', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河北', N'NSD11', N'LGYY000009', N'YY0327', N'销售一部', NULL, N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM181', N'BUD11', N'CM181', NULL, N'LGYY000114', N'钱大伟', NULL, N'CM', NULL, N'centerManager', N'自营', NULL, NULL, N'大区经理', N'黑龙江', N'GM11', N'LGYY000005', N'YY0114', N'自营', N'LGYY000036', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM191', N'NSD21', N'CM191', NULL, N'LGYY000024', N'朱士山', NULL, N'CM', NULL, N'centerManager', N'销售二部', NULL, NULL, N'大区经理', N'沪', N'BUD11', N'LGYY000036', N'YY0024', N'销售二部', N'LGYY000113', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM31', N'NSD11', N'CM31', NULL, N'LGYY000052', N'李毅', NULL, N'CM', NULL, N'centerManager', N'销售一部', NULL, NULL, N'大区经理', N'粤、琼', N'BUD11', N'LGYY000036', N'YY0052', N'销售一部', N'LGYY000009', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM41', N'NSD11', N'CM41', NULL, N'LGYY000509', N'邢大伟', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'湖北', N'BUD11', N'LGYY000036', N'YY0509', N'销售一部', N'LGYY000009', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM51', N'NSD11', N'CM51', NULL, N'LGYY000120', N'牛惠霞', NULL, N'CM', NULL, N'centerManager', N'销售一部', NULL, NULL, N'大区经理', N'津、冀、豫', N'BUD11', N'LGYY000036', N'YY0120', N'销售一部', N'LGYY000009', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM61', N'NSD11', N'CM61', NULL, N'LGYY000209', N'杨海丽', NULL, N'CM', NULL, N'centerManager', N'销售一部', NULL, NULL, N'大区经理', N'陕、甘、宁、青、新', N'BUD11', N'LGYY000036', N'YY0209', N'销售一部', N'LGYY000009', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM71', N'NSD11', N'CM71', NULL, N'LGYY000101', N'王宝山', NULL, N'CM', NULL, N'centerManager', N'销售一部', NULL, NULL, N'大区经理', N'川、云', N'BUD11', N'LGYY000036', N'YY0101', N'销售一部', N'LGYY000009', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'CM91', N'NSD21', N'CM91', NULL, N'LGYY000067', N'温吉', NULL, N'CM', NULL, N'centerManager', N'销售二部', NULL, NULL, N'大区经理', N'辽、蒙、鲁', N'BUD11', N'LGYY000036', N'YY0067', N'销售二部', N'LGYY000113', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'd331792b826c4794a657c8fea8f5b005', NULL, N'', NULL, N'test09', N'test09', NULL, N'BM', NULL, N'businessManager', N'商务', NULL, NULL, N'商务经理', N'全国', NULL, NULL, N'test09', N'商务', NULL, N'15', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'dc59167a5f0b46f9b8f1db6fb7410d79', NULL, N'', NULL, N'test10', N'test10', NULL, N'AR', NULL, N'accountsReceivable', NULL, NULL, NULL, N'应收会计', N'全国', NULL, NULL, NULL, NULL, NULL, N'18', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'ee2436e44bac4ed4ba663ee8159f3af8', NULL, N'', NULL, N'', N'123', NULL, N'admin', NULL, N'admin', NULL, NULL, NULL, N'管理员', N'全国', NULL, NULL, N'', NULL, NULL, N'ee2436e44bac4ed4ba663ee8159f3af8', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'EF378BA83DB5403EB2B340D2934BBBC6', N'CM11', N'EF378BA83DB5403EB2B340D2934BBBC6', NULL, N'LGYY000545', N'陈志方', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'山西', N'NSD11', N'LGYY000009', N'YY0545', N'销售一部', N'LGYY000303', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'f6f5d2665750489baf23d6e9abbcc9c2', N'1d6a3e8459a84a88988f5b3d5f31099e', N'', NULL, N'test02', N'test02', NULL, N'CM', NULL, N'centerManager', NULL, NULL, NULL, N'大区经理', N'全国', NULL, NULL, NULL, NULL, NULL, N'11', N'', NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'GM11', NULL, N'GM11', NULL, N'LGYY000005', N'任政杰', NULL, N'GM', NULL, N'generalManager', NULL, NULL, NULL, N'总经理', N'全国', NULL, NULL, N'YY0005', NULL, NULL, N'8', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM101', N'LM301', N'LM101', NULL, N'LGYY000074', N'梁小萍', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'贵州', N'NSD11', N'LGYY000009', N'YY0074', N'销售一部', N'LGYY000486', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM111', N'LM301', N'LM111', NULL, N'LGYY000534', N'洪宇', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'贵州', N'NSD11', N'LGYY000009', N'YY0534', N'销售一部', N'LGYY000486', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM121', N'CM51', N'LM121', NULL, N'LGYY000108', N'理如良', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河南', N'NSD11', N'LGYY000009', N'YY0108', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM131', N'CM51', N'LM131', NULL, N'LGYY000043', N'王雅娟', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河南', N'NSD11', N'LGYY000009', N'YY0043', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM141', N'CM51', N'LM141', NULL, N'LGYY000335', N'闫永彬', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河南', N'NSD11', N'LGYY000009', N'YY0335', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM151', N'CM51', N'LM151', NULL, N'LGYY000017', N'任倩倩', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河南', N'NSD11', N'LGYY000009', N'YY0017', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM161', N'NSD11', N'LM161', NULL, N'LGYY000475', N'李燕书', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'湖北', N'BUD11', N'LGYY000036', N'YY0475', N'销售一部', N'LGYY000009', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM171', N'NSD11', N'LM171', NULL, N'LGYY000088', N'袁杰', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'湖北', N'BUD11', N'LGYY000036', N'YY0088', N'销售一部', N'LGYY000009', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM181', N'CM111', N'LM181', NULL, N'LGYY000470', N'罗春生', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江西', N'NSD21', N'LGYY000113', N'YY0470', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM191', N'CM111', N'LM191', NULL, N'LGYY000285', N'李峰', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江西', N'NSD21', N'LGYY000113', N'YY0285', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM201', N'CM111', N'LM201', NULL, N'LGYY000317', N'李志坚', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江西', N'NSD21', N'LGYY000113', N'YY0317', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM21', N'CM91', N'LM21', NULL, N'LGYY000501', N'杨光昊', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'山东', N'NSD21', N'LGYY000113', N'YY0501', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM211', N'CM51', N'LM211', NULL, N'LGYY000028', N'戴文晴', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河北', N'NSD11', N'LGYY000009', N'YY0028', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM221', N'CM51', N'LM221', NULL, N'LGYY000333', N'乔利帅', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河北', N'NSD11', N'LGYY000009', N'YY0333', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM231', N'CM51', N'LM231', NULL, N'LGYY000331', N'魏亮', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'河北', N'NSD11', N'LGYY000009', N'YY0331', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM241', N'CM51', N'LM241', NULL, N'LGYY000452', N'张永杰', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'天津', N'NSD11', N'LGYY000009', N'YY0452', N'销售一部', N'LGYY000120', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM251', N'CM61', N'LM251', NULL, N'LGYY000065', N'陈瑶', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'陕西', N'NSD11', N'LGYY000009', N'YY0065', N'销售一部', N'LGYY000209', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM261', N'CM61', N'LM261', NULL, N'LGYY000336', N'杜朋辉', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'陕西', N'NSD11', N'LGYY000009', N'YY0336', N'销售一部', N'LGYY000209', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM271', N'CM61', N'LM271', NULL, N'LGYY000020', N'杨军', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'甘、青', N'NSD11', N'LGYY000009', N'YY0020', N'销售一部', N'LGYY000209', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM281', N'CM61', N'LM281', NULL, N'LGYY000432', N'马军荣', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'甘、宁', N'NSD11', N'LGYY000009', N'YY0432', N'销售一部', N'LGYY000209', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM291', N'CM61', N'LM291', NULL, N'LGYY000027', N'陈静', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'新疆', N'NSD11', N'LGYY000009', N'YY0027', N'销售一部', N'LGYY000209', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM301', N'NSD11', N'LM301', NULL, N'LGYY000486', N'邹涛', NULL, N'CM', NULL, N'centerManager', N'销售一部', NULL, NULL, N'大区经理', N'渝、贵', N'BUD11', N'LGYY000036', N'YY0486', N'销售一部', N'LGYY000009', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM311', N'LM301', N'LM311', NULL, N'LGYY000527', N'史宇宁', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'重庆', N'NSD11', N'LGYY000009', N'YY0527', N'销售一部', N'LGYY000486', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM321', N'CM71', N'LM321', NULL, N'LGYY000367', N'王静', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'四川', N'NSD11', N'LGYY000009', N'YY0367', N'销售一部', N'LGYY000101', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM331', N'CM71', N'LM331', NULL, N'LGYY000487', N'赵昱程', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'四川', N'NSD11', N'LGYY000009', N'YY0487', N'销售一部', N'LGYY000101', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM341', N'CM71', N'LM341', NULL, N'LGYY000488', N'阳勇', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'四川', N'NSD11', N'LGYY000009', N'YY0488', N'销售一部', N'LGYY000101', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM351', N'CM71', N'LM351', NULL, N'LGYY000030', N'张莉', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'四川', N'NSD11', N'LGYY000009', N'YY0030', N'销售一部', N'LGYY000101', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM361', N'CM11', N'LM361', NULL, N'LGYY000083', N'郭浩', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'山西', N'NSD11', N'LGYY000009', N'YY0083', N'销售一部', N'LGYY000303', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM371', N'NSD21', N'LM371', NULL, N'LGYY000124', N'王洋', NULL, N'CM', NULL, N'centerManager', N'销售二部', NULL, NULL, N'大区经理', N'黑', N'BUD11', N'LGYY000036', N'YY0124', N'销售二部', N'LGYY000113', N'11', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM381', N'LM371', N'LM381', NULL, N'LGYY000358', N'郎魁元', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'黑龙江', N'NSD21', N'LGYY000113', N'YY0358', N'销售二部', N'LGYY000124', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM391', N'NSD21', N'LM391', NULL, N'LGYY000035', N'徐智豪', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'吉林', N'BUD11', N'LGYY000036', N'YY0035', N'销售二部', N'LGYY000113', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM401', N'NSD21', N'LM401', NULL, N'LGYY000068', N'高宏亮', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'吉林', N'BUD11', N'LGYY000036', N'YY0068', N'销售二部', N'LGYY000113', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM41', N'CM91', N'LM41', NULL, N'LGYY000312', N'王丽君', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'山东', N'NSD21', N'LGYY000113', N'YY0312', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM421', N'CM91', N'LM421', NULL, N'LGYY000061', N'杨帆', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'辽宁', N'NSD21', N'LGYY000113', N'YY0061', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM431', N'CM91', N'LM431', NULL, N'LGYY000529', N'陈春祥', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'辽宁', N'NSD21', N'LGYY000113', N'YY0529', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
GO
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM441', N'CM91', N'LM441', NULL, N'LGYY000326', N'张守荣', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'内蒙古', N'NSD21', N'LGYY000113', N'YY0326', N'销售二部', N'LGYY000067', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM451', N'CM191', N'LM451', NULL, N'LGYY000215', N'严丽华', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'上海', N'NSD21', N'LGYY000113', N'YY0215', N'销售二部', N'LGYY000024', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM461', N'CM191', N'LM461', NULL, N'LGYY000091', N'韩智平', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'上海', N'NSD21', N'LGYY000113', N'YY0091', N'销售二部', N'LGYY000024', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM471', N'NSD21', N'LM471', NULL, N'LGYY000502', N'黄绍登', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'福建', N'BUD11', N'LGYY000036', N'YY0502', N'销售二部', N'LGYY000113', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM491', N'CM101', N'LM491', NULL, N'LGYY000456', N'李立超', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0456', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM501', N'CM101', N'LM501', NULL, N'LGYY000539', N'蔡先峰', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0539', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM51', N'CM11', N'LM51', NULL, N'LGYY000372', N'马培栋', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'北京', N'NSD11', N'LGYY000009', N'YY0372', N'销售一部', N'LGYY000303', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM511', N'CM101', N'LM511', NULL, N'LGYY000538', N'王成', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0538', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM521', N'CM101', N'LM521', NULL, N'LGYY000541', N'余健', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'江苏', N'NSD21', N'LGYY000113', N'YY0541', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM531', N'CM101', N'LM531', NULL, N'LGYY000316', N'陈志强', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'安徽', N'NSD21', N'LGYY000113', N'YY0316', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM541', N'CM101', N'LM541', NULL, N'LGYY000510', N'强小飞', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'安徽', N'NSD21', N'LGYY000113', N'YY0510', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM551', N'CM101', N'LM551', NULL, N'LGYY000277', N'任海营', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'安徽', N'NSD21', N'LGYY000113', N'YY0277', N'销售二部', N'LGYY000173', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM561', N'CM111', N'LM561', NULL, N'LGYY000313', N'杨雄梅', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'湖南', N'NSD21', N'LGYY000113', N'YY0313', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM571', N'CM111', N'LM571', NULL, N'LGYY000314', N'田伟斌', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'湖南', N'NSD21', N'LGYY000113', N'YY0314', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM581', N'CM111', N'LM581', NULL, N'LGYY000082', N'向婷', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'湖南', N'NSD21', N'LGYY000113', N'YY0082', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM591', N'CM111', N'LM591', NULL, N'LGYY000511', N'罗琨', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'湖南', N'NSD21', N'LGYY000113', N'YY0511', N'销售二部', N'LGYY000299', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM601', N'CM121', N'LM601', NULL, N'LGYY000287', N'梁军委', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'浙江', N'NSD21', N'LGYY000113', N'YY0287', N'销售二部', N'LGYY000471', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM61', N'CM11', N'LM61', NULL, N'LGYY000405', N'张阳', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'北京', N'NSD11', N'LGYY000009', N'YY0405', N'销售一部', N'LGYY000303', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM611', N'CM121', N'LM611', NULL, N'LGYY000535', N'唐晓刚', NULL, N'LM', NULL, N'leaseManage', N'销售二部', NULL, NULL, N'招商经理', N'浙江', N'NSD21', N'LGYY000113', N'YY0535', N'销售二部', N'LGYY000471', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM71', N'CM71', N'LM71', NULL, N'LGYY000332', N'杨俊', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'云南', N'NSD11', N'LGYY000009', N'YY0332', N'销售一部', N'LGYY000101', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM81', N'CM71', N'LM81', NULL, N'LGYY000086', N'赖明霞', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'云南', N'NSD11', N'LGYY000009', N'YY0086', N'销售一部', N'LGYY000101', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'LM91', N'NSD11', N'LM91', NULL, N'LGYY000263', N'孟庆晔', NULL, N'LM', NULL, N'leaseManage', N'销售一部', NULL, NULL, N'招商经理', N'广西', N'BUD11', N'LGYY000036', N'YY0263', N'销售一部', N'LGYY000009', N'7', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS11', N'BUD11', N'MS11', NULL, N'LGYY000193', N'方婷', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', N'全国', N'GM11', N'LGYY000005', N'YY0193', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS21', N'BUD11', N'MS21', NULL, N'LGYY000259', N'黄叶', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', NULL, N'GM11', N'LGYY000005', N'YY0259', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS31', N'BUD11', N'MS31', NULL, N'LGYY000290', N'郭小梅', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', N'津、冀、豫、鄂', N'GM11', N'LGYY000005', N'YY0290', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS41', N'BUD11', N'MS41', NULL, N'LGYY000496', N'陆叶', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', N'苏、皖、湘、赣、沪、浙、闽', N'GM11', N'LGYY000005', N'YY0496', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS51', N'BUD11', N'MS51', NULL, N'LGYY000503', N'刘晓洁', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', N'陕、甘、宁、青、新、京、晋、粤、琼', N'GM11', N'LGYY000005', N'YY0503', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS61', N'BUD11', N'MS61', NULL, N'LGYY000518', N'母淑敏', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', N'鲁、辽、蒙、黑、吉', N'GM11', N'LGYY000005', N'YY0518', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'MS71', N'BUD11', N'MS71', NULL, N'LGYY000522', N'刘文静', NULL, N'MS', NULL, N'marketingSupport', N'销售支持部（丹酚）', NULL, NULL, N'运营支持', N'川、云、渝、贵、桂、藏', N'GM11', N'LGYY000005', N'YY0522', N'销售支持部（丹酚）', N'LGYY000036', N'6', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'NSD11', N'BUD11', N'NSD11', NULL, N'LGYY000009', N'朱文森', NULL, N'DD', NULL, N'divisionalDirector', N'销售一部', NULL, NULL, N'大区总监', N'全国', N'GM11', N'LGYY000005', N'YY0009', N'销售一部', N'LGYY000036', N'10', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'NSD21', N'BUD11', N'NSD21', NULL, N'LGYY000113', N'许德贵', NULL, N'DD', NULL, N'divisionalDirector', N'销售二部', NULL, NULL, N'大区总监', N'江苏', N'GM11', N'LGYY000005', N'YY0113', N'销售二部', N'LGYY000036', N'10', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'RM11', N'BD11', N'RM11', NULL, N'LGYY000281', N'林忠宏', NULL, N'RM', NULL, N'regionalManager', N'商务', NULL, NULL, N'区域商务经理', N'福建', N'BD11', N'LGYY000205', N'YY0281', N'商务', N'LGYY000205', N'4', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'RM21', N'AM11', N'RM21', NULL, N'LGYY000325', N'徐炜', NULL, N'RM', NULL, N'regionalManager', N'商务', NULL, NULL, N'区域商务经理', N'上海', N'BD11', N'LGYY000205', N'YY0325', N'商务', N'LGYY000135', N'4', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'SEM11', N'CFO11', N'SEM11', NULL, N'LGYY000093', N'许芳', NULL, N'SEM', NULL, N'settlementManager', N'财务部', NULL, NULL, N'会计经理', N'全国', NULL, NULL, N'YY0093', N'财务部', N'LGYY000013', N'2', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'SM11', N'CM181', N'SM11', NULL, N'LGYY000234', N'刘井波', NULL, N'SM', NULL, N'salesManager', N'自营', NULL, NULL, N'区域经理', N'黑龙江', N'BUD11', N'LGYY000036', N'YY0234', N'自营', N'LGYY000114', N'1', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'SM21', N'CM181', N'SM21', NULL, N'LGYY000506', N'于福军', NULL, N'SM', NULL, N'salesManager', N'自营', NULL, NULL, N'区域经理', N'黑龙江', N'BUD11', N'LGYY000036', N'YY0506', N'自营', N'LGYY000114', N'1', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'SM31', N'CM181', N'SM31', NULL, N'LGYY000507', N'凌锐', NULL, N'SM', NULL, N'salesManager', N'自营', NULL, NULL, N'区域经理', N'湖南', N'BUD11', N'LGYY000036', N'YY0507', N'自营', N'LGYY000114', N'1', NULL, NULL, NULL)
INSERT [dbo].[employee] ([id], [parentid], [position], [remark], [code], [name], [enname], [title], [version], [entitle], [department], [endepartment], [territory], [cntitle], [province], [grandpaid], [grandpacode], [ad_code], [region], [parentcode], [rolecode], [phone], [productgroup], [productgroupid]) VALUES (N'SM41', N'CM181', N'SM41', NULL, N'LGYY000106', N'霍涛', NULL, N'SM', NULL, N'salesManager', N'自营', NULL, NULL, N'区域经理', N'上海', N'BUD11', N'LGYY000036', N'YY0106', N'自营', N'LGYY000114', N'1', NULL, NULL, NULL)
INSERT [dbo].[excelType] ([id], [names], [booleans], [times], [numbers], [dates], [decimals]) VALUES (1, N'测试', 1, CAST(0x00009E6900A7D0F0 AS DateTime), CAST(15 AS Numeric(18, 0)), CAST(0x31350B00 AS Date), 0.1)
INSERT [dbo].[excelType] ([id], [names], [booleans], [times], [numbers], [dates], [decimals]) VALUES (2, N'数据2', 0, CAST(0x00009FD600000000 AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0x443E0B00 AS Date), 0.2)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'S1', N'数据管理系统', N'', NULL, NULL, NULL, N'../../image/menu/business.png', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'S2', N'系统管理', NULL, NULL, NULL, NULL, N'../../image/menu/setting.png', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm01', N'我的首页', N'../luye/home.html', N'S1', 1, 2, N'../../image/menu/home.png', N'S1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm1', N'本竞品数据管理', N'', N'S1', 3, 2, N'../../image/menu/fine.png', N'S1', NULL, N'T', N'返利系统', NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm1_1', N'功能1', N'coming.html', N'tpm1', 1, NULL, N'../../image/menu/generalbook.png', N'S1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm1_2', N'功能2', N'coming.html', N'tpm1', 2, NULL, N'../../image/menu/flowbook.png', N'S1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm3', N'交易数据管理', N'', N'S1', 2, 2, N'../../image/menu/aggrement.png', N'S1', NULL, N'T', N'返利系统', NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm3_1', N'功能1', N'../luye/data.html', N'tpm3', 1, NULL, N'../../image/menu/term.png', N'S1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm3_2', N'功能2', N'coming.html', N'tpm3', 2, NULL, N'../../image/menu/assignment.png', N'S1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm5', N'系统设置', NULL, N'S2', 8, 2, N'../../image/menu/data.png', N'S2', NULL, N'T', N'返利系统', NULL, NULL)
INSERT [dbo].[menu] ([ID], [TEXT], [URL], [PARENTID], [ORDERNO], [GRADE], [IMG], [ROOTID], [ISMANAGER], [ACTIVE], [REMARK], [MENUGROUP], [POSITION]) VALUES (N'tpm5_1', N'用户管理', N'coming.html', N'tpm5', 1, NULL, N'../../image/menu/data.png', N'S2', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[org] ([id], [code], [name], [active], [enname]) VALUES (N'1', N'001', N'BI', N'T', N'BI Asia-Pacific')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0303f28b21ee48bcbf8efcbc5d1b0313', N'14', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'030bf7e4dbbc4c218aba75a97ecf7426', N'5', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'037ad2dfc8814c36ac84b1e55bc8f79d', N'f5afeee62a1249f18864f070df80956d', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'038b922d0cfa4fceb13893452ccb6ae5', N'9', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'04fd6baf061640d0b62475e815e5e3d1', N'10', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'052a6221b55a4430b69cdf11b0bdef79', N'21', N'tpm4_2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0635ea5cac1a470b8f88046e4a5f7dd3', N'5', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0779f0fc7813483d8d3f58bd7ec83170', N'21', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'082621db7e0740df9d3d502ec090fad6', N'4', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'08505c13dc1e46e38e496ab296b7ca7c', N'21', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0871d5e554504c179c7f2520aa832a32', N'19', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'08d57d53489f43e882e14e1b4eea0ae4', N'16', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'09f093b986ac4feca355635737071789', N'9', N'tpm5_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0a90c0bd994e4132b549d32f3f34ded0', N'22', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0aa109280d0d407e934a7139860a97ae', N'6', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0ab365076a9a47c282a98bd0e776e35d', N'9', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0b519ea1424a4554818b96325c88355d', N'11', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0b682c6d25234ab59c5779dab03035d6', N'9', N'tpm5_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0bfc7832786e486e9ce6bde465001527', N'20', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0eae0798b91c4cddb47d803643998942', N'20', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'0f6e79c9f9ff484793e1c8b73fd7cb60', N'19', N'tpm5_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'10c66671154d4565b6194155f421098f', N'9', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'117ba4e9aa8a4435b27923c4517b1ab4', N'15', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'119011e68e4a4cc7a02f2ca1562b5355', N'9', N'tpm7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1229e7c87dee4276b5086a7f03868315', N'3', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'12b19d0eb1ab4b34a9f0dbfc5d05dbfb', N'12', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'12d581fe2a5c4530a5e0b8188ba2b967', N'9', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'131b444355d046a7aadc2e190d0b8f9a', N'7', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'14a76d0d555d4de0958a5dc0aecec8f3', N'19', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'15a4cbb70ff8470dac3548d448b89e8b', N'17', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'15b560681c934495a36a5d57bb351777', N'9', N'tpm3_7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'169f0fd36134485391112c0482e578c7', N'13', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'17828c20277d417a8fc828c2bf356776', N'21', N'tpm4_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'18039322840d4061b0f9405166614e80', N'8', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'191ccaf52811486a893940ec9e3e4ce8', N'9', N'tpm4_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'198c638e268f497180ad5b11b04a69e2', N'19', N'tpm7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1a45d9ad12e84e879840e7e786ffa02d', N'9', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1ad11f4232d1442ca314e968d9b04d8f', N'21', N'tpm4_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1c09704da13645e784a0b3397e68a700', N'7', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1c09e798fdad4e0e8eebcb81fb77964f', N'21', N'tpm2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1f00070ce4484d4da43804d85852217c', N'21', N'tpm5_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1fbb4e787125471f8bd7bd8cded645ad', N'13', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1fcaed424b8e4fd3af34ec23b2cd58e1', N'21', N'tpm2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'1res6_10', N'res6', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'206aa3ebcae448cfbb1f4a4dd7c20b26', N'19', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'20cb9435099645c2b0b50a1794fc6dbc', N'15', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'22967d544c424858b9cc10cdacca2df8', N'19', N'tpm2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'2296bc4016c14437ac8717447132917d', N'7', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'267caa5857994982a09ab3b8c51f6c28', N'19', N'tpm2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'26e97ec090544d99b7a6b629e2f67e6a', N'4', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'282fb532661d44f29a9b53fa294171b5', N'11', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'28af1d05f0fd4c4fa5b0ed502bd36ca7', N'16', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'29d115820bb442b9b60bf2979cc46d37', N'ee2436e44bac4ed4ba663ee8159f3af8', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'2a37bf0af26b435ab52567cf5da45b86', N'9', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'2ce3510aa92e44079d7d229f9387065c', N'20', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3322c4bb16154de29fb6d176f7ec4abb', N'11', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3430130b4a25453e9b63498dd5b5c098', N'f5afeee62a1249f18864f070df80956d', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'34a7d25e29e34756a00571e6dd4dbab3', N'15', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'35ac516a85c442d1831008add90c9870', N'12', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'365539f2da6a45f48293c20c91c83fee', N'13', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'36970a93f7ca4f64b982779065bfd408', N'19', N'tpm4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'36a0607af4954c2692430e4dffe1823b', N'19', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'36b0ab4d79054008ac74f5f0c6fdd3d5', N'10', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'38561f6539e149e6a6ae960906a2bba7', N'21', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3a65a9c1df814de5b9acdc38ee427750', N'f5afeee62a1249f18864f070df80956d', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3b54c22c3aeb4ffba04d92c3671f4741', N'1', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3bf59dc72ce64da3ab59eecb222838fd', N'12', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3bf85f32b1b143d288665682a74d6e7c', N'2', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3c8c3fffeb464e6eaab7d3af85543a1a', N'6', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3d58c870802d4b7d9fa536b4172c1df9', N'16', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3db67d66d13c4a5980f91dabc8a853ea', N'21', N'tpm3_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3dc31b3782634515be57b87dbbb1b7dc', N'8', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3dfa7cc2ab5443358f13b9d45e3700d2', N'10', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3f3818f1293a43a38180543bc16eff7c', N'14', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3f73dd8d1c5a4566a78b60cc678215b6', N'9', N'tpm2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'3fda16b61d104994ba9ee7f3bbf55a9b', N'14', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'400b8de75a2645d2b4b66a0bc3236b53', N'21', N'tpm7_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4027ee05139d4d64ad39273e37ce1f15', N'6', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4099a9d0005242978f4dec55ea1031ea', N'9', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'40a37d41b7cb4fed80319f83c362be3a', N'22', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'410c06a02f464bac82c5a787150cb230', N'16', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'416356ef1b974e24a82a7e5bf6100002', N'19', N'tpm5_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'417f7c28aa17462a93e4293dd910873e', N'f5afeee62a1249f18864f070df80956d', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'434245847593407f97651be3ee57eac6', N'21', N'tpm4_7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4376c6327e634b73b2207fe74f5cba22', N'17', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4393e3f5e0394e8da28d4bb3e17ead83', N'8', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'43c51e1b50384896907faa2b5a113e4a', N'17', N'tpm1_10')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'43dc9e529b8e4cfb810c6b67af695fa9', N'7', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'44290ff52be546f59bfc6c9d6575d50d', N'9', N'tpm5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'44866bf3bdcb4a97a751509831fcf62e', N'16', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'467237bf84c1415bb59feff4529e2997', N'2', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'47c6c2d766044eff8c73b8edb68937df', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'485a52797b6543d28e76d0195ab7d3b1', N'9', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4975fa3b0b204ca38b1dce80e089c0df', N'21', N'tpm7_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'49a95542380d49689fb0ffb39a3d5b49', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'49e197205c9f49e8b8573b68ae9f6f25', N'9', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4a309f60c5a1465ea89bffa2e2b71e6e', N'21', N'tpm5_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4c8aea392b144455bd3e612cef1d86a4', N'17', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4d0f77e620e8426baeda029d86973933', N'2', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4d6851055d4d48ea96b7b18729861564', N'19', N'tpm1')
GO
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4d95f3eea78f45069872710b930b80a7', N'14', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4e1fe9b8a82c4c1892cb5afb88d58920', N'3', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4f8cc5794af24e96a7149c87e256177e', N'21', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'4fdd9f95c7614e0194168653945a9656', N'19', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'503f8d526d5f47be8a31923a4d53337b', N'19', N'tpm4_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'50fab9f268e948a39e96768608dcfa52', N'10', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'50fd4de04d6f40be911bc1dcc0b3234d', N'4', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5168fa2d6c6848e9adf546893ca17fd0', N'21', N'tpm4_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'52dba3a5d1d9427eb3fa156fcf156186', N'f5afeee62a1249f18864f070df80956d', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'548b1b26ab35497aa674fe949902f23c', N'12', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5534c86fd7024a4688aed745c6311575', N'9', N'tpm4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5601d7486a6144188dfe556f7a538317', N'18', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'560e7583fcec4faa992f4b02afd20597', N'12', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'56bbedc19848428dbcceba7d3d659769', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm7_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'56bc5682aa5c45d1914ed061ad21a79f', N'22', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'57d0d8d979d94e87bacd6d7dfb7f7880', N'4', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'59675b683bff436e8af652710f217cea', N'21', N'tpm5_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5a3f7187db9e480ea9e05af08a8a8476', N'21', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5b2ecd0fce7a47eea15ec76706e4a89f', N'21', N'tpm4_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5b36f7195eff4892bb800642abeefdd0', N'20', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5c24150e343446b487e2c36150ccb37b', N'19', N'S3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5ccb8f654e7a4daca4c87f183c2407f1', N'11', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5e150a6522ab4d85a9863acb84740726', N'3', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5f6d14c026a9481494522f65f453e205', N'f5afeee62a1249f18864f070df80956d', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'5f96b68007ca47b3a1b06650b898bc69', N'f5afeee62a1249f18864f070df80956d', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6058a8a95d50478f8c6a2934a3d187c5', N'13', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'61752f9cb5114937aca4021101bcf9ca', N'2', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'62a93db0f60f40daa2569324ef26bbac', N'10', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'62c2b205fef440e7bdba5717505ed666', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm5_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'637ed60b765a4e28a121151be3129d63', N'17', N'tpm1_9')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'63f6d5f65d854733af99b6dec3e9557b', N'8', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6513f8d62cf7407f9703f49fd74e2612', N'f5afeee62a1249f18864f070df80956d', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'67ae593325ad49d5a05429d9777aa250', N'9', N'tpm7_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6847a65d88844709b803558936090114', N'12', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'68a926a097a44f8a951910c1530bd12c', N'6', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'69148e6fb5f143e2b69e31f35e7eb976', N'19', N'tpm3_7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6945f0d2a3464a1c8039152b61a84c2f', N'9', N'tpm4_2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6a65eef593d34f6ea68b05cdb8893b49', N'9', N'tpm4_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6b8d10bde7ed4a1a879109a85c5bdee3', N'16', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6d4a4c10d5e5428ba3dc7b59d6354971', N'19', N'tpm4_2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6e16bb9963b44f7e986bca875f88c3af', N'4', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'6e7d18789fca42caaa3830ed134252b2', N'19', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'702247c807eb468ca45c9cb2ad57af1e', N'8', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'715eee8562824336962a0b8d5d1a170b', N'15', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'71d6dcad06304986a8d2d813a592948c', N'ee2436e44bac4ed4ba663ee8159f3af8', N'S3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'72f69c9710c64838a4ec226852970830', N'16', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'730eb4249dd14364807df69a7f1303c5', N'19', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7317f8b4d7a84c9b9644a97304573526', N'6', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'73eae932e795442da8bd9412c98f353b', N'3', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'759505c26fc54c9dabdc5efd1a4513c1', N'22', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'75cc600747964e64932b32ca1ae42963', N'9', N'tpm2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'766347eb35fa4d3fb0e55a5e2f76c7ab', N'19', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7a14696b6fd84e928bd30e4256bee728', N'17', N'tpm3_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7a3ff4d58e8f4302861586d96c9c3501', N'19', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7ab9abe8a7514735a863c2d291160218', N'12', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7aeb2670188a410a8e17299062ab3e50', N'21', N'tpm4_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7bb30160f415492c8d6140f6815ab8c8', N'1', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7bfb3fa390224d88af6934f852633fce', N'21', N'tpm7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7c2cd8ae5e264fc8a92244794fd99d70', N'21', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7ce118f743df45a5820b1d10426893a3', N'10', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7cee5715ed794a5c8830da35e00a6b52', N'19', N'tpm2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7e142cbbf678456db1455de5785d5393', N'19', N'tpm4_2_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'7f968fe8b3d34c0fb2aae672b849a17c', N'15', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'80716b6d645c4bb188ae4254aeb0a247', N'4', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'80df67506e6c4dd4963a738f42d527df', N'21', N'tpm3_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'813402a1bf0047e8ac238979a5fe0128', N'18', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'82ac6db77cf5415b94ffea7557e8c8e8', N'16', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'83386f215f384a1f9f6eae93dbe7b520', N'17', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'83df8f22ff864989993fffa3e3f4031a', N'9', N'tpm5_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'843ffb4b41c94b458f290b9b41fa47fc', N'6', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8463a0553ef8452dbcb6c3e058650c6f', N'6', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8495bf9bd97045889f4c78b4cb518e1c', N'5', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8725003dce2d4630abbc303f1673755e', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8728a99b889947fcab06c12ffe7b104f', N'19', N'tpm4_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'88ae28ddb0274328bebd67e4617fa3ea', N'21', N'S2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'89e7910da7e943078739e1e12c116faa', N'9', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8a1c794595c1432c91a9d89f6dbf5570', N'13', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8a587cda163b4418bcd6085e306828c8', N'10', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8bbea5aec4bc4e2a93080e3b3cf7be75', N'5', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8bc5288e4b3d46bc858a3f8f4bd61067', N'14', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8d1c424e1e8f433eaab36e060cb75422', N'20', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8e043535d2fd45478735f74fe87d0aa6', N'19', N'tpm5_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8edec2366b2445b0aa7582cf214f8293', N'9', N'tpm2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8effeaaa8597481e9c3a13e45738433a', N'19', N'tpm2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'8f688401752e47cebb82cd21414efb1c', N'f5afeee62a1249f18864f070df80956d', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9009e4374e0d4106aaff33404f95c482', N'10', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'90291ba6e09e49f1bf40b138f60d1f41', N'21', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'90ff7c3862c74c75984ee3a418bee8db', N'14', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'91427acc6eed41439e4e81bfb9814607', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9166fe73d3534341a448b3058f67d5df', N'f5afeee62a1249f18864f070df80956d', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'937fb06df8a14b9eb43ed6326f6e5217', N'22', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9490c1517d714049994b00f79020597a', N'21', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'949826ac3b0c47218c02ef85d0307129', N'21', N'tpm3_7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'96449244eb934b1bbd4fcc2a3372ab04', N'2', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'96d41075c86b4b55ad22d3915af3a35f', N'19', N'tpm5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'97e576a0de484537a60ad6369f804356', N'14', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'98796cc183f7445d8acc780e7a9721f9', N'17', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9940786858ac4c0e8bce8b32f09f1f52', N'9', N'tpm4_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'99e137c9ab094be4adb4ba077e3672db', N'14', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9d33d505b779433abbbe6ee83d93ad99', N'6', N'tpm1_3')
GO
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9d58fc3e67ad452a896138f2ec74f697', N'17', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'9e21dac9f0a04ab8bed8d29b73417613', N'3', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a0231344d28b4a3f858fa53b09bc929d', N'9', N'tpm4_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a108a540320543539a35131cfa51f0a8', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a15795b024304ff6ba54fd947ca307b9', N'22', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a1b4f108f28940cba6c37355ae52bb78', N'22', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a1c082f485a54476987fa5de062c71fa', N'9', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a1dc13d3729541deadc0587fa42a8a52', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a315d237f0af4e4a8d77081e93ff262f', N'21', N'tpm4_2_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a34e96ceb64b4a248f8830c7b65a85cb', N'19', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a390992c063c4952b5e7fd954c28a7b7', N'9', N'tpm2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a3acb5d71c384c1e8ffb42e00369d366', N'2', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a499e7edaeab4cb9960f071d9bedabee', N'19', N'tpm4_2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a50c11a3bc9a405f9d210e7f5470f85e', N'14', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a648b93b5e9948458e0846b62da3ebf9', N'3', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a650a3bdc22b43f580ca33d37bc5b25e', N'17', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a7a57f9302ea4379aa34abfee36af740', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm5_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a903b1198e7d411c80a3d48be73635ea', N'22', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'a9d83221995e48588b33f2b0e9113c38', N'19', N'tpm7_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'aae8f4fa5a8b4a40ac4132c30685f3c8', N'21', N'tpm5_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'aca0f500199245d0bccf59eddf6e6ca8', N'f5afeee62a1249f18864f070df80956d', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'acc99e9937cd4d27a799d56bc93e5d09', N'4', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'acd5f4fd8f9a42c989ead629e2d9a223', N'17', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'aeb8058daf87432a8d0e6ed3d017079f', N'21', N'tpm4_2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'b211293757ea48a59680a60db43f2869', N'9', N'tpm4_2_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'b49565d758104018b9234d96072637b1', N'4', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'b6bc559784454a65a111336473e9f7c7', N'4', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'b6edee1b15d64e069dc0ece2e5d1c417', N'20', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'b7729ce271464a89a2a2420a2706ec94', N'19', N'tpm4_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'b949031609f544aca8069c009a9cf85c', N'22', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ba18c8379c254a2794c4cc14b5cf54c5', N'21', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bab95fee59c844de92d604dde73356a1', N'5', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bb3c2fa9a295474d9e229e5b559d1b58', N'1', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bc8c25c042e64791a243a4a08d0871e0', N'11', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bd752989150047dcbad1d36cd714e280', N'9', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bd83b7274801494299a93cb7e93916bc', N'13', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'be1881b8e7654d148d710665f1b9cb01', N'16', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bf1ad2110e9043b5a608e9ff03b5c137', N'15', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bf51c4c3e15946f286ec5a2d20e854ac', N'8', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'bfcc54ac37504be9925fcd9a7a6c1912', N'f5afeee62a1249f18864f070df80956d', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c0008c30f4834d02826023993e06ee93', N'17', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c0068aa9305c4068a2a6ae75bf1c9251', N'9', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c07a9123ce15434d92364ba0721e4d14', N'21', N'tpm1_10')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c1f87fc18b804cae8e87f90cb9df9b61', N'3', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c26f1c8006e645bba065cbc061f93aaa', N'19', N'tpm01')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c27ba91f09834e01a2f2ba7d63d140ac', N'18', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c3b3b96f2bcc425eabb9e0fd55c544de', N'20', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c3e1c87525ca4c1899857d897d6cbb9d', N'19', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c3ea31674cec44688e39eb535fb9fb72', N'21', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c43dd59e3340461fb50f2494fcfcac6d', N'9', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c4aa0a7327ec4ad5b28b524e30dcda99', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c6e1cb7e35d84cfd8ce370e21d23b45e', N'6', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c77beea385d74ec18c9332cb9d6a5dbf', N'21', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c81340cc58da4cdabf4b443f1e7243b2', N'19', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c84c7afe9460496a9a1f5759324b7dd9', N'1', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'c90da4ac07df480bb61fbc608c0173c6', N'21', N'S3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'cc76ce5bf7024a5396572fb5ab6f4000', N'19', N'tpm7_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'cc8074e024ee4322a5853572fa4b774b', N'2', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'cd1b17413d424657802b4327f89c56f2', N'19', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ce863250610e4d369ad3d19e3b3a5ed0', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'cf1f7192673542eeaa36e691bef0e47d', N'21', N'tpm4_9')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'cf24b42f511345eb8f3fc3ad553fd972', N'11', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd043fe747b0d43aeac3c850cd06f3bf0', N'13', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd04ed89cf2574f7dbabca90ac11d7b7a', N'9', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd16c5f912324418bbf0d16b087ac952b', N'19', N'S2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd1b37dc92e89406e8e82718153fc1f93', N'8', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd1d5c9f10d9949b19daa3d661d88c365', N'22', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd2361b7725684b54b442eac67bf9f57b', N'20', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd437e4dbd68e44329d5a9dafcbed79ec', N'9', N'tpm01')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd6ba7c6c417b48218fc9a5ecb9d972b4', N'15', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd732fe0938a14b85b39a9c1f924fa86b', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm01')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'd95d9aa5a4de476fbce6d543fe76691f', N'9', N'tpm4_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'da3e8e8c036a408db8da2b97ebfdd078', N'6', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dab2d58f8146402cb734c1df9b794402', N'19', N'tpm3_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dbd4848908704bbe8cc516876193b73b', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm7_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dc1ae9f2b4714177bda606eeecb56232', N'9', N'S3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dc9a288de7e5481cae38d9eb4f522451', N'19', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dd183e07b12841cd943398698cceb806', N'18', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dd8cd1d10caa43b5a4bd3b7521aa12ea', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm5_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'de9a1a4d1c8846f18867c058bac6e760', N'21', N'tpm2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dfc76e7470a74517bbc9d1c33d53954b', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'dfc9f6dc0e7c42a6b632a3974b87febd', N'5', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e1852be53ef24afdb13ed9ace7b5397b', N'1', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e2b59398405843e3ab130bcfa2f0b715', N'11', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e3b2800d9dc14f9ca5124a6234fe9db0', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm5_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e462ce29b43346a3aa8fe2a204191b2a', N'7', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e5161f1827474ed9a23a4fcac1e41b81', N'15', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e58baaab899641d4af7ca630554b389f', N'21', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e63cf9a1093047c6badfffa89d7d63a1', N'22', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e663d0cc67f64bc08507bb57c7e683e4', N'5', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e77f54bf0434470e9170fb85e1db1f41', N'21', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e797cb77d9b546f2a0951326ddb314ed', N'19', N'tpm5_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e7b25228202d4268849dad4e196ba007', N'19', N'tpm4_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e7d061d5b99040f88f08f04189d7055c', N'9', N'tpm7_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e85fd726dbc9459f945405e314167aa6', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e8cb754ceae7434ba153d0dae19f0067', N'13', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e8f900cc4ce8471696c8fd53f7dc849a', N'22', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'e9bd823bdea048f5944e7abb886f896c', N'9', N'S2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ea854d78ae4e4acda6ba79c5f3ded093', N'21', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ead25a7128914e399ed940cb8de572a5', N'11', N'tpm3_3')
GO
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'eb3b67441a2e4436a1d1cd4ea6872c13', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_9')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ebea6c79a19e413586a44565e71039c2', N'9', N'tpm5_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ecd5793e87334c7f9dff1e1c7f17ebab', N'19', N'tpm4_2_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ecda4626456d4dcea865603d9194b56d', N'9', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ee6c3e89294946bc9eda76fdc05beab5', N'2', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'eea4c4c1a7b54468a784e94cb4ceec27', N'9', N'tpm4_2_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'eee45a50496648fc9b8f2e6772c02ef9', N'21', N'tpm1_9')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'eef8f2f2c2374b3eb81aaaba39849406', N'20', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ef292d06a4104e3da8b24e538b19785f', N'9', N'tpm3_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f055490bbc5d4e5389117a430a67eca7', N'17', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f0baf858ff4a40fe951857e94f055486', N'21', N'tpm4_2_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f0f9f2bc70a54d01ac5a0c367d89de7b', N'2', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f196d10f75514c198c5d4a7d1c06f279', N'9', N'tpm4_2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f1ed56396b564a9ea4fe6b833a0d0804', N'ee2436e44bac4ed4ba663ee8159f3af8', N'tpm1_10')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f283e5793fda449e986607b0a135ee85', N'21', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f2c6e06adec74e1f931efcce119facee', N'6', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f4f97ff621fc4249a09ba41c038dbde2', N'21', N'tpm2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f61ecd3684974286bb5fa847ee89b4bc', N'2', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f6a6dc2888864eca8bcc7dff93fc49e5', N'21', N'tpm5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f6a85f681b604748ab54e1d88cfdf14d', N'21', N'tpm01')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f764924efd6040d7a8497509ce6508ad', N'19', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f7e79b2edf2549d884ab7501f4fd503c', N'2', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f8752a2b0db744509255420c1556810b', N'19', N'tpm4_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'f92abe7ae5ff46eeaa9dd8ee4b03557f', N'21', N'tpm4_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'fa601a4036e3496d88ca36365e67f33e', N'21', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'fa9719fcdd9747729979bdd0439f8aa4', N'1', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'fac077fd940b45d69dddeffed684af76', N'21', N'tpm4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'ff7be96b50314afe8b8ad7274cfa7c54', N'7', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_01', N'res1', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_02', N'res1', N'S2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_03', N'res1', N'S3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_1', N'res1', N'tpm01')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_10', N'res1', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_11', N'res1', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_12', N'res1', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_13', N'res1', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_13_1', N'res1', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_13_2', N'res1', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_13_3', N'res1', N'tpm3_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_13_4', N'res1', N'tpm3_7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_14', N'res1', N'tpm4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_15', N'res1', N'tpm4_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16', N'res1', N'tpm4_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_0', N'res1', N'tpm4_2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_1', N'res1', N'tpm4_2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_2', N'res1', N'tpm4_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_3', N'res1', N'tpm4_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_4', N'res1', N'tpm4_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_5', N'res1', N'tpm4_2_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_16_6', N'res1', N'tpm4_2_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_17', N'res1', N'tpm5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_18', N'res1', N'tpm5_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_19', N'res1', N'tpm5_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_2', N'res1', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_20', N'res1', N'tpm5_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_21', N'res1', N'tpm5_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_3', N'res1', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_3_1', N'res1', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_3_1_1', N'res1', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_3_2', N'res1', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_36', N'res1', N'tpm7')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_37', N'res1', N'tpm7_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_38', N'res1', N'tpm7_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_4', N'res1', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_5', N'res1', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_5_1', N'res1', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_5_2', N'res1', N'tpm1_8')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_6', N'res1', N'tpm2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_7', N'res1', N'tpm2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_8', N'res1', N'tpm2_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res1_9', N'res1', N'tpm2_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_1', N'res10', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_10', N'res10', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_11', N'res10', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_12', N'res10', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_2', N'res10', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_3', N'res10', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_4', N'res10', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_5', N'res10', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_6', N'res10', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_7', N'res10', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_8', N'res10', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res10_9', N'res10', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res2_01', N'res2', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res2_10', N'res2', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res2_2', N'res2', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res2_3', N'res2', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res2_5', N'res2', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res2_6', N'res2', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_02', N'res3', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_10', N'res3', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_11', N'res3', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_2', N'res3', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_3', N'res3', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_4_1', N'res3', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res3_5', N'res3', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_01', N'res4', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_10', N'res4', N'tpm1_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_11', N'res4', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_2', N'res4', N'tpm3')
GO
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_3', N'res4', N'tpm3_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_4', N'res4', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_5', N'res4', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res4_6', N'res4', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_1', N'res5', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_13', N'res5', N'tpm3_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_3', N'res5', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_4', N'res5', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_5', N'res5', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_6', N'res5', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_8', N'res5', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res5_9', N'res5', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_1', N'res6', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_12', N'res6', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_13', N'res6', N'tpm3_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_2', N'res6', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_3', N'res6', N'tpm1_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_4', N'res6', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_5', N'res6', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_6', N'res6', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_7', N'res6', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res6_9', N'res6', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_1', N'res7', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_10', N'res7', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_11', N'res7', N'tpm3_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_4', N'res7', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_5', N'res7', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_6', N'res7', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_7', N'res7', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_8', N'res7', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res7_9', N'res7', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res8_0', N'res8', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res8_1', N'res8', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res8_1_1', N'res8', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res8_2', N'res8', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_1', N'res9', N'S1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_10', N'res9', N'tpm1_3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_13', N'res9', N'tpm1_2_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_2', N'res9', N'tpm1_5')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_3', N'res9', N'tpm1_6')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_4', N'res9', N'tpm3')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_5', N'res9', N'tpm3_2')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_6', N'res9', N'tpm3_4')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_7', N'res9', N'tpm1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_8', N'res9', N'tpm1_1')
INSERT [dbo].[roleauthority] ([id], [rolecode], [menuid]) VALUES (N'res9_9', N'res9', N'tpm1_2')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'1', N'区域经理', N'1', N'SM', N'salesManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'10', N'大区总监', N'10', N'DD', N'divisionalDirector')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'11', N'大区经理', N'11', N'CM', N'centerManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'12', N'财务总监', N'12', N'CFO', N'chiefFinancialOfficer')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'13', N'BUHead', N'13', N'BUD', N'BUDirector')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'14', N'商务运营', N'14', N'BO', N'businessOperation')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'15', N'商务经理', N'15', N'BM', N'businessManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'16', N'商务总监', N'16', N'BD', N'businessDirector')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'17', N'应付会计', N'17', N'ASP', N'accountsSupervisorPayable')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'18', N'应收会计', N'18', N'AR', N'accountsReceivable')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'19', N'应付管理员', N'19', N'APA', N'accountsPayableAdmin')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'2', N'会计经理', N'2', N'SEM', N'settlementManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'20', N'大区商务经理', N'20', N'AM', N'areaManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'21', N'管理员', N'21', N'admin', N'admin')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'22', N'业务管理员', N'22', N'SA', N'serviceAdmin')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'3', N'销售主管', N'3', N'SE', N'salesExecutive')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'4', N'区域商务经理', N'4', N'RM', N'regionalManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'5', N'全国销售部总监', N'5', N'NSD', N'nationalSalesDirector')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'6', N'运营支持', N'6', N'MS', N'marketingSupport')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'7', N'招商经理', N'7', N'LM', N'leaseManage')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'8', N'总经理', N'8', N'GM', N'generalManager')
INSERT [dbo].[rolemapping] ([id], [caption], [rolecode], [type], [title]) VALUES (N'9', N'数据经理', N'9', N'DM', N'dataManager')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'2A26D8D4526C4196BC09BD93656EF6DE', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'2D73CD9F496E44AB8CCD1FA56BF82A2E', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'34592CCDD597451485253F3F2ECEF412', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'3F62D7ADE0DA43928499DD43652B45A7', N'CM191', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'4B05EB9CC06B4BA6A4BC458FEB0E4111', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'5156AFBFCD244E5C9403D35452F62EB1', N'CM181', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'59b5478489e8438595d1ca2ce7c67416', N'f6f5d2665750489baf23d6e9abbcc9c2', N'1d6a3e8459a84a88988f5b3d5f31099e', N'10a45f4086e446349eb6815e247e24b2', N'8ae8af5682bb4172a3fcc75c34ec48c3', N'8db4199e070e4033a76241d2e2a92e00', NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'59fefb47e71447f5879502a9666795f5', NULL, NULL, NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'5ab9cd99ab2a48f78e3fc3dc3af0e9e7', N'f6f5d2665750489baf23d6e9abbcc9c2', N'1d6a3e8459a84a88988f5b3d5f31099e', N'10a45f4086e446349eb6815e247e24b2', N'8ae8af5682bb4172a3fcc75c34ec48c3', N'8db4199e070e4033a76241d2e2a92e00', NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'69a6b31e80f349d988ab23d8b12d5905', N'8ae8af5682bb4172a3fcc75c34ec48c3', N'8db4199e070e4033a76241d2e2a92e00', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'7BCB293A014649499FBFA794ABCD9F48', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'A0BECFD693034426AC8252198FC64AE8', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'admin', NULL, NULL, NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'APA11', N'SEM11', N'CFO11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'AR11', N'SEM11', N'CFO11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'ASP11', N'SEM11', N'CFO11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'ASP21', N'SEM11', N'CFO11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'ASP31', N'SEM11', N'CFO11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM101', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM111', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM121', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM21', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM41', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM51', N'RM11', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM61', N'RM11', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM71', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM81', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BM91', N'BD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BO11', N'BO61', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BO21', N'BO61', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BO31', N'BO61', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BO41', N'BO61', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'BO51', N'BO61', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM131', N'CM11', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM141', NULL, N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM151', NULL, N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM161', NULL, N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM171', NULL, N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM31', N'NSD11', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'CM41', N'NSD11', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'd331792b826c4794a657c8fea8f5b005', NULL, NULL, NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'dc59167a5f0b46f9b8f1db6fb7410d79', NULL, NULL, NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'ee2436e44bac4ed4ba663ee8159f3af8', NULL, NULL, NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'EF378BA83DB5403EB2B340D2934BBBC6', N'CM11', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM101', N'LM301', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM111', N'LM301', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM121', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM131', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM141', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM151', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM161', N'NSD11', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM171', N'NSD11', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM181', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM191', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM201', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM21', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM211', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM221', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM231', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM241', N'CM51', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM251', N'CM61', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM261', N'CM61', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM271', N'CM61', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM281', N'CM61', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM291', N'CM61', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM311', N'LM301', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM321', N'CM71', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM331', N'CM71', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM341', N'CM71', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM351', N'CM71', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM361', N'CM11', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM381', N'LM371', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM391', N'NSD21', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM401', N'NSD21', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM41', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM421', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM431', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM441', N'CM91', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM451', N'CM191', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM461', N'CM191', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM471', N'NSD21', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM491', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM501', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM51', N'CM11', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM511', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM521', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM531', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM541', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM551', N'CM101', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM561', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM571', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM581', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM591', N'CM111', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM601', N'CM121', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM61', N'CM11', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM611', N'CM121', N'NSD21', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM71', N'CM71', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM81', N'CM71', N'NSD11', N'BUD11', N'GM11', NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'LM91', N'NSD11', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS11', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
GO
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS21', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS31', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS41', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS51', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS61', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'MS71', N'BUD11', N'GM11', NULL, NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'RM21', N'AM11', N'BD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'SM11', N'CM181', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'SM21', N'CM181', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'SM31', N'CM181', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[territory] ([parentid1], [parentid2], [parentid3], [parentid4], [parentid5], [parentid6], [parentid7], [parentid8]) VALUES (N'SM41', N'CM181', N'BUD11', N'GM11', NULL, NULL, NULL, N'admin')
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'10a45f4086e446349eb6815e247e24b2', N'test05', NULL, N'123456', N'T', N'NSD', N'5', NULL, NULL, N'nationalSalesDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'1d6a3e8459a84a88988f5b3d5f31099e', N'test04', NULL, N'123456', N'T', N'DD', N'10', NULL, NULL, N'divisionalDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'2A26D8D4526C4196BC09BD93656EF6DE', N'YY0552', N'招商经理', N'YY0552', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'2D73CD9F496E44AB8CCD1FA56BF82A2E', N'YY0561', N'招商经理', N'YY0561', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'34592CCDD597451485253F3F2ECEF412', N'YY0273', N'商务经理', N'YY0273', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'3F62D7ADE0DA43928499DD43652B45A7', N'YY0560', N'招商经理', N'YY0560', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'4B05EB9CC06B4BA6A4BC458FEB0E4111', N'YY0544', N'招商经理', N'YY0544', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'5156AFBFCD244E5C9403D35452F62EB1', N'YY0559', N'区域经理', N'YY0559', N'T', N'SM', N'1', NULL, NULL, N'salesManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'59b5478489e8438595d1ca2ce7c67416', N'test01', NULL, N'test01', N'T', N'LM', N'7', N'', NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'59fefb47e71447f5879502a9666795f5', N'test11', NULL, N'123456', N'T', N'ASP', N'17', NULL, NULL, N'accountsSupervisorPayable', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'5ab9cd99ab2a48f78e3fc3dc3af0e9e7', N'test08', NULL, N'test08', N'T', N'SM', N'1', N'', NULL, N'salesManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'69a6b31e80f349d988ab23d8b12d5905', N'test03', NULL, N'test03', N'T', N'MS', N'f5afeee62a1249f18864f070df80956d', N'', NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'7BCB293A014649499FBFA794ABCD9F48', N'YY0553', N'招商经理', N'YY0553', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'8ae8af5682bb4172a3fcc75c34ec48c3', N'test06', NULL, N'123456', N'T', N'BUD', N'13', NULL, NULL, N'BUDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'8db4199e070e4033a76241d2e2a92e00', N'test07', NULL, N'123456', N'T', N'GM', N'8', NULL, NULL, N'generalManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'A0BECFD693034426AC8252198FC64AE8', N'YY0528', N'商务经理', N'YY0528', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'admin', N'admin', N'管理员', N'admin', N'T', N'admin', N'21', N'', NULL, N'admin', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'AM11', N'YY0135', N'大区商务经理', N'YY0135', N'T', N'AM', N'20', NULL, NULL, N'areaManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'APA11', N'YY0343', N'应付会计', N'YY0343', N'T', N'ASP', N'17', NULL, NULL, N'accountsSupervisorPayable', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'AR11', N'YY0307', N'应收会计', N'YY0307', N'T', N'AR', N'18', NULL, NULL, N'accountsReceivable', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'ASP11', N'YY0245', N'应付经理', N'YY0245', N'T', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'ASP21', N'YY0262', N'应付主管', N'YY0262', N'T', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'ASP31', N'YY0376', N'应付会计', N'YY0376', N'T', N'ASP', N'17', NULL, NULL, N'accountsSupervisorPayable', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BD11', N'YY0205', N'商务总监', N'YY0205', N'T', N'BD', N'16', NULL, NULL, N'businessDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM101', N'YY0261', N'商务经理', N'YY0261', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM111', N'YY0428', N'商务经理', N'YY0428', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM121', N'YY0379', N'商务经理', N'YY0379', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM21', N'YY0411', N'商务经理', N'YY0411', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM41', N'YY0095', N'商务经理', N'YY0095', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM51', N'YY0159', N'商务经理', N'YY0159', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM61', N'YY0174', N'商务经理', N'YY0174', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM71', N'YY0045', N'商务经理', N'YY0045', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM81', N'YY0152', N'商务经理', N'YY0152', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BM91', N'YY0392', N'商务经理', N'YY0392', N'T', N'BM', N'15', NULL, NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BO11', N'YY0019', N'商务运营', N'YY0019', N'T', N'BO', N'14', NULL, NULL, N'businessOperation', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BO21', N'YY0141', N'商务运营', N'YY0141', N'T', N'BO', N'14', NULL, NULL, N'businessOperation', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BO31', N'YY0413', N'商务运营', N'YY0413', N'T', N'BO', N'14', NULL, NULL, N'businessOperation', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BO41', N'YY0464', N'商务运营', N'YY0464', N'T', N'BO', N'14', NULL, NULL, N'businessOperation', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BO51', N'YY0070', N'商务运营', N'YY0070', N'T', N'BO', N'14', NULL, NULL, N'businessOperation', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BO61', N'YY0037', N'商务运营', N'YY0037', N'T', N'BO', N'14', NULL, NULL, N'businessOperation', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'BUD11', N'YY0036', N'BUHead', N'YY0036', N'T', N'BUD', N'13', NULL, NULL, N'BUDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CFO11', N'YY0013', N'财务总监', N'YY0013', N'T', N'CFO', N'12', NULL, NULL, N'chiefFinancialOfficer', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM101', N'YY0173', N'大区经理', N'YY0173', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM11', N'YY0303', N'大区经理', N'YY0303', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM111', N'YY0299', N'大区经理', N'YY0299', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM121', N'YY0471', N'大区经理', N'YY0471', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM131', N'YY0053', N'招商经理', N'YY0053', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM141', N'YY0457', N'招商经理', N'YY0457', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM151', N'YY0265', N'招商经理', N'YY0265', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM161', N'YY0480', N'招商经理', N'YY0480', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM171', N'YY0327', N'招商经理', N'YY0327', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM181', N'YY0114', N'大区经理', N'YY0114', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM191', N'YY0024', N'大区经理', N'YY0024', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM31', N'YY0052', N'大区经理', N'YY0052', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM41', N'YY0509', N'招商经理', N'YY0509', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM51', N'YY0120', N'大区经理', N'YY0120', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM61', N'YY0209', N'大区经理', N'YY0209', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM71', N'YY0101', N'大区经理', N'YY0101', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'CM91', N'YY0067', N'大区经理', N'YY0067', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'd331792b826c4794a657c8fea8f5b005', N'test09', NULL, N'123456', N'T', N'BM', N'15', N'', NULL, N'businessManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'dc59167a5f0b46f9b8f1db6fb7410d79', N'test10', NULL, N'123456', N'T', N'AR', N'18', NULL, NULL, N'accountsReceivable', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'ee2436e44bac4ed4ba663ee8159f3af8', N'123', NULL, N'123', N'T', N'admin', N'ee2436e44bac4ed4ba663ee8159f3af8', N'', NULL, N'admin', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'EF378BA83DB5403EB2B340D2934BBBC6', N'YY0545', N'招商经理', N'YY0545', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'f6f5d2665750489baf23d6e9abbcc9c2', N'test02', NULL, N'123456', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'GM11', N'YY0005', N'总经理', N'YY0005', N'T', N'GM', N'8', NULL, NULL, N'generalManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM101', N'YY0074', N'招商经理', N'YY0074', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM111', N'YY0534', N'招商经理', N'YY0534', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM121', N'YY0108', N'招商经理', N'YY0108', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM131', N'YY0043', N'招商经理', N'YY0043', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM141', N'YY0335', N'招商经理', N'YY0335', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM151', N'YY0017', N'招商经理', N'YY0017', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM161', N'YY0475', N'招商经理', N'YY0475', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM171', N'YY0088', N'招商经理', N'YY0088', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM181', N'YY0470', N'招商经理', N'YY0470', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM191', N'YY0285', N'招商经理', N'YY0285', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM201', N'YY0317', N'招商经理', N'YY0317', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM21', N'YY0501', N'招商经理', N'YY0501', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM211', N'YY0028', N'招商经理', N'YY0028', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM221', N'YY0333', N'招商经理', N'YY0333', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM231', N'YY0331', N'招商经理', N'YY0331', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM241', N'YY0452', N'招商经理', N'YY0452', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM251', N'YY0065', N'招商经理', N'YY0065', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM261', N'YY0336', N'招商经理', N'YY0336', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM271', N'YY0020', N'招商经理', N'YY0020', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM281', N'YY0432', N'招商经理', N'YY0432', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM291', N'YY0027', N'招商经理', N'YY0027', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM301', N'YY0486', N'大区经理', N'YY0486', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM311', N'YY0527', N'招商经理', N'YY0527', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM321', N'YY0367', N'招商经理', N'YY0367', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM331', N'YY0487', N'招商经理', N'YY0487', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM341', N'YY0488', N'招商经理', N'YY0488', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM351', N'YY0030', N'招商经理', N'YY0030', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM361', N'YY0083', N'招商经理', N'YY0083', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM371', N'YY0124', N'大区经理', N'YY0124', N'T', N'CM', N'11', NULL, NULL, N'centerManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM381', N'YY0358', N'招商经理', N'YY0358', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM391', N'YY0035', N'招商经理', N'YY0035', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM401', N'YY0068', N'招商经理', N'YY0068', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM41', N'YY0312', N'招商经理', N'YY0312', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM421', N'YY0061', N'招商经理', N'YY0061', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM431', N'YY0529', N'招商经理', N'YY0529', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
GO
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM441', N'YY0326', N'招商经理', N'YY0326', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM451', N'YY0215', N'招商经理', N'YY0215', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM461', N'YY0091', N'招商经理', N'YY0091', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM471', N'YY0502', N'招商经理', N'YY0502', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM491', N'YY0456', N'招商经理', N'YY0456', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM501', N'YY0539', N'招商经理', N'YY0539', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM51', N'YY0372', N'招商经理', N'YY0372', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM511', N'YY0538', N'招商经理', N'YY0538', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM521', N'YY0541', N'招商经理', N'YY0541', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM531', N'YY0316', N'招商经理', N'YY0316', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM541', N'YY0510', N'招商经理', N'YY0510', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM551', N'YY0277', N'招商经理', N'YY0277', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM561', N'YY0313', N'招商经理', N'YY0313', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM571', N'YY0314', N'招商经理', N'YY0314', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM581', N'YY0082', N'招商经理', N'YY0082', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM591', N'YY0511', N'招商经理', N'YY0511', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM601', N'YY0287', N'招商经理', N'YY0287', N'T', N'LM', N'7', N'', NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM61', N'YY0405', N'招商经理', N'YY0405', N'T', N'LM', N'7', N'', NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM611', N'YY0535', N'招商经理', N'YY0535', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM71', N'YY0332', N'招商经理', N'YY0332', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM81', N'YY0086', N'招商经理', N'YY0086', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'LM91', N'YY0263', N'招商经理', N'YY0263', N'T', N'LM', N'7', NULL, NULL, N'leaseManage', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS11', N'YY0193', N'运营支持', N'YY0193', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS21', N'YY0259', N'运营支持', N'YY0259', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS31', N'YY0290', N'运营支持', N'YY0290', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS41', N'YY0496', N'运营支持', N'YY0496', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS51', N'YY0503', N'运营支持', N'YY0503', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS61', N'YY0518', N'运营支持', N'YY0518', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'MS71', N'YY0522', N'运营支持', N'YY0522', N'T', N'MS', N'6', NULL, NULL, N'marketingSupport', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'NSD11', N'YY0009', N'大区总监', N'YY0009', N'T', N'DD', N'10', NULL, NULL, N'divisionalDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'NSD21', N'YY0113', N'大区总监', N'YY0113', N'T', N'DD', N'10', NULL, NULL, N'divisionalDirector', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'RM11', N'YY0281', N'区域商务经理', N'YY0281', N'T', N'RM', N'4', NULL, NULL, N'regionalManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'RM21', N'YY0325', N'区域商务经理', N'YY0325', N'T', N'RM', N'4', NULL, NULL, N'regionalManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'SEM11', N'YY0093', N'会计经理', N'YY0093', N'T', N'SEM', N'2', NULL, NULL, N'settlementManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'SM11', N'YY0234', N'区域经理', N'YY0234', N'T', N'SM', N'1', NULL, NULL, N'salesManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'SM21', N'YY0506', N'区域经理', N'YY0506', N'T', N'SM', N'1', NULL, NULL, N'salesManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'SM31', N'YY0507', N'区域经理', N'YY0507', N'T', N'SM', N'1', NULL, NULL, N'salesManager', NULL, NULL)
INSERT [dbo].[usr] ([id], [name], [caption], [password], [active], [type], [rolecode], [phone], [headimg], [title], [employeeid], [status_menugroup]) VALUES (N'SM41', N'YY0106', N'区域经理', N'YY0106', N'T', N'SM', N'1', NULL, NULL, N'salesManager', NULL, NULL)
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'10a45f4086e446349eb6815e247e24b2', N'10a45f4086e446349eb6815e247e24b2', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'1d6a3e8459a84a88988f5b3d5f31099e', N'1d6a3e8459a84a88988f5b3d5f31099e', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'2A26D8D4526C4196BC09BD93656EF6DE', N'2A26D8D4526C4196BC09BD93656EF6DE', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'2D73CD9F496E44AB8CCD1FA56BF82A2E', N'2D73CD9F496E44AB8CCD1FA56BF82A2E', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'34592CCDD597451485253F3F2ECEF412', N'34592CCDD597451485253F3F2ECEF412', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'3F62D7ADE0DA43928499DD43652B45A7', N'3F62D7ADE0DA43928499DD43652B45A7', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'4B05EB9CC06B4BA6A4BC458FEB0E4111', N'4B05EB9CC06B4BA6A4BC458FEB0E4111', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'5156AFBFCD244E5C9403D35452F62EB1', N'5156AFBFCD244E5C9403D35452F62EB1', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'59b5478489e8438595d1ca2ce7c67416', N'59b5478489e8438595d1ca2ce7c67416', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'59fefb47e71447f5879502a9666795f5', N'59fefb47e71447f5879502a9666795f5', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'5ab9cd99ab2a48f78e3fc3dc3af0e9e7', N'5ab9cd99ab2a48f78e3fc3dc3af0e9e7', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'69a6b31e80f349d988ab23d8b12d5905', N'69a6b31e80f349d988ab23d8b12d5905', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'7BCB293A014649499FBFA794ABCD9F48', N'7BCB293A014649499FBFA794ABCD9F48', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'8ae8af5682bb4172a3fcc75c34ec48c3', N'8ae8af5682bb4172a3fcc75c34ec48c3', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'8db4199e070e4033a76241d2e2a92e00', N'8db4199e070e4033a76241d2e2a92e00', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'A0BECFD693034426AC8252198FC64AE8', N'A0BECFD693034426AC8252198FC64AE8', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'admin', N'admin', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'AM11', N'AM11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'APA11', N'APA11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'AR11', N'AR11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'ASP11', N'ASP11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'ASP21', N'ASP21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'ASP31', N'ASP31', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BD11', N'BD11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM101', N'BM101', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM111', N'BM111', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM121', N'BM121', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM21', N'BM21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM41', N'BM41', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM51', N'BM51', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM61', N'BM61', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM71', N'BM71', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM81', N'BM81', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BM91', N'BM91', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BO11', N'BO11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BO21', N'BO21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BO31', N'BO31', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BO41', N'BO41', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BO51', N'BO51', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BO61', N'BO61', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'BUD11', N'BUD11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CFO11', N'CFO11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM101', N'CM101', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM11', N'CM11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM111', N'CM111', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM121', N'CM121', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM131', N'CM131', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM141', N'CM141', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM151', N'CM151', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM161', N'CM161', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM171', N'CM171', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM181', N'CM181', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM191', N'CM191', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM31', N'CM31', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM41', N'CM41', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM51', N'CM51', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM61', N'CM61', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM71', N'CM71', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'CM91', N'CM91', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'd331792b826c4794a657c8fea8f5b005', N'd331792b826c4794a657c8fea8f5b005', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'dc59167a5f0b46f9b8f1db6fb7410d79', N'dc59167a5f0b46f9b8f1db6fb7410d79', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'ee2436e44bac4ed4ba663ee8159f3af8', N'ee2436e44bac4ed4ba663ee8159f3af8', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'EF378BA83DB5403EB2B340D2934BBBC6', N'EF378BA83DB5403EB2B340D2934BBBC6', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'f6f5d2665750489baf23d6e9abbcc9c2', N'f6f5d2665750489baf23d6e9abbcc9c2', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'GM11', N'GM11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM101', N'LM101', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM111', N'LM111', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM121', N'LM121', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM131', N'LM131', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM141', N'LM141', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM151', N'LM151', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM161', N'LM161', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM171', N'LM171', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM181', N'LM181', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM191', N'LM191', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM201', N'LM201', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM21', N'LM21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM211', N'LM211', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM221', N'LM221', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM231', N'LM231', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM241', N'LM241', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM251', N'LM251', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM261', N'LM261', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM271', N'LM271', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM281', N'LM281', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM291', N'LM291', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM301', N'LM301', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM311', N'LM311', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM321', N'LM321', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM331', N'LM331', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM341', N'LM341', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM351', N'LM351', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM361', N'LM361', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM371', N'LM371', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM381', N'LM381', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM391', N'LM391', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM401', N'LM401', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM41', N'LM41', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM421', N'LM421', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM431', N'LM431', N'1')
GO
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM441', N'LM441', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM451', N'LM451', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM461', N'LM461', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM471', N'LM471', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM491', N'LM491', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM501', N'LM501', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM51', N'LM51', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM511', N'LM511', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM521', N'LM521', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM531', N'LM531', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM541', N'LM541', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM551', N'LM551', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM561', N'LM561', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM571', N'LM571', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM581', N'LM581', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM591', N'LM591', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM601', N'LM601', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM61', N'LM61', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM611', N'LM611', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM71', N'LM71', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM81', N'LM81', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'LM91', N'LM91', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS11', N'MS11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS21', N'MS21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS31', N'MS31', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS41', N'MS41', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS51', N'MS51', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS61', N'MS61', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'MS71', N'MS71', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'NSD11', N'NSD11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'NSD21', N'NSD21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'RM11', N'RM11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'RM21', N'RM21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'SEM11', N'SEM11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'SM11', N'SM11', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'SM21', N'SM21', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'SM31', N'SM31', N'1')
INSERT [dbo].[usrorg] ([id], [userid], [orgid]) VALUES (N'SM41', N'SM41', N'1')
ALTER TABLE [dbo].[territory] ADD  DEFAULT ('admin') FOR [parentid8]
GO
