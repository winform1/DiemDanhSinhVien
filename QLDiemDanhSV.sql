/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     9/19/2018 8:56:48 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BO_TRI_LOP') and o.name = 'FK_BO_TRI_L_BO_TRI_LO_PHONG_HO')
alter table BO_TRI_LOP
   drop constraint FK_BO_TRI_L_BO_TRI_LO_PHONG_HO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BO_TRI_LOP') and o.name = 'FK_BO_TRI_L_BO_TRI_LO_LOP_MON_')
alter table BO_TRI_LOP
   drop constraint FK_BO_TRI_L_BO_TRI_LO_LOP_MON_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BO_TRI_LOP') and o.name = 'FK_BO_TRI_L_BO_TRI_LO_CA_HOC')
alter table BO_TRI_LOP
   drop constraint FK_BO_TRI_L_BO_TRI_LO_CA_HOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIANG_VIEN') and o.name = 'FK_GIANG_VI_RELATIONS__ON_VI')
alter table GIANG_VIEN
   drop constraint FK_GIANG_VI_RELATIONS__ON_VI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC_SINH_VIE')
alter table HOC
   drop constraint FK_HOC_HOC_SINH_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC2_LOP_MON_')
alter table HOC
   drop constraint FK_HOC_HOC2_LOP_MON_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LAP') and o.name = 'FK_LAP_LAP_MON_HOC')
alter table LAP
   drop constraint FK_LAP_LAP_MON_HOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LAP') and o.name = 'FK_LAP_LAP2_LOP_MON_')
alter table LAP
   drop constraint FK_LAP_LAP2_LOP_MON_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOP_MON_HOC') and o.name = 'FK_LOP_MON__RELATIONS_GIANG_VI')
alter table LOP_MON_HOC
   drop constraint FK_LOP_MON__RELATIONS_GIANG_VI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('_IEM_DANH') and o.name = 'FK__IEM_DAN__IEM_DANH_GIANG_VI')
alter table _IEM_DANH
   drop constraint FK__IEM_DAN__IEM_DANH_GIANG_VI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('_IEM_DANH') and o.name = 'FK__IEM_DAN__IEM_DANH_SINH_VIE')
alter table _IEM_DANH
   drop constraint FK__IEM_DAN__IEM_DANH_SINH_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('_IEM_DANH') and o.name = 'FK__IEM_DAN__IEM_DANH_LOP_MON_')
alter table _IEM_DANH
   drop constraint FK__IEM_DAN__IEM_DANH_LOP_MON_
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BO_TRI_LOP')
            and   name  = 'BO_TRI_LOP3_FK'
            and   indid > 0
            and   indid < 255)
   drop index BO_TRI_LOP.BO_TRI_LOP3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BO_TRI_LOP')
            and   name  = 'BO_TRI_LOP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BO_TRI_LOP.BO_TRI_LOP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BO_TRI_LOP')
            and   name  = 'BO_TRI_LOP_FK'
            and   indid > 0
            and   indid < 255)
   drop index BO_TRI_LOP.BO_TRI_LOP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BO_TRI_LOP')
            and   type = 'U')
   drop table BO_TRI_LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CA_HOC')
            and   type = 'U')
   drop table CA_HOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIANG_VIEN')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIANG_VIEN.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIANG_VIEN')
            and   type = 'U')
   drop table GIANG_VIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOC')
            and   name  = 'HOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOC.HOC2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOC')
            and   name  = 'HOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOC.HOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOC')
            and   type = 'U')
   drop table HOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LAP')
            and   name  = 'LAP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index LAP.LAP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LAP')
            and   name  = 'LAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index LAP.LAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LAP')
            and   type = 'U')
   drop table LAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOP_MON_HOC')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOP_MON_HOC.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOP_MON_HOC')
            and   type = 'U')
   drop table LOP_MON_HOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MON_HOC')
            and   type = 'U')
   drop table MON_HOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHONG_HOC')
            and   type = 'U')
   drop table PHONG_HOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SINH_VIEN')
            and   type = 'U')
   drop table SINH_VIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('_IEM_DANH')
            and   name  = '_IEM_DANH3_FK'
            and   indid > 0
            and   indid < 255)
   drop index _IEM_DANH._IEM_DANH3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('_IEM_DANH')
            and   name  = '_IEM_DANH2_FK'
            and   indid > 0
            and   indid < 255)
   drop index _IEM_DANH._IEM_DANH2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('_IEM_DANH')
            and   name  = '_IEM_DANH_FK'
            and   indid > 0
            and   indid < 255)
   drop index _IEM_DANH._IEM_DANH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('_IEM_DANH')
            and   type = 'U')
   drop table _IEM_DANH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('_ON_VI')
            and   type = 'U')
   drop table _ON_VI
go

/*==============================================================*/
/* Table: BO_TRI_LOP                                            */
/*==============================================================*/
create table BO_TRI_LOP (
   MAPHONG              char(10)             not null,
   MALOPMON             char(10)             not null,
   MACAHOC              char(10)             not null,
   THU                  varchar(10)          null,
   constraint PK_BO_TRI_LOP primary key (MAPHONG, MALOPMON, MACAHOC)
)
go

/*==============================================================*/
/* Index: BO_TRI_LOP_FK                                         */
/*==============================================================*/




create nonclustered index BO_TRI_LOP_FK on BO_TRI_LOP (MAPHONG ASC)
go

/*==============================================================*/
/* Index: BO_TRI_LOP2_FK                                        */
/*==============================================================*/




create nonclustered index BO_TRI_LOP2_FK on BO_TRI_LOP (MALOPMON ASC)
go

/*==============================================================*/
/* Index: BO_TRI_LOP3_FK                                        */
/*==============================================================*/




create nonclustered index BO_TRI_LOP3_FK on BO_TRI_LOP (MACAHOC ASC)
go

/*==============================================================*/
/* Table: CA_HOC                                                */
/*==============================================================*/
create table CA_HOC (
   MACAHOC              char(10)             not null,
   GIOBD                datetime             null,
   GIOKT                datetime             null,
   BUOIHOC              varchar(10)          null,
   constraint PK_CA_HOC primary key (MACAHOC)
)
go

/*==============================================================*/
/* Table: GIANG_VIEN                                            */
/*==============================================================*/
create table GIANG_VIEN (
   MA_GIANG_VIEN        char(10)             not null,
   MA__ON_VI            char(10)             null,
   HO_TEN               varchar(50)          null,
   CHUYEN_MON           varchar(50)          null,
   constraint PK_GIANG_VIEN primary key (MA_GIANG_VIEN)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_1_FK on GIANG_VIEN (MA__ON_VI ASC)
go

/*==============================================================*/
/* Table: HOC                                                   */
/*==============================================================*/
create table HOC (
   MASV                 char(10)             not null,
   MALOPMON             char(10)             not null,
   HOC_KY               int                  null,
   NAM_HOC              int                  null,
   constraint PK_HOC primary key (MASV, MALOPMON)
)
go

/*==============================================================*/
/* Index: HOC_FK                                                */
/*==============================================================*/




create nonclustered index HOC_FK on HOC (MASV ASC)
go

/*==============================================================*/
/* Index: HOC2_FK                                               */
/*==============================================================*/




create nonclustered index HOC2_FK on HOC (MALOPMON ASC)
go

/*==============================================================*/
/* Table: LAP                                                   */
/*==============================================================*/
create table LAP (
   MAMONHOC             char(10)             not null,
   MALOPMON             char(10)             not null,
   HOC_KY               int                  null,
   NAM_HOC              int                  null,
   SISO                 int                  null,
   constraint PK_LAP primary key (MAMONHOC, MALOPMON)
)
go

/*==============================================================*/
/* Index: LAP_FK                                                */
/*==============================================================*/




create nonclustered index LAP_FK on LAP (MAMONHOC ASC)
go

/*==============================================================*/
/* Index: LAP2_FK                                               */
/*==============================================================*/




create nonclustered index LAP2_FK on LAP (MALOPMON ASC)
go

/*==============================================================*/
/* Table: LOP_MON_HOC                                           */
/*==============================================================*/
create table LOP_MON_HOC (
   MALOPMON             char(10)             not null,
   MA_GIANG_VIEN        char(10)             null,
   TENLOPMON            varchar(30)          null,
   constraint PK_LOP_MON_HOC primary key (MALOPMON)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_2_FK on LOP_MON_HOC (MA_GIANG_VIEN ASC)
go

/*==============================================================*/
/* Table: MON_HOC                                               */
/*==============================================================*/
create table MON_HOC (
   MAMONHOC             char(10)             not null,
   TENMONHOC            varchar(50)          null,
   TONGSOTIET           int                  null,
   SOTC                 int                  null,
   constraint PK_MON_HOC primary key (MAMONHOC)
)
go

/*==============================================================*/
/* Table: PHONG_HOC                                             */
/*==============================================================*/
create table PHONG_HOC (
   MAPHONG              char(10)             not null,
   TENPHONG             char(10)             null,
   SOGHE                int                  null,
   constraint PK_PHONG_HOC primary key (MAPHONG)
)
go

/*==============================================================*/
/* Table: SINH_VIEN                                             */
/*==============================================================*/
create table SINH_VIEN (
   MASV                 char(10)             not null,
   HO_TEN               varchar(50)          null,
   NGAY_SINH            datetime             null,
   GIOI_TINH            bit                  null,
   LOP_CHUYEN_CHE       varchar(30)          null,
   constraint PK_SINH_VIEN primary key (MASV)
)
go

/*==============================================================*/
/* Table: _IEM_DANH                                             */
/*==============================================================*/
create table _IEM_DANH (
   MA_GIANG_VIEN        char(10)             not null,
   MASV                 char(10)             not null,
   MALOPMON             char(10)             not null,
   LAN__IEM_DANH        int                  null,
   NGAY__IEM_DANH       datetime             null,
   _IEM_DANH            bit                  null,
   constraint PK__IEM_DANH primary key (MA_GIANG_VIEN, MASV, MALOPMON)
)
go

/*==============================================================*/
/* Index: _IEM_DANH_FK                                          */
/*==============================================================*/




create nonclustered index _IEM_DANH_FK on _IEM_DANH (MA_GIANG_VIEN ASC)
go

/*==============================================================*/
/* Index: _IEM_DANH2_FK                                         */
/*==============================================================*/




create nonclustered index _IEM_DANH2_FK on _IEM_DANH (MASV ASC)
go

/*==============================================================*/
/* Index: _IEM_DANH3_FK                                         */
/*==============================================================*/




create nonclustered index _IEM_DANH3_FK on _IEM_DANH (MALOPMON ASC)
go

/*==============================================================*/
/* Table: _ON_VI                                                */
/*==============================================================*/
create table _ON_VI (
   MA__ON_VI            char(10)             not null,
   TEN__ON_VI           varchar(50)          null,
   constraint PK__ON_VI primary key (MA__ON_VI)
)
go

alter table BO_TRI_LOP
   add constraint FK_BO_TRI_L_BO_TRI_LO_PHONG_HO foreign key (MAPHONG)
      references PHONG_HOC (MAPHONG)
go

alter table BO_TRI_LOP
   add constraint FK_BO_TRI_L_BO_TRI_LO_LOP_MON_ foreign key (MALOPMON)
      references LOP_MON_HOC (MALOPMON)
go

alter table BO_TRI_LOP
   add constraint FK_BO_TRI_L_BO_TRI_LO_CA_HOC foreign key (MACAHOC)
      references CA_HOC (MACAHOC)
go

alter table GIANG_VIEN
   add constraint FK_GIANG_VI_RELATIONS__ON_VI foreign key (MA__ON_VI)
      references _ON_VI (MA__ON_VI)
go

alter table HOC
   add constraint FK_HOC_HOC_SINH_VIE foreign key (MASV)
      references SINH_VIEN (MASV)
go

alter table HOC
   add constraint FK_HOC_HOC2_LOP_MON_ foreign key (MALOPMON)
      references LOP_MON_HOC (MALOPMON)
go

alter table LAP
   add constraint FK_LAP_LAP_MON_HOC foreign key (MAMONHOC)
      references MON_HOC (MAMONHOC)
go

alter table LAP
   add constraint FK_LAP_LAP2_LOP_MON_ foreign key (MALOPMON)
      references LOP_MON_HOC (MALOPMON)
go

alter table LOP_MON_HOC
   add constraint FK_LOP_MON__RELATIONS_GIANG_VI foreign key (MA_GIANG_VIEN)
      references GIANG_VIEN (MA_GIANG_VIEN)
go

alter table _IEM_DANH
   add constraint FK__IEM_DAN__IEM_DANH_GIANG_VI foreign key (MA_GIANG_VIEN)
      references GIANG_VIEN (MA_GIANG_VIEN)
go

alter table _IEM_DANH
   add constraint FK__IEM_DAN__IEM_DANH_SINH_VIE foreign key (MASV)
      references SINH_VIEN (MASV)
go

alter table _IEM_DANH
   add constraint FK__IEM_DAN__IEM_DANH_LOP_MON_ foreign key (MALOPMON)
      references LOP_MON_HOC (MALOPMON)
go

