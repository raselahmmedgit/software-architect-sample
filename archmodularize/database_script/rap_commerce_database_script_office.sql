
USE [AuditManagement_Test]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog_Activity]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog_Activity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityTypeId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityTypeId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ActivityLog_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog_ActivityType]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog_ActivityType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ActivityLog_ActivityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_Brand]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_Brand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Catalog_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_Category]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IncludeInMenu] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ParentId] [bigint] NULL,
	[ThumbnailImageId] [bigint] NULL,
 CONSTRAINT [PK_Catalog_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_Product]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[ShortDescription] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Specification] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OldPrice] [decimal](18, 2) NULL,
	[SpecialPrice] [decimal](18, 2) NULL,
	[SpecialPriceStart] [datetimeoffset](7) NULL,
	[SpecialPriceEnd] [datetimeoffset](7) NULL,
	[HasOptions] [bit] NOT NULL,
	[IsVisibleIndividually] [bit] NOT NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsCallForPricing] [bit] NOT NULL,
	[IsAllowToOrder] [bit] NOT NULL,
	[StockTrackingIsEnabled] [bit] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[Sku] [nvarchar](450) NULL,
	[Gtin] [nvarchar](450) NULL,
	[NormalizedName] [nvarchar](450) NULL,
	[DisplayOrder] [int] NOT NULL,
	[VendorId] [bigint] NULL,
	[ThumbnailImageId] [bigint] NULL,
	[ReviewsCount] [int] NOT NULL,
	[RatingAverage] [float] NULL,
	[BrandId] [bigint] NULL,
	[TaxClassId] [bigint] NULL,
 CONSTRAINT [PK_Catalog_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductAttribute]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductAttribute](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[GroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductAttributeGroup]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductAttributeGroup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Catalog_ProductAttributeGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductAttributeValue]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductAttributeValue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AttributeId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Catalog_ProductAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductCategory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsFeaturedProduct] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductLink]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductLink](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[LinkedProductId] [bigint] NOT NULL,
	[LinkType] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductMedia]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductMedia](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[MediaId] [bigint] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductMedia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductOption]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductOption](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Catalog_ProductOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductOptionCombination]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductOptionCombination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[Value] [nvarchar](450) NULL,
	[SortIndex] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductOptionCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductOptionValue]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductOptionValue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Value] [nvarchar](450) NULL,
	[DisplayType] [nvarchar](450) NULL,
	[SortIndex] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductOptionValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductPriceHistory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductPriceHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[OldPrice] [decimal](18, 2) NULL,
	[SpecialPrice] [decimal](18, 2) NULL,
	[SpecialPriceStart] [datetimeoffset](7) NULL,
	[SpecialPriceEnd] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Catalog_ProductPriceHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductTemplate]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductTemplate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Catalog_ProductTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductTemplateProductAttribute]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductTemplateProductAttribute](
	[ProductTemplateId] [bigint] NOT NULL,
	[ProductAttributeId] [bigint] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductTemplateProductAttribute] PRIMARY KEY CLUSTERED 
(
	[ProductTemplateId] ASC,
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cms_Menu]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_Menu](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsSystem] [bit] NOT NULL,
 CONSTRAINT [PK_Cms_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cms_MenuItem]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_MenuItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentId] [bigint] NULL,
	[MenuId] [bigint] NOT NULL,
	[EntityId] [bigint] NULL,
	[CustomLink] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Cms_MenuItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cms_Page]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_Page](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cms_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments_Comment]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments_Comment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[CommenterName] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EntityTypeId] [nvarchar](450) NULL,
	[EntityId] [bigint] NOT NULL,
	[ParentId] [bigint] NULL,
 CONSTRAINT [PK_Comments_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts_Contact]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](450) NULL,
	[PhoneNumber] [nvarchar](450) NULL,
	[EmailAddress] [nvarchar](450) NULL,
	[Address] [nvarchar](450) NULL,
	[Content] [nvarchar](max) NULL,
	[ContactAreaId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Contacts_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts_ContactArea]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_ContactArea](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts_ContactArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Address]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Address](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](450) NULL,
	[Phone] [nvarchar](450) NULL,
	[AddressLine1] [nvarchar](450) NULL,
	[AddressLine2] [nvarchar](450) NULL,
	[City] [nvarchar](450) NULL,
	[ZipCode] [nvarchar](450) NULL,
	[DistrictId] [bigint] NULL,
	[StateOrProvinceId] [bigint] NOT NULL,
	[CountryId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Core_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_AppSetting]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_AppSetting](
	[Id] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](450) NULL,
	[Module] [nvarchar](450) NULL,
	[IsVisibleInCommonSettingPage] [bit] NOT NULL,
 CONSTRAINT [PK_Core_AppSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Country]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Country](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Code3] [nvarchar](450) NULL,
	[IsBillingEnabled] [bit] NOT NULL,
	[IsShippingEnabled] [bit] NOT NULL,
	[IsCityEnabled] [bit] NOT NULL,
	[IsZipCodeEnabled] [bit] NOT NULL,
	[IsDistrictEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_Core_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_CustomerGroup]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_CustomerGroup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Core_CustomerGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_CustomerGroupUser]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_CustomerGroupUser](
	[UserId] [bigint] NOT NULL,
	[CustomerGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_CustomerGroupUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_District]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_District](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateOrProvinceId] [bigint] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Type] [nvarchar](450) NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Entity]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Entity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityTypeId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Core_Entity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_EntityType]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_EntityType](
	[Id] [nvarchar](450) NOT NULL,
	[IsMenuable] [bit] NOT NULL,
	[AreaName] [nvarchar](450) NULL,
	[RoutingController] [nvarchar](450) NULL,
	[RoutingAction] [nvarchar](450) NULL,
 CONSTRAINT [PK_Core_EntityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Media]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Media](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](450) NULL,
	[FileSize] [int] NOT NULL,
	[FileName] [nvarchar](450) NULL,
	[MediaType] [int] NOT NULL,
 CONSTRAINT [PK_Core_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Role]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_RoleClaim]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_RoleClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_RoleClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_StateOrProvince]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_StateOrProvince](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [nvarchar](450) NULL,
	[Code] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Type] [nvarchar](450) NULL,
 CONSTRAINT [PK_Core_StateOrProvince] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_User]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserGuid] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](450) NOT NULL,
	[VendorId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[DefaultShippingAddressId] [bigint] NULL,
	[DefaultBillingAddressId] [bigint] NULL,
	[RefreshTokenHash] [nvarchar](450) NULL,
	[Culture] [nvarchar](450) NULL,
	[ExtensionData] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserAddress]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[AddressType] [int] NOT NULL,
	[LastUsedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Core_UserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserClaim]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_UserClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserLogin]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserLogin](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserRole]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserRole](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserToken]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserToken](
	[UserId] [bigint] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_UserToken] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Vendor]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Vendor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Core_Vendor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Widget]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Widget](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[ViewComponentName] [nvarchar](450) NULL,
	[CreateUrl] [nvarchar](450) NULL,
	[EditUrl] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[IsPublished] [bit] NOT NULL,
 CONSTRAINT [PK_Core_Widget] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_WidgetInstance]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetInstance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[PublishStart] [datetimeoffset](7) NULL,
	[PublishEnd] [datetimeoffset](7) NULL,
	[WidgetId] [nvarchar](450) NULL,
	[WidgetZoneId] [bigint] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Data] [nvarchar](max) NULL,
	[HtmlData] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_WidgetInstance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_WidgetZone]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetZone](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_WidgetZone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Stock]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Stock](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[WarehouseId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReservedQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Inventory_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_StockHistory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_StockHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[WarehouseId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[AdjustedQuantity] [bigint] NOT NULL,
	[Note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Inventory_StockHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Warehouse]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Warehouse](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[VendorId] [bigint] NULL,
 CONSTRAINT [PK_Inventory_Warehouse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization_Culture]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_Culture](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Localization_Culture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization_LocalizedContentProperty]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_LocalizedContentProperty](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityType] [nvarchar](450) NULL,
	[CultureId] [nvarchar](450) NOT NULL,
	[ProperyName] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localization_LocalizedContentProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization_Resource]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_Resource](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[CultureId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Localization_Resource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_NewsCategory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_News_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_NewsItem]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[ShortContent] [nvarchar](450) NULL,
	[FullContent] [nvarchar](max) NULL,
	[ThumbnailImageId] [bigint] NULL,
 CONSTRAINT [PK_News_NewsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_NewsItemCategory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsItemCategory](
	[CategoryId] [bigint] NOT NULL,
	[NewsItemId] [bigint] NOT NULL,
 CONSTRAINT [PK_News_NewsItemCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[NewsItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Order]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[VendorId] [bigint] NULL,
	[CouponCode] [nvarchar](450) NULL,
	[CouponRuleName] [nvarchar](450) NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[SubTotalWithDiscount] [decimal](18, 2) NOT NULL,
	[ShippingAddressId] [bigint] NOT NULL,
	[BillingAddressId] [bigint] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderNote] [nvarchar](1000) NULL,
	[ParentId] [bigint] NULL,
	[IsMasterOrder] [bit] NOT NULL,
	[ShippingMethod] [nvarchar](450) NULL,
	[ShippingFeeAmount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[OrderTotal] [decimal](18, 2) NOT NULL,
	[PaymentMethod] [nvarchar](450) NULL,
	[PaymentFeeAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_OrderAddress]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_OrderAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](450) NULL,
	[Phone] [nvarchar](450) NULL,
	[AddressLine1] [nvarchar](450) NULL,
	[AddressLine2] [nvarchar](450) NULL,
	[City] [nvarchar](450) NULL,
	[ZipCode] [nvarchar](450) NULL,
	[DistrictId] [bigint] NULL,
	[StateOrProvinceId] [bigint] NOT NULL,
	[CountryId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Orders_OrderAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_OrderHistory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_OrderHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[OldStatus] [int] NULL,
	[NewStatus] [int] NOT NULL,
	[OrderSnapshot] [nvarchar](max) NULL,
	[Note] [nvarchar](1000) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
 CONSTRAINT [PK_Orders_OrderHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_OrderItem]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_OrderItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[ProductId] [bigint] NOT NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TaxPercent] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments_Payment]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments_Payment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentFee] [decimal](18, 2) NOT NULL,
	[PaymentMethod] [nvarchar](450) NULL,
	[GatewayTransactionId] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[FailureMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payments_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments_PaymentProvider]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments_PaymentProvider](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[ConfigureUrl] [nvarchar](450) NULL,
	[LandingViewComponentName] [nvarchar](450) NULL,
	[AdditionalSettings] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payments_PaymentProvider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRule]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[StartOn] [datetimeoffset](7) NULL,
	[EndOn] [datetimeoffset](7) NULL,
	[IsCouponRequired] [bit] NOT NULL,
	[RuleToApply] [nvarchar](450) NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[MaxDiscountAmount] [decimal](18, 2) NULL,
	[DiscountStep] [int] NULL,
	[UsageLimitPerCoupon] [int] NULL,
	[UsageLimitPerCustomer] [int] NULL,
 CONSTRAINT [PK_Pricing_CartRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleCategory]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleCategory](
	[CategoryId] [bigint] NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleCategory] PRIMARY KEY CLUSTERED 
(
	[CartRuleId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleCustomerGroup]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleCustomerGroup](
	[CartRuleId] [bigint] NOT NULL,
	[CustomerGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleCustomerGroup] PRIMARY KEY CLUSTERED 
(
	[CartRuleId] ASC,
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleProduct]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleProduct](
	[ProductId] [bigint] NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleProduct] PRIMARY KEY CLUSTERED 
(
	[CartRuleId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleUsage]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleUsage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
	[CouponId] [bigint] NULL,
	[UserId] [bigint] NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleUsage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CatalogRule]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CatalogRule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[StartOn] [datetimeoffset](7) NULL,
	[EndOn] [datetimeoffset](7) NULL,
	[RuleToApply] [nvarchar](450) NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[MaxDiscountAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Pricing_CatalogRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CatalogRuleCustomerGroup]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CatalogRuleCustomerGroup](
	[CatalogRuleId] [bigint] NOT NULL,
	[CustomerGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CatalogRuleCustomerGroup] PRIMARY KEY CLUSTERED 
(
	[CatalogRuleId] ASC,
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_Coupon]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_Coupon](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
	[Code] [nvarchar](450) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Pricing_Coupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductComparison_ComparingProduct]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComparison_ComparingProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductComparison_ComparingProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRecentlyViewed_RecentlyViewedProduct]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRecentlyViewed_RecentlyViewedProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[LatestViewedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_ProductRecentlyViewed_RecentlyViewedProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews_Reply]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews_Reply](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReviewId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[ReplierName] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Reviews_Reply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews_Review]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews_Review](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Title] [nvarchar](450) NULL,
	[Comment] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[ReviewerName] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EntityTypeId] [nvarchar](450) NULL,
	[EntityId] [bigint] NOT NULL,
 CONSTRAINT [PK_Reviews_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Search_Query]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Search_Query](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[QueryText] [nvarchar](500) NOT NULL,
	[ResultsCount] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Search_Query] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments_Shipment]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments_Shipment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[TrackingNumber] [nvarchar](450) NULL,
	[WarehouseId] [bigint] NOT NULL,
	[VendorId] [bigint] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Shipments_Shipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments_ShipmentItem]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments_ShipmentItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShipmentId] [bigint] NOT NULL,
	[OrderItemId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Shipments_ShipmentItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_ShippingProvider]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_ShippingProvider](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[ConfigureUrl] [nvarchar](450) NULL,
	[ToAllShippingEnabledCountries] [bit] NOT NULL,
	[OnlyCountryIdsString] [nvarchar](1000) NULL,
	[ToAllShippingEnabledStatesOrProvinces] [bit] NOT NULL,
	[OnlyStateOrProvinceIdsString] [nvarchar](1000) NULL,
	[AdditionalSettings] [nvarchar](max) NULL,
	[ShippingPriceServiceTypeName] [nvarchar](450) NULL,
 CONSTRAINT [PK_Shipping_ShippingProvider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingTableRate_PriceAndDestination]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingTableRate_PriceAndDestination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [nvarchar](450) NULL,
	[StateOrProvinceId] [bigint] NULL,
	[DistrictId] [bigint] NULL,
	[ZipCode] [nvarchar](450) NULL,
	[Note] [nvarchar](max) NULL,
	[MinOrderSubtotal] [decimal](18, 2) NOT NULL,
	[ShippingPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ShippingTableRate_PriceAndDestination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart_Cart]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart_Cart](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CouponCode] [nvarchar](450) NULL,
	[CouponRuleName] [nvarchar](450) NULL,
	[ShippingMethod] [nvarchar](450) NULL,
	[IsProductPriceIncludeTax] [bit] NOT NULL,
	[ShippingAmount] [decimal](18, 2) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[ShippingData] [nvarchar](max) NULL,
	[OrderNote] [nvarchar](1000) NULL,
	[LockedOnCheckout] [bit] NOT NULL,
 CONSTRAINT [PK_ShoppingCart_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart_CartItem]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart_CartItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CartId] [bigint] NOT NULL,
 CONSTRAINT [PK_ShoppingCart_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax_TaxClass]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax_TaxClass](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Tax_TaxClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax_TaxRate]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax_TaxRate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TaxClassId] [bigint] NOT NULL,
	[CountryId] [nvarchar](450) NULL,
	[StateOrProvinceId] [bigint] NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[ZipCode] [nvarchar](450) NULL,
 CONSTRAINT [PK_Tax_TaxRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList_WishList]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList_WishList](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[SharingCode] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_WishList_WishList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList_WishListItem]    Script Date: 3/5/2023 12:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList_WishListItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WishListId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_WishList_WishListItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190212090153_SimplCommerce_v1_0_0', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190224050227_AddedCartLockOnCheckout', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190302122027_MomoPayment', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190314044223_AddedNganLuongPayment', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190710165614_DefaultCultureConfiguration', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190726221912_AddedCurrencySetting', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190727083300_AddedContentLocalization', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190801065533_AddedCashfreePayment', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190803175214_AddedAssetBundlingConfig', N'6.0.0')
GO
SET IDENTITY_INSERT [dbo].[ActivityLog_ActivityType] ON 

INSERT [dbo].[ActivityLog_ActivityType] ([Id], [Name]) VALUES (1, N'EntityView')
SET IDENTITY_INSERT [dbo].[ActivityLog_ActivityType] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_Brand] ON 

INSERT [dbo].[Catalog_Brand] ([Id], [Name], [Slug], [Description], [IsPublished], [IsDeleted]) VALUES (1, N'Adidas', N'adidas', NULL, 1, 0)
INSERT [dbo].[Catalog_Brand] ([Id], [Name], [Slug], [Description], [IsPublished], [IsDeleted]) VALUES (2, N'Calvin Klein', N'calvin-klein', NULL, 1, 0)
INSERT [dbo].[Catalog_Brand] ([Id], [Name], [Slug], [Description], [IsPublished], [IsDeleted]) VALUES (3, N'Ogival', N'ogival', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Catalog_Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_Category] ON 

INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (1, N'Woman', N'woman', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (2, N'Man', N'man', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (3, N'Shoes', N'shoes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (4, N'Watches', N'watches', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (5, N'T-Shirt', N't-shirt', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 2, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (6, N'Suit', N'suit', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 2, NULL)
SET IDENTITY_INSERT [dbo].[Catalog_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_Product] ON 

INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (1, N'Lightweight Jacket', N'lightweight-jacket', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T15:02:17.0131910+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0133446+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1, 1, 0, 0, 1, 1, 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (2, N'Lightweight Jacket M Black', N'lightweight-jacket-m-black', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0496868+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0490714+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0490747+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'M-Black', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (3, N'Lightweight Jacket M Gray', N'lightweight-jacket-m-gray', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554427+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554403+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554418+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'M-Gray', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (4, N'Lightweight Jacket L Black', N'lightweight-jacket-l-black', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554601+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554598+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554598+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'L-Black', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (5, N'Lightweight Jacket L Gray', N'lightweight-jacket-l-gray', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554688+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554685+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554686+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'L-Gray', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (6, N'Lightweight Jacket S Black', N'lightweight-jacket-s-black', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554741+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554738+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554739+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'S-Black', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (7, N'Lightweight Jacket S Gray', N'lightweight-jacket-s-gray', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554798+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554795+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554796+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'S-Gray', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (8, N'Esprit Ruffle Shirt', N'esprit-ruffle-shirt', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:14:54.9500292+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:14:54.9500303+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(16.64 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 5, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (9, N'Herschel supply', N'herschel-supply', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:16:28.3513281+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:16:28.3513289+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(35.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 7, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (10, N'Only Check Trouser', N'only-check-trouser', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:17:33.9968471+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:17:33.9968483+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(25.50 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 9, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (11, N'Classic Trench Coat', N'classic-trench-coat', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:18:38.8006442+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:18:38.8006452+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 11, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (12, N'Front Pocket Jumper', N'front-pocket-jumper', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:20:26.0181214+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:20:26.0181225+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(34.75 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 13, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (13, N'Vintage Inspired Classic', N'vintage-inspired-classic', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:22:07.9910541+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:22:07.9910553+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(93.20 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 15, 0, NULL, 3, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (14, N'Shirt in Stretch Cotton', N'shirt-in-stretch-cotton', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:23:06.0599222+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:23:06.0599232+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(52.66 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 17, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (15, N'Pieces Metallic Printed', N'pieces-metallic-printed', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:24:48.0791813+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:24:48.0791822+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(18.96 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 19, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (16, N'Converse All Star Hi Plimsolls', N'converse-all-star-hi-plimsolls', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:26:22.6986514+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:26:22.6986524+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 21, 0, NULL, 1, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (17, N'Femme T-Shirt In Stripe', N'femme-t-shirt-in-stripe', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:27:33.7510433+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:27:33.7510446+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(25.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 23, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (18, N'Herschel supply', N'herschel-supply-2', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:28:33.4852442+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:28:33.4852456+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(63.16 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 25, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (19, N'Herschel supply', N'herschel-supply-2-3', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:29:44.3076497+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:29:44.3076505+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(63.15 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 27, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (20, N'T-Shirt with Sleeve', N't-shirt-with-sleeve', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:30:56.2639586+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:30:56.2639602+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(18.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 29, 1, 5, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (21, N'Pretty Little Thing', N'pretty-little-thing', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:32:22.4371355+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:32:22.4371365+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(54.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 31, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (22, N'Square Neck Back', N'square-neck-back', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:33:38.3028193+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:33:38.3028200+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 1, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 34, 1, 5, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (23, N'Square Neck Back Silver S', N'square-neck-back-silver-s', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1186306+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1186262+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1186289+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Silver-S', 0, NULL, 34, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (24, N'Square Neck Back Silver M', N'square-neck-back-silver-m', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1245088+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1245061+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1245075+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Silver-M', 0, NULL, 34, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (25, N'Square Neck Back Gray S', N'square-neck-back-gray-s', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1245475+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1245466+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1245470+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Gray-S', 0, NULL, 34, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (26, N'Square Neck Back Gray M', N'square-neck-back-gray-m', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1245624+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1245617+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1245620+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Gray-M', 0, NULL, 34, 0, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Catalog_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductCategory] ON 

INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (1, 0, 0, 5, 1)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (2, 0, 0, 2, 7)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (3, 0, 0, 5, 7)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (4, 0, 0, 2, 6)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (5, 0, 0, 5, 6)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (6, 0, 0, 2, 5)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (7, 0, 0, 5, 5)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (8, 0, 0, 2, 4)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (9, 0, 0, 5, 4)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (10, 0, 0, 5, 3)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (11, 0, 0, 2, 2)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (12, 0, 0, 5, 2)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (13, 0, 0, 2, 3)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (14, 0, 0, 2, 1)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (15, 0, 0, 1, 8)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (16, 0, 0, 1, 9)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (17, 0, 0, 2, 10)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (18, 0, 0, 1, 11)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (19, 0, 0, 1, 12)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (20, 0, 0, 4, 13)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (21, 0, 0, 2, 13)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (22, 0, 0, 1, 14)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (23, 0, 0, 1, 15)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (24, 0, 0, 3, 16)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (25, 0, 0, 1, 17)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (26, 0, 0, 2, 18)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (27, 0, 0, 5, 18)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (28, 0, 0, 2, 19)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (29, 0, 0, 1, 20)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (30, 0, 0, 1, 21)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (31, 0, 0, 1, 22)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (32, 0, 0, 1, 23)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (33, 0, 0, 1, 24)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (34, 0, 0, 1, 25)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (35, 0, 0, 1, 26)
SET IDENTITY_INSERT [dbo].[Catalog_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductLink] ON 

INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (1, 1, 2, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (2, 1, 7, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (3, 1, 3, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (4, 1, 6, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (5, 1, 4, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (6, 1, 5, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (7, 22, 23, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (8, 22, 24, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (9, 22, 25, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (10, 22, 26, 1)
SET IDENTITY_INSERT [dbo].[Catalog_ProductLink] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductMedia] ON 

INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (1, 1, 2, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (2, 1, 3, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (3, 1, 4, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (4, 8, 6, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (5, 9, 8, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (6, 10, 10, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (7, 11, 12, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (8, 12, 14, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (9, 13, 16, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (10, 14, 18, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (11, 15, 20, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (12, 16, 22, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (13, 17, 24, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (14, 18, 26, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (15, 19, 28, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (16, 20, 30, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (17, 21, 32, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (18, 22, 33, 0)
SET IDENTITY_INSERT [dbo].[Catalog_ProductMedia] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductOption] ON 

INSERT [dbo].[Catalog_ProductOption] ([Id], [Name]) VALUES (1, N'Color')
INSERT [dbo].[Catalog_ProductOption] ([Id], [Name]) VALUES (2, N'Size')
SET IDENTITY_INSERT [dbo].[Catalog_ProductOption] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionCombination] ON 

INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (1, 4, 1, N'Black', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (2, 6, 1, N'Black', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (3, 6, 2, N'S', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (4, 5, 1, N'Gray', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (5, 5, 2, N'L', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (6, 7, 1, N'Gray', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (7, 4, 2, N'L', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (8, 3, 1, N'Gray', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (9, 3, 2, N'M', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (10, 7, 2, N'S', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (11, 2, 1, N'Black', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (12, 2, 2, N'M', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (13, 23, 1, N'Silver', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (14, 23, 2, N'S', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (15, 26, 1, N'Gray', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (16, 24, 1, N'Silver', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (17, 24, 2, N'M', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (18, 26, 2, N'M', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (19, 25, 1, N'Gray', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (20, 25, 2, N'S', 1)
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionCombination] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionValue] ON 

INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (1, 1, 1, N'[{"Key":"Black","Display":"#090808"},{"Key":"Gray","Display":"#cfd6dd"}]', N'color', 1)
INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (2, 2, 1, N'[{"Key":"M","Display":"M"},{"Key":"L","Display":"L"},{"Key":"S","Display":"S"}]', N'text', 0)
INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (3, 1, 22, N'[{"Key":"Silver","Display":"#e8e6ef"},{"Key":"Gray","Display":"#8c8585"}]', N'color', 0)
INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (4, 2, 22, N'[{"Key":"S","Display":null},{"Key":"M","Display":null}]', N'text', 1)
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionValue] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog_ProductPriceHistory] ON 

INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (1, 1, 10, CAST(N'2018-08-11T15:02:17.0541076+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (2, 1, 10, CAST(N'2018-08-11T15:02:17.0554587+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (3, 1, 10, CAST(N'2018-08-11T15:02:17.0554679+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (4, 1, 10, CAST(N'2018-08-11T15:02:17.0554732+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (5, 1, 10, CAST(N'2018-08-11T15:02:17.0554783+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (6, 1, 10, CAST(N'2018-08-11T15:02:17.0554862+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (7, 1, 10, CAST(N'2018-08-11T15:02:17.0560706+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (8, 8, 10, CAST(N'2018-08-11T18:14:54.9581872+07:00' AS DateTimeOffset), CAST(16.64 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (9, 9, 10, CAST(N'2018-08-11T18:16:28.3595420+07:00' AS DateTimeOffset), CAST(35.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (10, 10, 10, CAST(N'2018-08-11T18:17:34.0032918+07:00' AS DateTimeOffset), CAST(25.50 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (11, 11, 10, CAST(N'2018-08-11T18:18:38.8056600+07:00' AS DateTimeOffset), CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (12, 12, 10, CAST(N'2018-08-11T18:20:26.0235652+07:00' AS DateTimeOffset), CAST(34.75 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (13, 13, 10, CAST(N'2018-08-11T18:22:07.9966185+07:00' AS DateTimeOffset), CAST(93.20 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (14, 14, 10, CAST(N'2018-08-11T18:23:06.0659327+07:00' AS DateTimeOffset), CAST(52.66 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (15, 15, 10, CAST(N'2018-08-11T18:24:48.0845771+07:00' AS DateTimeOffset), CAST(18.96 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (16, 16, 10, CAST(N'2018-08-11T18:26:22.7028175+07:00' AS DateTimeOffset), CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (17, 17, 10, CAST(N'2018-08-11T18:27:33.7559977+07:00' AS DateTimeOffset), CAST(25.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (18, 18, 10, CAST(N'2018-08-11T18:28:33.4902495+07:00' AS DateTimeOffset), CAST(63.16 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (19, 19, 10, CAST(N'2018-08-11T18:29:44.3117613+07:00' AS DateTimeOffset), CAST(63.15 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (20, 20, 10, CAST(N'2018-08-11T18:30:56.2754061+07:00' AS DateTimeOffset), CAST(18.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (21, 21, 10, CAST(N'2018-08-11T18:32:22.4407454+07:00' AS DateTimeOffset), CAST(54.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (22, 22, 10, CAST(N'2018-08-11T18:33:38.3028499+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (23, 24, 10, CAST(N'2018-08-11T19:24:26.1245415+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (24, 23, 10, CAST(N'2018-08-11T19:24:26.1242459+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (25, 25, 10, CAST(N'2018-08-11T19:24:26.1245570+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (26, 26, 10, CAST(N'2018-08-11T19:24:26.1245732+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Catalog_ProductPriceHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Cms_Menu] ON 

INSERT [dbo].[Cms_Menu] ([Id], [Name], [IsPublished], [IsSystem]) VALUES (1, N'Customer Services', 1, 1)
INSERT [dbo].[Cms_Menu] ([Id], [Name], [IsPublished], [IsSystem]) VALUES (2, N'Information', 1, 1)
SET IDENTITY_INSERT [dbo].[Cms_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Cms_MenuItem] ON 

INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (1, NULL, 2, 1, NULL, N'Woman', 0)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (2, NULL, 2, 2, NULL, N'Man', 1)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (3, NULL, 2, 3, NULL, N'Shoes', 2)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (4, NULL, 2, 4, NULL, N'Watches', 3)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (5, NULL, 1, 24, NULL, N'About Us', 0)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (6, NULL, 1, 23, NULL, N'Help center', 1)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (7, NULL, 1, 25, NULL, N'Terms of Use', 2)
SET IDENTITY_INSERT [dbo].[Cms_MenuItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Cms_Page] ON 

INSERT [dbo].[Cms_Page] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [Body]) VALUES (1, N'Help center', N'help-center', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T20:47:14.1027299+07:00' AS DateTimeOffset), CAST(N'2018-08-11T20:47:14.1027316+07:00' AS DateTimeOffset), 10, N'<h1>Help center</h1><p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Your information. Use admin site to update</span><br></p>')
INSERT [dbo].[Cms_Page] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [Body]) VALUES (2, N'About Us', N'about-us', NULL, NULL, N'', 1, NULL, 0, 10, CAST(N'2018-08-11T20:49:11.7082006+07:00' AS DateTimeOffset), CAST(N'2018-08-11T20:49:11.7082016+07:00' AS DateTimeOffset), 10, N'<h1>About Us</h1><p>Edit your information in the admin side</p>')
INSERT [dbo].[Cms_Page] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [Body]) VALUES (3, N'Terms of Use', N'terms-of-use', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T20:50:11.5637211+07:00' AS DateTimeOffset), CAST(N'2018-08-11T20:50:11.5637220+07:00' AS DateTimeOffset), 10, N'<h1>Term and Conditions</h1><p>Your term and conditions. Use admin site to update.<br></p>')
SET IDENTITY_INSERT [dbo].[Cms_Page] OFF
GO
SET IDENTITY_INSERT [dbo].[Core_Address] ON 

INSERT [dbo].[Core_Address] ([Id], [ContactName], [Phone], [AddressLine1], [AddressLine2], [City], [ZipCode], [DistrictId], [StateOrProvinceId], [CountryId]) VALUES (1, N'Thien Nguyen', NULL, N'364 Cong Hoa', NULL, NULL, NULL, NULL, 1, N'VN')
SET IDENTITY_INSERT [dbo].[Core_Address] OFF
GO
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Catalog.IsCommentsRequireApproval', N'true', N'Catalog', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Catalog.IsProductPriceIncludeTax', N'true', N'Catalog', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Catalog.ProductPageSize', N'10', N'Catalog', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.AssetBundling', N'false', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.AssetVersion', N'1.0', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.CurrencyCulture', N'en-US', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.CurrencyDecimalPlace', N'2', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.DefaultCultureUI', N'en-US', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'GoogleAppKey', N'', N'Contact', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Localization.LocalizedConentEnable', N'true', N'Localization', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'News.PageSize', N'10', N'News', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpPassword', N'', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpPort', N'587', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpServer', N'smtp.gmail.com', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpUsername', N'', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Tax.DefaultTaxClassId', N'1', N'Tax', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Theme', N'Generic', N'Core', 0)
GO
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'US', N'United States', N'USA', 1, 1, 1, 1, 0)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VN', N'Việt Nam', N'VNM', 1, 1, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Core_District] ON 

INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (1, 1, N'Quận 1', N'Quận', NULL)
INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (2, 1, N'Quận 2', N'Quận', NULL)
SET IDENTITY_INSERT [dbo].[Core_District] OFF
GO
SET IDENTITY_INSERT [dbo].[Core_Entity] ON 

INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (1, N'woman', N'Woman', 1, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (2, N'man', N'Man', 2, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (3, N'shoes', N'Shoes', 3, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (4, N'watches', N'Watches', 4, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (5, N't-shirt', N'T-Shirt', 5, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (6, N'suit', N'Suit', 6, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (7, N'lightweight-jacket', N'Lightweight Jacket', 1, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (8, N'esprit-ruffle-shirt', N'Esprit Ruffle Shirt', 8, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (9, N'herschel-supply', N'Herschel supply', 9, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (10, N'only-check-trouser', N'Only Check Trouser', 10, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (11, N'classic-trench-coat', N'Classic Trench Coat', 11, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (12, N'front-pocket-jumper', N'Front Pocket Jumper', 12, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (13, N'vintage-inspired-classic', N'Vintage Inspired Classic', 13, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (14, N'shirt-in-stretch-cotton', N'Shirt in Stretch Cotton', 14, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (15, N'pieces-metallic-printed', N'Pieces Metallic Printed', 15, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (16, N'converse-all-star-hi-plimsolls', N'Converse All Star Hi Plimsolls', 16, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (17, N'femme-t-shirt-in-stripe', N'Femme T-Shirt In Stripe', 17, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (18, N'herschel-supply-2', N'Herschel supply', 18, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (19, N'herschel-supply-2-3', N'Herschel supply', 19, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (20, N't-shirt-with-sleeve', N'T-Shirt with Sleeve', 20, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (21, N'pretty-little-thing', N'Pretty Little Thing', 21, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (22, N'square-neck-back', N'Square Neck Back', 22, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (23, N'help-center', N'Help center', 1, N'Page')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (24, N'about-us', N'About Us', 2, N'Page')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (25, N'terms-of-use', N'Terms of Use', 3, N'Page')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (26, N'adidas', N'Adidas', 1, N'Brand')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (27, N'calvin-klein', N'Calvin Klein', 2, N'Brand')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (28, N'ogival', N'Ogival', 3, N'Brand')
SET IDENTITY_INSERT [dbo].[Core_Entity] OFF
GO
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Brand', 1, N'Catalog', N'Brand', N'BrandDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Category', 1, N'Catalog', N'Category', N'CategoryDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'NewsCategory', 1, N'News', N'NewsCategory', N'NewsCategoryDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'NewsItem', 0, N'News', N'NewsItem', N'NewsItemDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Page', 1, N'Cms', N'Page', N'PageDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Product', 0, N'Catalog', N'Product', N'ProductDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Vendor', 0, N'Core', N'Vendor', N'VendorDetail')
GO
SET IDENTITY_INSERT [dbo].[Core_Media] ON 

INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (1, NULL, 0, N'b94d02b8-6d3a-4919-b144-c121387a272d.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (2, NULL, 0, N'911207ad-5b45-423f-9575-2185c85261c0.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (3, NULL, 0, N'37dc2d94-dbac-4112-afbc-2fc88ddca753.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (4, NULL, 0, N'bf16c55d-747e-4238-b444-06c3fe0463b2.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (5, NULL, 0, N'2db2ffbb-46d5-4f3c-8dc0-614e83162a1c.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (6, NULL, 0, N'daa3af7c-452c-4c0f-9c61-aeccf001e825.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (7, NULL, 0, N'c8756541-d192-48e2-b822-2bf616fb876e.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (8, NULL, 0, N'0199b7af-4d14-4858-a902-62ca8c5e9b6d.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (9, NULL, 0, N'1761ffd9-2c53-4a6b-856f-e2f4039d0247.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (10, NULL, 0, N'1b896b5e-f6bf-41ca-89ee-025c6be9e08c.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (11, NULL, 0, N'1aead9b6-73a8-45c1-a463-7655e9a9b478.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (12, NULL, 0, N'c27ee7c7-deb3-4697-a6b6-3358d72b556f.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (13, NULL, 0, N'532fc844-2c11-494e-a68b-af0be2b9a87f.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (14, NULL, 0, N'4d24a1fd-a362-47e4-9060-011d415398b9.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (15, NULL, 0, N'117ed074-628a-4db7-abbb-4a335adb3504.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (16, NULL, 0, N'78f1840e-7a50-49de-9dad-9127ec290dfd.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (17, NULL, 0, N'de4bdb93-ab9d-4515-b19b-bb55aa4703b3.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (18, NULL, 0, N'dd14f5e8-2e76-4f60-9f58-19652dcb80c5.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (19, NULL, 0, N'bf6461d5-0a9b-4a19-9516-5ca3b5b9da9e.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (20, NULL, 0, N'461a2564-b657-46bb-bcb5-f7deaeb2a0a9.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (21, NULL, 0, N'fb26a4f2-0a36-41dd-b0e8-a6c0554d31f8.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (22, NULL, 0, N'74552a46-4309-43e1-ad4e-79cd9e778722.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (23, NULL, 0, N'1a79b958-50bc-48d8-b3e5-826222949d28.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (24, NULL, 0, N'e0a99874-20a8-43b8-9199-b109bb2c3ae5.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (25, NULL, 0, N'1d9d5101-7e0b-4c29-88fe-e54891647672.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (26, NULL, 0, N'5cf020c2-72b5-407d-836a-ef1a316b741c.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (27, NULL, 0, N'df3590c2-a6a0-4813-96db-4a07e6c7f460.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (28, NULL, 0, N'bc68637c-420f-4951-9130-b9fca36484e6.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (29, NULL, 0, N'1201ba32-984a-48eb-b86a-23d4c8f76d5b.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (30, NULL, 0, N'0089c72c-2fbe-48c3-a33f-718ae1eafd8b.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (31, NULL, 0, N'2f856ed8-323e-4c26-99d1-cd4ec07f9979.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (32, NULL, 0, N'fd623151-fc8a-464b-8c19-b1350d785bce.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (33, NULL, 0, N'057afd18-8973-4078-9fd2-7eb0b52d8e72.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (34, NULL, 0, N'ee4b30bf-fd13-47a7-b893-0e6e6b1aed05.jpg', 0)
SET IDENTITY_INSERT [dbo].[Core_Media] OFF
GO
SET IDENTITY_INSERT [dbo].[Core_Role] ON 

INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'admin', N'ADMIN', N'4776a1b2-dbe4-4056-82ec-8bed211d1454')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'customer', N'CUSTOMER', N'00d172be-03a0-4856-8b12-26d63fcf4374')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'guest', N'GUEST', N'd4754388-8355-4018-b728-218018836817')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'vendor', N'VENDOR', N'71f10604-8c4d-4a7d-ac4a-ffefb11cefeb')
SET IDENTITY_INSERT [dbo].[Core_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Core_StateOrProvince] ON 

INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (1, N'VN', NULL, N'Hồ Chí Minh', N'Thành Phố')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (2, N'US', N'WA', N'Washington', NULL)
SET IDENTITY_INSERT [dbo].[Core_StateOrProvince] OFF
GO
SET IDENTITY_INSERT [dbo].[Core_User] ON 

INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (2, N'system@simplcommerce.com', N'SYSTEM@SIMPLCOMMERCE.COM', N'system@simplcommerce.com', N'SYSTEM@SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', N'a9565acb-cee6-425f-9833-419a793f5fba', N'101cd6ae-a8ef-4a37-97fd-04ac2dd630e4', NULL, 0, 0, NULL, 0, 0, N'5f72f83b-7436-4221-869c-1b69b2e23aae', N'System User', NULL, 1, CAST(N'2018-05-29T04:33:39.1890000+07:00' AS DateTimeOffset), CAST(N'2018-05-29T04:33:39.1890000+07:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (10, N'admin@simplcommerce.com', N'ADMIN@SIMPLCOMMERCE.COM', N'admin@simplcommerce.com', N'ADMIN@SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', N'd6847450-47f0-4c7a-9fed-0c66234bf61f', N'c83afcbc-312c-4589-bad7-8686bd4754c0', NULL, 0, 0, NULL, 0, 0, N'ed8210c3-24b0-4823-a744-80078cf12eb4', N'Shop Admin', NULL, 0, CAST(N'2018-05-29T04:33:39.1900000+07:00' AS DateTimeOffset), CAST(N'2018-05-29T04:33:39.1900000+07:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (11, N'7ae83cc0-2f94-4e2e-a826-5ab9ddcd946d@guest.simplcommerce.com', N'7AE83CC0-2F94-4E2E-A826-5AB9DDCD946D@GUEST.SIMPLCOMMERCE.COM', N'7ae83cc0-2f94-4e2e-a826-5ab9ddcd946d@guest.simplcommerce.com', N'7AE83CC0-2F94-4E2E-A826-5AB9DDCD946D@GUEST.SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEPcZmPthZAUapRVuCsCWybZJTmkrjTYoK5K2Fmh0+Bcg7LHp5BTzMDLnVj77E/kPbw==', N'6B3OZ7MHLHBWFZJBFTCMR5RAYZGRGDNX', N'a87ba061-9204-4edf-a60c-7b5a7857ee8c', NULL, 0, 0, NULL, 1, 0, N'7ae83cc0-2f94-4e2e-a826-5ab9ddcd946d', N'Guest', NULL, 0, CAST(N'2023-03-04T23:47:01.9374924+06:00' AS DateTimeOffset), CAST(N'2023-03-04T23:47:01.9374983+06:00' AS DateTimeOffset), NULL, NULL, NULL, N'en-US', NULL)
SET IDENTITY_INSERT [dbo].[Core_User] OFF
GO
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (10, 1)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (11, 3)
GO
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'CarouselWidget', N'Carousel Widget', N'CarouselWidget', N'widget-carousel-create', N'widget-carousel-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'CategoryWidget', N'Category Widget', N'CategoryWidget', N'widget-category-create', N'widget-category-edit', CAST(N'2018-05-29T04:33:39.1600000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'HtmlWidget', N'Html Widget', N'HtmlWidget', N'widget-html-create', N'widget-html-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'ProductWidget', N'Product Widget', N'ProductWidget', N'widget-product-create', N'widget-product-edit', CAST(N'2018-05-29T04:33:39.1630000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'RecentlyViewedWidget', N'Recently Viewed Widget', N'RecentlyViewedWidget', N'widget-recently-viewed-create', N'widget-recently-viewed-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'SimpleProductWidget', N'Simple Product Widget', N'SimpleProductWidget', N'widget-simple-product-create', N'widget-simple-product-edit', CAST(N'2018-05-29T04:33:39.1630000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'SpaceBarWidget', N'SpaceBar Widget', N'SpaceBarWidget', N'widget-spacebar-create', N'widget-spacebar-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
GO
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance] ON 

INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (1, N'Home Featured', CAST(N'2018-08-11T06:57:30.6053643+07:00' AS DateTimeOffset), CAST(N'2018-08-11T06:57:30.6054847+07:00' AS DateTimeOffset), CAST(N'2018-08-10T23:53:17.2780000+00:00' AS DateTimeOffset), NULL, N'CarouselWidget', 1, 0, N'[{"Image":"88604574-f0a3-4982-9b0d-f8a7558dd3ba.jpg","ImageUrl":null,"Caption":"NEW SEASON","SubCaption":"Women Collection 2018","LinkText":"Shop Now","TargetUrl":"/woman"},{"Image":"a5904343-189d-469b-a93b-d553c109b781.jpg","ImageUrl":null,"Caption":"Jackets & Coats","SubCaption":"Men New-Season","LinkText":"Shop Now","TargetUrl":"/man"},{"Image":"83c21bb9-2f0d-446a-bb0c-3b19e6d922aa.jpg","ImageUrl":null,"Caption":"New arrivals","SubCaption":"Men Collection 2018","LinkText":"Shop Now","TargetUrl":"/man"}]', NULL)
INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (2, N'New products', CAST(N'2018-08-11T15:05:18.2330286+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:05:18.2331945+07:00' AS DateTimeOffset), CAST(N'2018-08-11T08:04:35.8680000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{"NumberOfProducts":4,"CategoryId":null,"OrderBy":"Newest","FeaturedOnly":false}', NULL)
INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (6, N'Man collection', CAST(N'2018-09-06T07:50:22.6521628+07:00' AS DateTimeOffset), CAST(N'2018-09-06T07:50:22.6521650+07:00' AS DateTimeOffset), CAST(N'2018-09-06T00:50:11.8940000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{"NumberOfProducts":4,"CategoryId":2,"OrderBy":"Newest","FeaturedOnly":false}', NULL)
INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (7, N'Woman collection', CAST(N'2018-09-06T07:50:37.6019466+07:00' AS DateTimeOffset), CAST(N'2018-09-06T07:50:37.6019479+07:00' AS DateTimeOffset), CAST(N'2018-09-06T00:50:26.2900000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{"NumberOfProducts":4,"CategoryId":1,"OrderBy":"Newest","FeaturedOnly":false}', NULL)
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance] OFF
GO
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] ON 

INSERT [dbo].[Core_WidgetZone] ([Id], [Name], [Description]) VALUES (1, N'Home Featured', NULL)
INSERT [dbo].[Core_WidgetZone] ([Id], [Name], [Description]) VALUES (2, N'Home Main Content', NULL)
INSERT [dbo].[Core_WidgetZone] ([Id], [Name], [Description]) VALUES (3, N'Home After Main Content', NULL)
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Stock] ON 

INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (1, 2, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (2, 3, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (3, 4, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (4, 5, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (5, 6, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (6, 7, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (7, 8, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (8, 24, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (9, 23, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (10, 22, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (11, 21, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (12, 20, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (13, 19, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (14, 18, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (15, 25, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (16, 17, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (17, 15, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (18, 14, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (19, 13, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (20, 12, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (21, 11, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (22, 10, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (23, 9, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (24, 16, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (25, 26, 1, 100, 0)
SET IDENTITY_INSERT [dbo].[Inventory_Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_StockHistory] ON 

INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (1, 7, 1, CAST(N'2018-08-11T15:03:25.9597942+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (2, 6, 1, CAST(N'2018-08-11T15:03:25.9866400+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (3, 5, 1, CAST(N'2018-08-11T15:03:25.9920796+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (4, 4, 1, CAST(N'2018-08-11T15:03:25.9973684+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (5, 3, 1, CAST(N'2018-08-11T15:03:26.0034946+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (6, 2, 1, CAST(N'2018-08-11T15:03:26.0091053+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (7, 26, 1, CAST(N'2018-08-11T21:20:52.1609725+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (8, 16, 1, CAST(N'2018-08-11T21:20:52.1902238+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (9, 9, 1, CAST(N'2018-08-11T21:20:52.1954335+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (10, 10, 1, CAST(N'2018-08-11T21:20:52.2005929+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (11, 11, 1, CAST(N'2018-08-11T21:20:52.2059812+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (12, 12, 1, CAST(N'2018-08-11T21:20:52.2111554+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (13, 13, 1, CAST(N'2018-08-11T21:20:52.2164212+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (14, 14, 1, CAST(N'2018-08-11T21:20:52.2219702+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (15, 15, 1, CAST(N'2018-08-11T21:20:52.2276720+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (16, 17, 1, CAST(N'2018-08-11T21:20:52.2340966+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (17, 25, 1, CAST(N'2018-08-11T21:20:52.2416871+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (18, 18, 1, CAST(N'2018-08-11T21:20:52.2503225+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (19, 19, 1, CAST(N'2018-08-11T21:20:52.2567163+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (20, 20, 1, CAST(N'2018-08-11T21:20:52.2655516+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (21, 21, 1, CAST(N'2018-08-11T21:20:52.2718544+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (22, 22, 1, CAST(N'2018-08-11T21:20:52.2782942+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (23, 23, 1, CAST(N'2018-08-11T21:20:52.2871106+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (24, 24, 1, CAST(N'2018-08-11T21:20:52.2956470+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (25, 8, 1, CAST(N'2018-08-11T21:20:52.3045421+07:00' AS DateTimeOffset), 10, 100, NULL)
SET IDENTITY_INSERT [dbo].[Inventory_StockHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory_Warehouse] ON 

INSERT [dbo].[Inventory_Warehouse] ([Id], [Name], [AddressId], [VendorId]) VALUES (1, N'Default warehouse', 1, NULL)
SET IDENTITY_INSERT [dbo].[Inventory_Warehouse] OFF
GO
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'en-US', N'English (US)')
GO
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'Braintree', N'Braintree', 1, N'payments-braintree-config', N'BraintreeLanding', N'{"PublicKey": "6j4d7qspt5n48kx4", "PrivateKey" : "bd1c26e53a6d811243fcc3eb268113e1", "MerchantId" : "ncsh7wwqvzs3cx9q", "IsProduction" : "false"}')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'Cashfree', N'Cashfree Payment Gateway', 1, N'payments-cashfree-config', N'CashfreeLanding', N'{ "IsSandbox":true, "AppId":"358035b02486f36ca27904540853", "SecretKey":"26f48dcd6a27f89f59f28e65849e587916dd57b9" }')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'CoD', N'Cash On Delivery', 1, N'payments-cod-config', N'CoDLanding', NULL)
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'MomoPayment', N'Momo Payment', 1, N'payments-momo-config', N'MomoLanding', N'{"IsSandbox":true,"PartnerCode":"MOMOIQA420180417","AccessKey":"SvDmj2cOTYZmQQ3H","SecretKey":"PPuDXq1KowPT1ftR8DvlQTHhC03aul17","PaymentFee":0.0}')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'NganLuong', N'Ngan Luong Payment', 1, N'payments-nganluong-config', N'NganLuongLanding', N'{"IsSandbox":true, "MerchantId": 47249, "MerchantPassword": "e530745693dbde678f9da98a7c821a07", "ReceiverEmail": "nlqthien@gmail.com"}')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'PaypalExpress', N'Paypal Express', 1, N'payments-paypalExpress-config', N'PaypalExpressLanding', N'{ "IsSandbox":true, "ClientId":"", "ClientSecret":"" }')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'Stripe', N'Stripe', 1, N'payments-stripe-config', N'StripeLanding', N'{"PublicKey": "pk_test_6pRNASCoBOKtIshFeQd4XMUh", "PrivateKey" : "sk_test_BQokikJOvBiI2HlWgH4olfQ2"}')
GO
SET IDENTITY_INSERT [dbo].[Reviews_Review] ON 

INSERT [dbo].[Reviews_Review] ([Id], [UserId], [Title], [Comment], [Rating], [ReviewerName], [Status], [CreatedOn], [EntityTypeId], [EntityId]) VALUES (1, 10, N'Good', N'very good', 5, N'very good', 5, CAST(N'2018-08-11T19:20:55.4863839+07:00' AS DateTimeOffset), N'Product', 20)
INSERT [dbo].[Reviews_Review] ([Id], [UserId], [Title], [Comment], [Rating], [ReviewerName], [Status], [CreatedOn], [EntityTypeId], [EntityId]) VALUES (2, 10, N'excellent', N'very good', 5, N'Thien', 5, CAST(N'2018-08-11T20:43:11.1216762+07:00' AS DateTimeOffset), N'Product', 22)
SET IDENTITY_INSERT [dbo].[Reviews_Review] OFF
GO
INSERT [dbo].[Shipping_ShippingProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [ToAllShippingEnabledCountries], [OnlyCountryIdsString], [ToAllShippingEnabledStatesOrProvinces], [OnlyStateOrProvinceIdsString], [AdditionalSettings], [ShippingPriceServiceTypeName]) VALUES (N'FreeShip', N'Free Ship', 1, N'', 1, NULL, 1, NULL, N'{MinimumOrderAmount : 1}', N'SimplCommerce.Module.ShippingFree.Services.FreeShippingServiceProvider,SimplCommerce.Module.ShippingFree')
INSERT [dbo].[Shipping_ShippingProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [ToAllShippingEnabledCountries], [OnlyCountryIdsString], [ToAllShippingEnabledStatesOrProvinces], [OnlyStateOrProvinceIdsString], [AdditionalSettings], [ShippingPriceServiceTypeName]) VALUES (N'TableRate', N'Table Rate', 1, N'shipping-table-rate-config', 1, NULL, 1, NULL, NULL, N'SimplCommerce.Module.ShippingTableRate.Services.TableRateShippingServiceProvider,SimplCommerce.Module.ShippingTableRate')
GO
SET IDENTITY_INSERT [dbo].[Tax_TaxClass] ON 

INSERT [dbo].[Tax_TaxClass] ([Id], [Name]) VALUES (1, N'Standard VAT')
SET IDENTITY_INSERT [dbo].[Tax_TaxClass] OFF
GO
/****** Object:  Index [IX_ActivityLog_Activity_ActivityTypeId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ActivityLog_Activity_ActivityTypeId] ON [dbo].[ActivityLog_Activity]
(
	[ActivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Category_ParentId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Category_ParentId] ON [dbo].[Catalog_Category]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Category_ThumbnailImageId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Category_ThumbnailImageId] ON [dbo].[Catalog_Category]
(
	[ThumbnailImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Product_BrandId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Product_BrandId] ON [dbo].[Catalog_Product]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Product_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Product_CreatedById] ON [dbo].[Catalog_Product]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Product_LatestUpdatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Product_LatestUpdatedById] ON [dbo].[Catalog_Product]
(
	[LatestUpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Product_TaxClassId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Product_TaxClassId] ON [dbo].[Catalog_Product]
(
	[TaxClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_Product_ThumbnailImageId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_Product_ThumbnailImageId] ON [dbo].[Catalog_Product]
(
	[ThumbnailImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductAttribute_GroupId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductAttribute_GroupId] ON [dbo].[Catalog_ProductAttribute]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductAttributeValue_AttributeId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductAttributeValue_AttributeId] ON [dbo].[Catalog_ProductAttributeValue]
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductAttributeValue_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductAttributeValue_ProductId] ON [dbo].[Catalog_ProductAttributeValue]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductCategory_CategoryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductCategory_CategoryId] ON [dbo].[Catalog_ProductCategory]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductCategory_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductCategory_ProductId] ON [dbo].[Catalog_ProductCategory]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductLink_LinkedProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductLink_LinkedProductId] ON [dbo].[Catalog_ProductLink]
(
	[LinkedProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductLink_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductLink_ProductId] ON [dbo].[Catalog_ProductLink]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductMedia_MediaId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductMedia_MediaId] ON [dbo].[Catalog_ProductMedia]
(
	[MediaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductMedia_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductMedia_ProductId] ON [dbo].[Catalog_ProductMedia]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductOptionCombination_OptionId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductOptionCombination_OptionId] ON [dbo].[Catalog_ProductOptionCombination]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductOptionCombination_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductOptionCombination_ProductId] ON [dbo].[Catalog_ProductOptionCombination]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductOptionValue_OptionId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductOptionValue_OptionId] ON [dbo].[Catalog_ProductOptionValue]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductOptionValue_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductOptionValue_ProductId] ON [dbo].[Catalog_ProductOptionValue]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductPriceHistory_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductPriceHistory_CreatedById] ON [dbo].[Catalog_ProductPriceHistory]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductPriceHistory_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductPriceHistory_ProductId] ON [dbo].[Catalog_ProductPriceHistory]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_ProductTemplateProductAttribute_ProductAttributeId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_ProductTemplateProductAttribute_ProductAttributeId] ON [dbo].[Catalog_ProductTemplateProductAttribute]
(
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cms_MenuItem_EntityId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cms_MenuItem_EntityId] ON [dbo].[Cms_MenuItem]
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cms_MenuItem_MenuId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cms_MenuItem_MenuId] ON [dbo].[Cms_MenuItem]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cms_MenuItem_ParentId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cms_MenuItem_ParentId] ON [dbo].[Cms_MenuItem]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cms_Page_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cms_Page_CreatedById] ON [dbo].[Cms_Page]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cms_Page_LatestUpdatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cms_Page_LatestUpdatedById] ON [dbo].[Cms_Page]
(
	[LatestUpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_Comment_ParentId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_Comment_ParentId] ON [dbo].[Comments_Comment]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_Comment_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_Comment_UserId] ON [dbo].[Comments_Comment]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contacts_Contact_ContactAreaId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Contacts_Contact_ContactAreaId] ON [dbo].[Contacts_Contact]
(
	[ContactAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Core_Address_CountryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_Address_CountryId] ON [dbo].[Core_Address]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_Address_DistrictId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_Address_DistrictId] ON [dbo].[Core_Address]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_Address_StateOrProvinceId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_Address_StateOrProvinceId] ON [dbo].[Core_Address]
(
	[StateOrProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Core_CustomerGroup_Name]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Core_CustomerGroup_Name] ON [dbo].[Core_CustomerGroup]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_CustomerGroupUser_CustomerGroupId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_CustomerGroupUser_CustomerGroupId] ON [dbo].[Core_CustomerGroupUser]
(
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_District_StateOrProvinceId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_District_StateOrProvinceId] ON [dbo].[Core_District]
(
	[StateOrProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Core_Entity_EntityTypeId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_Entity_EntityTypeId] ON [dbo].[Core_Entity]
(
	[EntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Core_Role]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_RoleClaim_RoleId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_RoleClaim_RoleId] ON [dbo].[Core_RoleClaim]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Core_StateOrProvince_CountryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_StateOrProvince_CountryId] ON [dbo].[Core_StateOrProvince]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Core_User]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_User_DefaultBillingAddressId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_User_DefaultBillingAddressId] ON [dbo].[Core_User]
(
	[DefaultBillingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_User_DefaultShippingAddressId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_User_DefaultShippingAddressId] ON [dbo].[Core_User]
(
	[DefaultShippingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_User_VendorId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_User_VendorId] ON [dbo].[Core_User]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Core_User]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_UserAddress_AddressId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_UserAddress_AddressId] ON [dbo].[Core_UserAddress]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_UserAddress_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_UserAddress_UserId] ON [dbo].[Core_UserAddress]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_UserClaim_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_UserClaim_UserId] ON [dbo].[Core_UserClaim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_UserLogin_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_UserLogin_UserId] ON [dbo].[Core_UserLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_UserRole_RoleId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_UserRole_RoleId] ON [dbo].[Core_UserRole]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Core_WidgetInstance_WidgetId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_WidgetInstance_WidgetId] ON [dbo].[Core_WidgetInstance]
(
	[WidgetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Core_WidgetInstance_WidgetZoneId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Core_WidgetInstance_WidgetZoneId] ON [dbo].[Core_WidgetInstance]
(
	[WidgetZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_Stock_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_Stock_ProductId] ON [dbo].[Inventory_Stock]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_Stock_WarehouseId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_Stock_WarehouseId] ON [dbo].[Inventory_Stock]
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_StockHistory_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_StockHistory_CreatedById] ON [dbo].[Inventory_StockHistory]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_StockHistory_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_StockHistory_ProductId] ON [dbo].[Inventory_StockHistory]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_StockHistory_WarehouseId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_StockHistory_WarehouseId] ON [dbo].[Inventory_StockHistory]
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_Warehouse_AddressId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_Warehouse_AddressId] ON [dbo].[Inventory_Warehouse]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventory_Warehouse_VendorId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Inventory_Warehouse_VendorId] ON [dbo].[Inventory_Warehouse]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Localization_LocalizedContentProperty_CultureId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Localization_LocalizedContentProperty_CultureId] ON [dbo].[Localization_LocalizedContentProperty]
(
	[CultureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Localization_Resource_CultureId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Localization_Resource_CultureId] ON [dbo].[Localization_Resource]
(
	[CultureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_NewsItem_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_News_NewsItem_CreatedById] ON [dbo].[News_NewsItem]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_NewsItem_LatestUpdatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_News_NewsItem_LatestUpdatedById] ON [dbo].[News_NewsItem]
(
	[LatestUpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_NewsItem_ThumbnailImageId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_News_NewsItem_ThumbnailImageId] ON [dbo].[News_NewsItem]
(
	[ThumbnailImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_News_NewsItemCategory_NewsItemId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_News_NewsItemCategory_NewsItemId] ON [dbo].[News_NewsItemCategory]
(
	[NewsItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_Order_BillingAddressId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Order_BillingAddressId] ON [dbo].[Orders_Order]
(
	[BillingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_Order_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Order_CreatedById] ON [dbo].[Orders_Order]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_Order_CustomerId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Order_CustomerId] ON [dbo].[Orders_Order]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_Order_LatestUpdatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Order_LatestUpdatedById] ON [dbo].[Orders_Order]
(
	[LatestUpdatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_Order_ParentId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Order_ParentId] ON [dbo].[Orders_Order]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_Order_ShippingAddressId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_Order_ShippingAddressId] ON [dbo].[Orders_Order]
(
	[ShippingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_OrderAddress_CountryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderAddress_CountryId] ON [dbo].[Orders_OrderAddress]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderAddress_DistrictId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderAddress_DistrictId] ON [dbo].[Orders_OrderAddress]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderAddress_StateOrProvinceId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderAddress_StateOrProvinceId] ON [dbo].[Orders_OrderAddress]
(
	[StateOrProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderHistory_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderHistory_CreatedById] ON [dbo].[Orders_OrderHistory]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderHistory_OrderId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderHistory_OrderId] ON [dbo].[Orders_OrderHistory]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderItem_OrderId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderItem_OrderId] ON [dbo].[Orders_OrderItem]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderItem_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderItem_ProductId] ON [dbo].[Orders_OrderItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_Payment_OrderId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_Payment_OrderId] ON [dbo].[Payments_Payment]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CartRuleCategory_CategoryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CartRuleCategory_CategoryId] ON [dbo].[Pricing_CartRuleCategory]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CartRuleCustomerGroup_CustomerGroupId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CartRuleCustomerGroup_CustomerGroupId] ON [dbo].[Pricing_CartRuleCustomerGroup]
(
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CartRuleProduct_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CartRuleProduct_ProductId] ON [dbo].[Pricing_CartRuleProduct]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CartRuleUsage_CartRuleId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CartRuleUsage_CartRuleId] ON [dbo].[Pricing_CartRuleUsage]
(
	[CartRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CartRuleUsage_CouponId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CartRuleUsage_CouponId] ON [dbo].[Pricing_CartRuleUsage]
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CartRuleUsage_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CartRuleUsage_UserId] ON [dbo].[Pricing_CartRuleUsage]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_CatalogRuleCustomerGroup_CustomerGroupId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_CatalogRuleCustomerGroup_CustomerGroupId] ON [dbo].[Pricing_CatalogRuleCustomerGroup]
(
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricing_Coupon_CartRuleId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Pricing_Coupon_CartRuleId] ON [dbo].[Pricing_Coupon]
(
	[CartRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductComparison_ComparingProduct_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductComparison_ComparingProduct_ProductId] ON [dbo].[ProductComparison_ComparingProduct]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductComparison_ComparingProduct_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductComparison_ComparingProduct_UserId] ON [dbo].[ProductComparison_ComparingProduct]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_Reply_ReviewId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_Reply_ReviewId] ON [dbo].[Reviews_Reply]
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_Reply_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_Reply_UserId] ON [dbo].[Reviews_Reply]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_Review_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_Review_UserId] ON [dbo].[Reviews_Review]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_Shipment_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_Shipment_CreatedById] ON [dbo].[Shipments_Shipment]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_Shipment_OrderId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_Shipment_OrderId] ON [dbo].[Shipments_Shipment]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_Shipment_WarehouseId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_Shipment_WarehouseId] ON [dbo].[Shipments_Shipment]
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_ShipmentItem_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_ShipmentItem_ProductId] ON [dbo].[Shipments_ShipmentItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_ShipmentItem_ShipmentId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_ShipmentItem_ShipmentId] ON [dbo].[Shipments_ShipmentItem]
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ShippingTableRate_PriceAndDestination_CountryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShippingTableRate_PriceAndDestination_CountryId] ON [dbo].[ShippingTableRate_PriceAndDestination]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShippingTableRate_PriceAndDestination_DistrictId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShippingTableRate_PriceAndDestination_DistrictId] ON [dbo].[ShippingTableRate_PriceAndDestination]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShippingTableRate_PriceAndDestination_StateOrProvinceId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShippingTableRate_PriceAndDestination_StateOrProvinceId] ON [dbo].[ShippingTableRate_PriceAndDestination]
(
	[StateOrProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCart_Cart_CreatedById]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCart_Cart_CreatedById] ON [dbo].[ShoppingCart_Cart]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCart_Cart_CustomerId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCart_Cart_CustomerId] ON [dbo].[ShoppingCart_Cart]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCart_CartItem_CartId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCart_CartItem_CartId] ON [dbo].[ShoppingCart_CartItem]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCart_CartItem_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCart_CartItem_ProductId] ON [dbo].[ShoppingCart_CartItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tax_TaxRate_CountryId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tax_TaxRate_CountryId] ON [dbo].[Tax_TaxRate]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tax_TaxRate_StateOrProvinceId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tax_TaxRate_StateOrProvinceId] ON [dbo].[Tax_TaxRate]
(
	[StateOrProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tax_TaxRate_TaxClassId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tax_TaxRate_TaxClassId] ON [dbo].[Tax_TaxRate]
(
	[TaxClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishList_WishList_UserId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_WishList_WishList_UserId] ON [dbo].[WishList_WishList]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishList_WishListItem_ProductId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_WishList_WishListItem_ProductId] ON [dbo].[WishList_WishListItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishList_WishListItem_WishListId]    Script Date: 3/5/2023 12:06:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_WishList_WishListItem_WishListId] ON [dbo].[WishList_WishListItem]
(
	[WishListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShoppingCart_Cart] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockedOnCheckout]
GO
ALTER TABLE [dbo].[ActivityLog_Activity]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_Activity_ActivityLog_ActivityType_ActivityTypeId] FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityLog_ActivityType] ([Id])
GO
ALTER TABLE [dbo].[ActivityLog_Activity] CHECK CONSTRAINT [FK_ActivityLog_Activity_ActivityLog_ActivityType_ActivityTypeId]
GO
ALTER TABLE [dbo].[Catalog_Category]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Category_Catalog_Category_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Catalog_Category] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Category] CHECK CONSTRAINT [FK_Catalog_Category_Catalog_Category_ParentId]
GO
ALTER TABLE [dbo].[Catalog_Category]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Category_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Category] CHECK CONSTRAINT [FK_Catalog_Category_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Catalog_Brand_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Catalog_Brand] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Catalog_Brand_BrandId]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Tax_TaxClass_TaxClassId] FOREIGN KEY([TaxClassId])
REFERENCES [dbo].[Tax_TaxClass] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Tax_TaxClass_TaxClassId]
GO
ALTER TABLE [dbo].[Catalog_ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Catalog_ProductAttributeGroup] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductAttribute] CHECK CONSTRAINT [FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_GroupId]
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue] CHECK CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_AttributeId] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Catalog_ProductAttribute] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue] CHECK CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_AttributeId]
GO
ALTER TABLE [dbo].[Catalog_ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Catalog_Category] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductCategory] CHECK CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Category_CategoryId]
GO
ALTER TABLE [dbo].[Catalog_ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductCategory] CHECK CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductLink]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_LinkedProductId] FOREIGN KEY([LinkedProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductLink] CHECK CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_LinkedProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductLink]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductLink] CHECK CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductMedia]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductMedia_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductMedia] CHECK CONSTRAINT [FK_Catalog_ProductMedia_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductMedia]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductMedia_Core_Media_MediaId] FOREIGN KEY([MediaId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductMedia] CHECK CONSTRAINT [FK_Catalog_ProductMedia_Core_Media_MediaId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination] CHECK CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_ProductOption_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Catalog_ProductOption] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination] CHECK CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_ProductOption_OptionId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue] CHECK CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_ProductOption_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Catalog_ProductOption] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue] CHECK CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_ProductOption_OptionId]
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductPriceHistory_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory] CHECK CONSTRAINT [FK_Catalog_ProductPriceHistory_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductPriceHistory_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory] CHECK CONSTRAINT [FK_Catalog_ProductPriceHistory_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttribute_ProductAttributeId] FOREIGN KEY([ProductAttributeId])
REFERENCES [dbo].[Catalog_ProductAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute] CHECK CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttribute_ProductAttributeId]
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemplate_ProductTemplateId] FOREIGN KEY([ProductTemplateId])
REFERENCES [dbo].[Catalog_ProductTemplate] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute] CHECK CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemplate_ProductTemplateId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Cms_Menu] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Cms_MenuItem] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Core_Entity] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId]
GO
ALTER TABLE [dbo].[Cms_Page]  WITH CHECK ADD  CONSTRAINT [FK_Cms_Page_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_Page] CHECK CONSTRAINT [FK_Cms_Page_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Cms_Page]  WITH CHECK ADD  CONSTRAINT [FK_Cms_Page_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_Page] CHECK CONSTRAINT [FK_Cms_Page_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[Comments_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comment_Comments_Comment_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Comments_Comment] ([Id])
GO
ALTER TABLE [dbo].[Comments_Comment] CHECK CONSTRAINT [FK_Comments_Comment_Comments_Comment_ParentId]
GO
ALTER TABLE [dbo].[Comments_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comment_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Comments_Comment] CHECK CONSTRAINT [FK_Comments_Comment_Core_User_UserId]
GO
ALTER TABLE [dbo].[Contacts_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId] FOREIGN KEY([ContactAreaId])
REFERENCES [dbo].[Contacts_ContactArea] ([Id])
GO
ALTER TABLE [dbo].[Contacts_Contact] CHECK CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId]
GO
ALTER TABLE [dbo].[Core_Address]  WITH CHECK ADD  CONSTRAINT [FK_Core_Address_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Core_Address] CHECK CONSTRAINT [FK_Core_Address_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Core_Address]  WITH CHECK ADD  CONSTRAINT [FK_Core_Address_Core_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Core_District] ([Id])
GO
ALTER TABLE [dbo].[Core_Address] CHECK CONSTRAINT [FK_Core_Address_Core_District_DistrictId]
GO
ALTER TABLE [dbo].[Core_Address]  WITH CHECK ADD  CONSTRAINT [FK_Core_Address_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Core_Address] CHECK CONSTRAINT [FK_Core_Address_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser]  WITH CHECK ADD  CONSTRAINT [FK_Core_CustomerGroupUser_Core_CustomerGroup_CustomerGroupId] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[Core_CustomerGroup] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser] CHECK CONSTRAINT [FK_Core_CustomerGroupUser_Core_CustomerGroup_CustomerGroupId]
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser]  WITH CHECK ADD  CONSTRAINT [FK_Core_CustomerGroupUser_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser] CHECK CONSTRAINT [FK_Core_CustomerGroupUser_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_District]  WITH CHECK ADD  CONSTRAINT [FK_Core_District_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Core_District] CHECK CONSTRAINT [FK_Core_District_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Core_Entity]  WITH CHECK ADD  CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [dbo].[Core_EntityType] ([Id])
GO
ALTER TABLE [dbo].[Core_Entity] CHECK CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId]
GO
ALTER TABLE [dbo].[Core_RoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Core_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_RoleClaim] CHECK CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId]
GO
ALTER TABLE [dbo].[Core_StateOrProvince]  WITH CHECK ADD  CONSTRAINT [FK_Core_StateOrProvince_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Core_StateOrProvince] CHECK CONSTRAINT [FK_Core_StateOrProvince_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Core_User]  WITH CHECK ADD  CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultBillingAddressId] FOREIGN KEY([DefaultBillingAddressId])
REFERENCES [dbo].[Core_UserAddress] ([Id])
GO
ALTER TABLE [dbo].[Core_User] CHECK CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultBillingAddressId]
GO
ALTER TABLE [dbo].[Core_User]  WITH CHECK ADD  CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultShippingAddressId] FOREIGN KEY([DefaultShippingAddressId])
REFERENCES [dbo].[Core_UserAddress] ([Id])
GO
ALTER TABLE [dbo].[Core_User] CHECK CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultShippingAddressId]
GO
ALTER TABLE [dbo].[Core_User]  WITH CHECK ADD  CONSTRAINT [FK_Core_User_Core_Vendor_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Core_Vendor] ([Id])
GO
ALTER TABLE [dbo].[Core_User] CHECK CONSTRAINT [FK_Core_User_Core_Vendor_VendorId]
GO
ALTER TABLE [dbo].[Core_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserAddress_Core_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Core_Address] ([Id])
GO
ALTER TABLE [dbo].[Core_UserAddress] CHECK CONSTRAINT [FK_Core_UserAddress_Core_Address_AddressId]
GO
ALTER TABLE [dbo].[Core_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserAddress_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Core_UserAddress] CHECK CONSTRAINT [FK_Core_UserAddress_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserClaim_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserClaim] CHECK CONSTRAINT [FK_Core_UserClaim_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserLogin_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserLogin] CHECK CONSTRAINT [FK_Core_UserLogin_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Core_Role] ([Id])
GO
ALTER TABLE [dbo].[Core_UserRole] CHECK CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId]
GO
ALTER TABLE [dbo].[Core_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserRole_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Core_UserRole] CHECK CONSTRAINT [FK_Core_UserRole_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserToken]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserToken_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserToken] CHECK CONSTRAINT [FK_Core_UserToken_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_WidgetInstance]  WITH CHECK ADD  CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId] FOREIGN KEY([WidgetId])
REFERENCES [dbo].[Core_Widget] ([Id])
GO
ALTER TABLE [dbo].[Core_WidgetInstance] CHECK CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId]
GO
ALTER TABLE [dbo].[Core_WidgetInstance]  WITH CHECK ADD  CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId] FOREIGN KEY([WidgetZoneId])
REFERENCES [dbo].[Core_WidgetZone] ([Id])
GO
ALTER TABLE [dbo].[Core_WidgetInstance] CHECK CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId]
GO
ALTER TABLE [dbo].[Inventory_Stock]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Stock_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Stock] CHECK CONSTRAINT [FK_Inventory_Stock_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Inventory_Stock]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Stock_Inventory_Warehouse_WarehouseId] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Inventory_Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Stock] CHECK CONSTRAINT [FK_Inventory_Stock_Inventory_Warehouse_WarehouseId]
GO
ALTER TABLE [dbo].[Inventory_StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StockHistory_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Inventory_StockHistory] CHECK CONSTRAINT [FK_Inventory_StockHistory_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Inventory_StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StockHistory_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Inventory_StockHistory] CHECK CONSTRAINT [FK_Inventory_StockHistory_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Inventory_StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StockHistory_Inventory_Warehouse_WarehouseId] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Inventory_Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Inventory_StockHistory] CHECK CONSTRAINT [FK_Inventory_StockHistory_Inventory_Warehouse_WarehouseId]
GO
ALTER TABLE [dbo].[Inventory_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Warehouse_Core_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Core_Address] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Warehouse] CHECK CONSTRAINT [FK_Inventory_Warehouse_Core_Address_AddressId]
GO
ALTER TABLE [dbo].[Inventory_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Warehouse_Core_Vendor_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Core_Vendor] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Warehouse] CHECK CONSTRAINT [FK_Inventory_Warehouse_Core_Vendor_VendorId]
GO
ALTER TABLE [dbo].[Localization_LocalizedContentProperty]  WITH CHECK ADD  CONSTRAINT [FK_Localization_LocalizedContentProperty_Localization_Culture_CultureId] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Localization_Culture] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localization_LocalizedContentProperty] CHECK CONSTRAINT [FK_Localization_LocalizedContentProperty_Localization_Culture_CultureId]
GO
ALTER TABLE [dbo].[Localization_Resource]  WITH CHECK ADD  CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Localization_Culture] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localization_Resource] CHECK CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[News_NewsItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[News_NewsCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News_NewsItemCategory] CHECK CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId]
GO
ALTER TABLE [dbo].[News_NewsItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[News_NewsItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News_NewsItemCategory] CHECK CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Core_User_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Core_User_CustomerId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Orders_Order_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Orders_Order_ParentId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_BillingAddressId] FOREIGN KEY([BillingAddressId])
REFERENCES [dbo].[Orders_OrderAddress] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_BillingAddressId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_ShippingAddressId] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[Orders_OrderAddress] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_ShippingAddressId]
GO
ALTER TABLE [dbo].[Orders_OrderAddress]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderAddress_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderAddress] CHECK CONSTRAINT [FK_Orders_OrderAddress_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Orders_OrderAddress]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderAddress_Core_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Core_District] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderAddress] CHECK CONSTRAINT [FK_Orders_OrderAddress_Core_District_DistrictId]
GO
ALTER TABLE [dbo].[Orders_OrderAddress]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderAddress_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderAddress] CHECK CONSTRAINT [FK_Orders_OrderAddress_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Orders_OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderHistory_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderHistory] CHECK CONSTRAINT [FK_Orders_OrderHistory_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Orders_OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderHistory_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderHistory] CHECK CONSTRAINT [FK_Orders_OrderHistory_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Orders_OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderItem] CHECK CONSTRAINT [FK_Orders_OrderItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Orders_OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderItem_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderItem] CHECK CONSTRAINT [FK_Orders_OrderItem_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Payments_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Payment_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Payments_Payment] CHECK CONSTRAINT [FK_Payments_Payment_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCategory_Catalog_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Catalog_Category] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory] CHECK CONSTRAINT [FK_Pricing_CartRuleCategory_Catalog_Category_CategoryId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCategory_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory] CHECK CONSTRAINT [FK_Pricing_CartRuleCategory_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[Core_CustomerGroup] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleProduct_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct] CHECK CONSTRAINT [FK_Pricing_CartRuleProduct_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleProduct_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct] CHECK CONSTRAINT [FK_Pricing_CartRuleProduct_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleUsage_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage] CHECK CONSTRAINT [FK_Pricing_CartRuleUsage_Core_User_UserId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage] CHECK CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_Coupon_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Pricing_Coupon] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage] CHECK CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_Coupon_CouponId]
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[Core_CustomerGroup] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId]
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_CatalogRuleId] FOREIGN KEY([CatalogRuleId])
REFERENCES [dbo].[Pricing_CatalogRule] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_CatalogRuleId]
GO
ALTER TABLE [dbo].[Pricing_Coupon]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Coupon_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_Coupon] CHECK CONSTRAINT [FK_Pricing_Coupon_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct]  WITH CHECK ADD  CONSTRAINT [FK_ProductComparison_ComparingProduct_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct] CHECK CONSTRAINT [FK_ProductComparison_ComparingProduct_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct]  WITH CHECK ADD  CONSTRAINT [FK_ProductComparison_ComparingProduct_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct] CHECK CONSTRAINT [FK_ProductComparison_ComparingProduct_Core_User_UserId]
GO
ALTER TABLE [dbo].[Reviews_Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Reply_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Reviews_Reply] CHECK CONSTRAINT [FK_Reviews_Reply_Core_User_UserId]
GO
ALTER TABLE [dbo].[Reviews_Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Reply_Reviews_Review_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews_Review] ([Id])
GO
ALTER TABLE [dbo].[Reviews_Reply] CHECK CONSTRAINT [FK_Reviews_Reply_Reviews_Review_ReviewId]
GO
ALTER TABLE [dbo].[Reviews_Review]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Review_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Reviews_Review] CHECK CONSTRAINT [FK_Reviews_Review_Core_User_UserId]
GO
ALTER TABLE [dbo].[Shipments_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shipment_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Shipments_Shipment] CHECK CONSTRAINT [FK_Shipments_Shipment_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Shipments_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shipment_Inventory_Warehouse_WarehouseId] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Inventory_Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Shipments_Shipment] CHECK CONSTRAINT [FK_Shipments_Shipment_Inventory_Warehouse_WarehouseId]
GO
ALTER TABLE [dbo].[Shipments_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shipment_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Shipments_Shipment] CHECK CONSTRAINT [FK_Shipments_Shipment_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_ShipmentItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem] CHECK CONSTRAINT [FK_Shipments_ShipmentItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_ShipmentItem_Shipments_Shipment_ShipmentId] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[Shipments_Shipment] ([Id])
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem] CHECK CONSTRAINT [FK_Shipments_ShipmentItem_Shipments_Shipment_ShipmentId]
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination]  WITH CHECK ADD  CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination] CHECK CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination]  WITH CHECK ADD  CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Core_District] ([Id])
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination] CHECK CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_District_DistrictId]
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination]  WITH CHECK ADD  CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination] CHECK CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[ShoppingCart_Cart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_Cart] CHECK CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[ShoppingCart_Cart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_Cart] CHECK CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CustomerId]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_CartItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] CHECK CONSTRAINT [FK_ShoppingCart_CartItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart_Cart_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[ShoppingCart_Cart] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] CHECK CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart_Cart_CartId]
GO
ALTER TABLE [dbo].[Tax_TaxRate]  WITH CHECK ADD  CONSTRAINT [FK_Tax_TaxRate_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Tax_TaxRate] CHECK CONSTRAINT [FK_Tax_TaxRate_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Tax_TaxRate]  WITH CHECK ADD  CONSTRAINT [FK_Tax_TaxRate_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Tax_TaxRate] CHECK CONSTRAINT [FK_Tax_TaxRate_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Tax_TaxRate]  WITH CHECK ADD  CONSTRAINT [FK_Tax_TaxRate_Tax_TaxClass_TaxClassId] FOREIGN KEY([TaxClassId])
REFERENCES [dbo].[Tax_TaxClass] ([Id])
GO
ALTER TABLE [dbo].[Tax_TaxRate] CHECK CONSTRAINT [FK_Tax_TaxRate_Tax_TaxClass_TaxClassId]
GO
ALTER TABLE [dbo].[WishList_WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_WishList_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[WishList_WishList] CHECK CONSTRAINT [FK_WishList_WishList_Core_User_UserId]
GO
ALTER TABLE [dbo].[WishList_WishListItem]  WITH CHECK ADD  CONSTRAINT [FK_WishList_WishListItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[WishList_WishListItem] CHECK CONSTRAINT [FK_WishList_WishListItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[WishList_WishListItem]  WITH CHECK ADD  CONSTRAINT [FK_WishList_WishListItem_WishList_WishList_WishListId] FOREIGN KEY([WishListId])
REFERENCES [dbo].[WishList_WishList] ([Id])
GO
ALTER TABLE [dbo].[WishList_WishListItem] CHECK CONSTRAINT [FK_WishList_WishListItem_WishList_WishList_WishListId]
GO
USE [master]
GO
ALTER DATABASE [AuditManagement_Test] SET  READ_WRITE 
GO
