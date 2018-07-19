IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseSignUps_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseSignUps]'))
ALTER TABLE [dbo].[CourseSignUps] DROP CONSTRAINT [FK_CourseSignUps_Courses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCharacters_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCharacters]'))
ALTER TABLE [dbo].[CourseCharacters] DROP CONSTRAINT [FK_CourseCharacters_Courses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCharacters_Characters]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCharacters]'))
ALTER TABLE [dbo].[CourseCharacters] DROP CONSTRAINT [FK_CourseCharacters_Characters]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[CourseSignUps]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseSignUps]') AND type in (N'U'))
DROP TABLE [dbo].[CourseSignUps]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
DROP TABLE [dbo].[Courses]
GO
/****** Object:  Table [dbo].[CourseCharacters]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseCharacters]') AND type in (N'U'))
DROP TABLE [dbo].[CourseCharacters]
GO
/****** Object:  Table [dbo].[Characters]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Characters]') AND type in (N'U'))
DROP TABLE [dbo].[Characters]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/9/2017 9:00:32 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/9/2017 9:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Characters]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Characters]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Characters](
	[CharacterID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Alias] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
	[Occupation] [varchar](50) NULL,
	[IsHero] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CharacterImage] [varchar](100) NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[CharacterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseCharacters]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseCharacters]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CourseCharacters](
	[CourseCharacterID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[CharacterID] [int] NOT NULL,
 CONSTRAINT [PK_CourseCharacters] PRIMARY KEY CLUSTERED 
(
	[CourseCharacterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseSignUps]    Script Date: 11/9/2017 9:00:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseSignUps]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CourseSignUps](
	[CourseSignUpID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [char](10) NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_CourseSignUps] PRIMARY KEY CLUSTERED 
(
	[CourseSignUpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710252057422_InitialCreate', N'SuperHero.UI.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC2EB24ED20DBAB9609D147D5BD012ED082B515A894A1314FDB23EF493FA0B1D4AD48D175D6CC57616058AB5383C331C1E92437298FFFEF977FCF6D1F78C071CC56E4026E6C168DF3430B103C725CB8999D0C58F6FCCB7BF7CFBCDF8CCF11F8DDF73B923260735493C31EF290D8F2D2BB6EFB18FE291EFDA5110070B3AB203DF424E601DEEEFFF6C1D1C5818204CC0328CF1C78450D7C7E90FF8390D888D439A20EF3270B017F3EF50324B518D2BE4E33844369E98B324C4D17B1C05A3BB8B51266E1A279E8BC09419F616A681080928A260E8F15D8C67340AC87216C207E4DD3E8518E416C88B316FC07129DEB52DFB87AC2D56593187B29398067E4FC08323EE1C4BACBE928BCDC279E0BE3370337D62AD4E5D38312F1C9C7EFA1878E00051E1F1D48B98F0C4BC2C549CC4E115A6A3BCE228833C8F00EECF20FA3CAA22EE199DEBED15643A1CEDB3FFF68C69E2D124C21382131A216FCFB849E69E6BFF869F6E83CF984C8E0EE68BA337AF5E23E7E8F54FF8E855B5A5D05690AB7D804F3751006401DBF0A268BF6958F57A9658B1A856A9937905B804E3C2342ED1E3074C96F41E46CCE11BD338771FB1937FE1E4BA232E0C23A844A3047E5E259E87E61E2ECAAD469DECFF0D5A0F5FBD1E44EB157A709769D70BFA61E04430AE3E622F2D8DEFDD301B5EB5FEFEC4C5CEA3C067BFEBFCCA4A3FCD8224B2596302ADC82D8A9698D6AD1B5B25793B519A410D4FEB1C75F7A9CD2C95E9AD14650D5A6524E42A363D1A727B9F576F67C69D8421745E4A2DE69126C22956AB91507DCFA80A95E439E84A1E028DFA9AE7C2331FB9DE009361072D10882CDCC8C7452BDF05403D447ADB7C83E218E602E73D8AEF1B4C877F0E60FA0CDB4904149D51E487CFAEEDE63E20F82AF1E78CF99BD33558D7DCFE199C239B06D11961B5D6C6FB10D89F83849E11E714517C47ED1C90FDBC75FDEE0083987362DB388ECF81CCD899061067E78017841E1DF6866333D4B68391A9875C5F1D8D0873E9A75CB48C48D4125254A2115345264DA67E08962EE9666A2EAA3735936835958BF535958175B3944BEA0D4D055AEDCCA4068BF5D21E1A3ED84B61773FDA5B6FF1D6CD051537CE6086C4BF62822398C69C1B44298E48D9035DE68D6D040B69F731A5CFBE36A59A7E475E32B4AA9546433A090C3F1A52D8DD1F0DA999F0F9C1755854D2610B940B037C2779F5EEAA7DCC09966D7A38D49AB969E59B990374C3E5248E03DB4D4781E2F08B1F5DD4ED8718CE683FC7C85A239E8540C380E82E5BF2E00BB4CD1449754D4EB18729364EECEC70708A621B39B21BA1414E0FC3F21555615879265237EE074927301D47AC12629BA01846AA4BA83C2C5C62BB21F25ABD24D4ECB884B1B6173AC492531C62C214B67AA28B72F5110833A0D023744A9B87C6568571CD44D444ADBA3E6F0B61CB7E974E2636C2C996D859C34B1EBF3D0B319B3DB6017236BBA48B01DAE3BC6D1094EF55BA1240DCB8EC1A41851D9386A03CA4DA0841EB1EDB0241EB2E797104CDB6A85DFB5FD8AFEE1A3DEB1BE5CD2FEB8DEEDA02376BFED8316A66B127D4A1500347323D4FE7AC103F52C5E60CECE4FBB39887BA224518F80CD3FA914D19EF2AE350AB19442451136049B416507E1128014903AA8771F9595EA3753C8AE8019B9FBB35C2F2B95F80AD7040C6AE5E885604F5D7A622393BED3E8A96156C9048DE69B350C15110429CBCEA0DEFE014DDB9ACEC982EB1709F68B8D230DE190D0E6A895C354ECA1B33B897726AB67B491590F509C9D6F292103E69BC943766702F718EB63B491114F4080BD672517D091F68B0E5271DC56A53948DAD2C518A7F185B9A8CAAF1250A43972C2B1956FC8B31CBD2ABA63FCEFAA71DF9198665C78AECA3C2DA42130D22B4C44229A8064BCFDD28A6A788A23962E73C53C797C4946BAB66FACF5556974FB913F375209766FFE637AB8AEBFBDA622B47231CE41C9AE8B390263D475710405DDD60296FC84391E2E87E1A78894FF41196BE76768157AD9F7D9111C69660BF144149EE92E2DCBAEF3BF58C3C2A86EAA5228259BDA7F4103A7FE7F167D5E3BA98548F921F51555174C7565BEB395D28D3AFB7C430B17F67B5223CCFC8E2B9295500FEA9274625BD4102AB947547AD67A05431EB25DD118534932AA450D4C3CA6A3249CDC86AC14A781A8FAA25BA6B90D347AAE872697764452249155A51BC02B6C266B1AC3BAA22D7A40AAC28EE8E5D269E88B3E80EAF5DDACDCBEA8B57B6C15D6FF5D2603CCF9438CCE257B9C7AF02553EF7C4E237F51218FFBE9374D2EEF256A75376B0B11E9D3418FAB9A776055E9F7A1AEFEDF598B57BEDDAF4DE74AFAFC7EB47DA67A586B4CB13450AEDC56E4FD8D58DF90EABFD318DB4E5CA444C23772310EA29A6D81F3181D1EC8B37F55CCC26F25CE012117781639AE5729887FB0787C2739CDD791A63C5B1E32976A8BAF731F53EDB405A167940917D8F223949628DE72325A874FE7C411CFC3831FF4A6B1DA74719EC5FE9E73DE322BE23EE97040A6EA3041B7FCB499FC3A4D337EFB376F4F14377AF5EFCF129ABBA675C4730628E8D7DC197ABF470FD49442F6BB2AA6B58B3F24389973BA06A6F1094A8C28058FDC9C1DCA5833C37C8ADFCCE478FDFF7354DF9A4602D44C5B381A1F00671A1EE59C02A58DA27010EFCA4E993807E8D553F1158C534EDF30097F407131F07749F86F29A5B5C6A149BA24D4C49A99F5B93ABD7CAB4DCF6DA24E560AF35D0E53CEB1E706BE452AFC08C1796863CD8EAA8C8321E0C7B9BD47EF6D4E25DC9262EF33CB69B44BCC9BCE1869BA1AF2A5D780712DC14093BDB4F0ADE34D77407B93B9E59D92FF577C7C8C6D3B8B69FE0BB69B2E98E79779C6CBDD278778C6BDB5A3FB7CCB4CE4BE8D69372E5FC22CD858CEA2CB82DE9363B38871DFE3C0012641165F656529DE5D594A1DAA2B014D12BD5A797898AA58123E995249AD5F66B2B5FF01B1BCB659AD56A92329B74F3F9BF51379769D6AD4975DC46BAB032D95095C2DD328F35E541BDA4F4E05A4B5AB2D1DB62D6C6DBF597940D3C88536AA3477347FC72927F0771C99043A747B2AF7CDD0B6B67E52F2CC2FA1DBBCB1282FDBD4582EDDAAA59C85C9045902FDE8245B98870427389297260493D89A8BB4036856276C69C3EF64ECFEDD84DC71C3B17E43AA16142A1C9D89F7BB5032F160434E94F339AEB368FAFC3F4EF960CD10430D36567F3D7E45DE27A4E61F7B9E24C4803C1A20B7EA2CBFA92B293DDE553817415908E40DC7D4550748BFDD003B0F89ACCD0035EC536A0DF07BC44F6537902A80369EF88BADBC7A72E5A46C88F3946591F7E02871DFFF197FF01614DA90968540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b96e9610-38bb-4ed6-9b39-862119e3a29b', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7a0cd888-ee48-40e5-b577-b7051ec6033d', N'Citizen')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd2aba202-d281-4993-ab42-4374efce34f7', N'Hero')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'89146a57-1c62-442f-a958-7a77c8937c80', N'7a0cd888-ee48-40e5-b577-b7051ec6033d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c59a6c62-0d21-4e07-a765-2477babb0972', N'b96e9610-38bb-4ed6-9b39-862119e3a29b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2268b788-8e46-430c-a83f-74a778f458ea', N'd2aba202-d281-4993-ab42-4374efce34f7')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2268b788-8e46-430c-a83f-74a778f458ea', N'cptrogers@shield.gov', 0, N'AOFeg4xJlXiZcF2FDt+/NmJ9VsRGefWLPLlsFeIhKDESMI4f6vLzf2ewTxtp9OyZTg==', N'6bf97746-9d43-42e2-824e-0e8aac683fe5', NULL, 0, 0, NULL, 1, 0, N'cptrogers@shield.gov')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'89146a57-1c62-442f-a958-7a77c8937c80', N'stanlee@marvel.com', 0, N'AJtosZeVyqhoEwOUBhEGzA9gI94/6/NhdepTdJX7GXcn6nJW0M+pjJVMDahgrPCGOA==', N'34dc1974-7f56-4380-967e-986093c239ad', NULL, 0, 0, NULL, 1, 0, N'stanlee@marvel.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c59a6c62-0d21-4e07-a765-2477babb0972', N'admin@superheroinc.com', 0, N'APUOTbZTKE/R9JHTyR4gGH+KbN5HH+lLrYFWtIgX5SHTmS2381SxvEI9Bv5UMzw/9Q==', N'33cc9e5c-af75-4f89-839e-da105031feb7', NULL, 0, 0, NULL, 1, 0, N'admin@superheroinc.com')
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (7, N'Steven Grant Rogers', N'Captain America', N'Leader of the Avengers, Master Marksman, Artist', N'intelligence operative; former soldier', 1, 0, N'283a6148-47d6-4e25-8897-333ce207ae8f.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (8, N'Jack Napier', N'The Joker', N'Based out of Arkham Asylum and Gotham City', NULL, 0, 1, N'e3d001fa-bf02-4b1a-8a1d-244748dd0a39.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (9, N'Erik Lensherr', N'Magneto', N'Base Unknown, but be wary near Professor Xavier''s School for Gifted Youngsters, Salem Center, Westchester County, New York', N'Currently Revolutionary and Conqueror', 0, 1, N'c363c02a-f6c7-4b5a-83c0-a7d7f8d76bc7.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (10, N'Loki Laufeyson', N'Loki', N'Based on Asgard, but has tendency to come to earth to wreak havoc near his brother Thor', N'God of evil; former god of mischief and madness', 0, 0, N'f68984c4-f133-4ec6-ad0e-096a385e70e4.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (11, N'Eddie Brock', N'Venom', N'Based out of New York, New York', N'Vigilante; former journalist for the Daily Globe', 0, 1, N'53e0b464-5b00-4ba3-9e46-8891c87054de.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (12, N'Unknown', N'Bane', N'Based out of Santa Prisca, but tends to seek out Batman', NULL, 0, 1, N'dfa790f0-1b89-4670-b9e9-482790b7bc0d.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (13, N'Norman Osborn', N'Green Goblin', N'Based out of H.A.M.M.E.R. base; formerly Avengers Tower, New York City, New York', N'Prof. criminal, owner/ pres of Osborn Industries', 0, 1, N'a69192ae-f0eb-4d75-a9d5-ace94d5dc4eb.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (14, N'Thanos', N'The Mad Titan', N'Based out of Titan, but very mobile in search for infinity stones', N'Conqueror, worshiper of Death', 0, 1, N'22c5216c-7b7b-44a6-9351-898e354493c9.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (15, N'Slade Joseph Wilson', N'Deathstroke', N'Not to be confused with anti-hero Deadpool, based out of The Labyrinth (location unknown)', N'Mercenary; Former Soldier, Big-Game Hunter', 0, 1, N'ef8346f0-a323-4147-9b78-d58d027943d0.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (16, N'Emma Frost', N'White Queen', N'although known to switch sides, is currently a wanted villain, primarily based out of Massachusetts', NULL, 0, 1, N'1790ff7c-2287-46fe-b3b1-da2198b4d695.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (17, N'Harvey Dent', N'Two-Face', NULL, N'criminal; former district attorney', 0, 1, N'3d9f74ff-25e6-4479-9f77-9ac8b44bded7.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (18, N'Unknown', N'Doomsday', NULL, N'Destroyer', 0, 1, N'6da9e7dc-7a40-484f-b490-bba8bba7b26f.png')
INSERT [dbo].[Characters] ([CharacterID], [Name], [Alias], [Description], [Occupation], [IsHero], [IsActive], [CharacterImage]) VALUES (19, N'Alexander Joseph Luthor', N'Lex Luthor', NULL, N'owner of LexCorp', 0, 1, N'39e63512-b595-41e9-b975-08becd157a98.png')
SET IDENTITY_INSERT [dbo].[Characters] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [Name], [Description]) VALUES (1, N'Self Defense', N'Self Defense welcomes all ages to learn techniques to increase your personal safety. It meets on Monday evenings at 7pm.')
INSERT [dbo].[Courses] ([CourseID], [Name], [Description]) VALUES (2, N'Anger Management', N'Managing your anger through meditation with Hulk')
INSERT [dbo].[Courses] ([CourseID], [Name], [Description]) VALUES (3, N'Underground Cave Construction', N'How to build an underground cave for your lair or headquarters')
INSERT [dbo].[Courses] ([CourseID], [Name], [Description]) VALUES (4, N'Self Awareness', N'Learn to find out who you are')
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[CourseSignUps] ON 

INSERT [dbo].[CourseSignUps] ([CourseSignUpID], [FirstName], [LastName], [Email], [Phone], [CourseID]) VALUES (1, N'Bob', N'Smith', N'bsmith@abc.com', N'1111111111', 1)
INSERT [dbo].[CourseSignUps] ([CourseSignUpID], [FirstName], [LastName], [Email], [Phone], [CourseID]) VALUES (2, N'asdf', N'asdf', N'asdf@asdf.com', N'1111111111', 1)
INSERT [dbo].[CourseSignUps] ([CourseSignUpID], [FirstName], [LastName], [Email], [Phone], [CourseID]) VALUES (3, N'Stan', N'Lee', N'stanlee@marvel.com', N'1111111111', 4)
SET IDENTITY_INSERT [dbo].[CourseSignUps] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCharacters_Characters]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCharacters]'))
ALTER TABLE [dbo].[CourseCharacters]  WITH CHECK ADD  CONSTRAINT [FK_CourseCharacters_Characters] FOREIGN KEY([CharacterID])
REFERENCES [dbo].[Characters] ([CharacterID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCharacters_Characters]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCharacters]'))
ALTER TABLE [dbo].[CourseCharacters] CHECK CONSTRAINT [FK_CourseCharacters_Characters]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCharacters_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCharacters]'))
ALTER TABLE [dbo].[CourseCharacters]  WITH CHECK ADD  CONSTRAINT [FK_CourseCharacters_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCharacters_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCharacters]'))
ALTER TABLE [dbo].[CourseCharacters] CHECK CONSTRAINT [FK_CourseCharacters_Courses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseSignUps_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseSignUps]'))
ALTER TABLE [dbo].[CourseSignUps]  WITH CHECK ADD  CONSTRAINT [FK_CourseSignUps_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseSignUps_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseSignUps]'))
ALTER TABLE [dbo].[CourseSignUps] CHECK CONSTRAINT [FK_CourseSignUps_Courses]
GO
