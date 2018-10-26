/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     10/26/2018 11:41:19 PM                       */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOTRILOP') and o.name = 'FK_BOTRILOP_BOTRILOP_LOPMONHO')
alter table BOTRILOP
   drop constraint FK_BOTRILOP_BOTRILOP_LOPMONHO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOTRILOP') and o.name = 'FK_BOTRILOP_BOTRILOP2_CAHOC')
alter table BOTRILOP
   drop constraint FK_BOTRILOP_BOTRILOP2_CAHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOTRILOP') and o.name = 'FK_BOTRILOP_BOTRILOP3_PHONGHOC')
alter table BOTRILOP
   drop constraint FK_BOTRILOP_BOTRILOP3_PHONGHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDIEMDANH') and o.name = 'FK_CHITIETD_CHITIETDI_DIEMDANH')
alter table CHITIETDIEMDANH
   drop constraint FK_CHITIETD_CHITIETDI_DIEMDANH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDIEMDANH') and o.name = 'FK_CHITIETD_CHITIETDI_SINHVIEN')
alter table CHITIETDIEMDANH
   drop constraint FK_CHITIETD_CHITIETDI_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIEMDANH') and o.name = 'FK_DIEMDANH_RELATIONS_GIANGVIE')
alter table DIEMDANH
   drop constraint FK_DIEMDANH_RELATIONS_GIANGVIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIANGVIEN') and o.name = 'FK_GIANGVIE_RELATIONS_DONVI')
alter table GIANGVIEN
   drop constraint FK_GIANGVIE_RELATIONS_DONVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC_SINHVIEN')
alter table HOC
   drop constraint FK_HOC_HOC_SINHVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC2_LOPMONHO')
alter table HOC
   drop constraint FK_HOC_HOC2_LOPMONHO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LAP') and o.name = 'FK_LAP_LAP_MONHOC')
alter table LAP
   drop constraint FK_LAP_LAP_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LAP') and o.name = 'FK_LAP_LAP2_LOPMONHO')
alter table LAP
   drop constraint FK_LAP_LAP2_LOPMONHO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOPMONHOC') and o.name = 'FK_LOPMONHO_RELATIONS_DIEMDANH')
alter table LOPMONHOC
   drop constraint FK_LOPMONHO_RELATIONS_DIEMDANH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANCONG') and o.name = 'FK_PHANCONG_PHANCONG_LOPMONHO')
alter table PHANCONG
   drop constraint FK_PHANCONG_PHANCONG_LOPMONHO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANCONG') and o.name = 'FK_PHANCONG_PHANCONG2_GIANGVIE')
alter table PHANCONG
   drop constraint FK_PHANCONG_PHANCONG2_GIANGVIE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOTRILOP')
            and   name  = 'BOTRILOP3_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOTRILOP.BOTRILOP3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOTRILOP')
            and   name  = 'BOTRILOP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOTRILOP.BOTRILOP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOTRILOP')
            and   name  = 'BOTRILOP_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOTRILOP.BOTRILOP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BOTRILOP')
            and   type = 'U')
   drop table BOTRILOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAHOC')
            and   type = 'U')
   drop table CAHOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDIEMDANH')
            and   name  = 'CHITIETDIEMDANH2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDIEMDANH.CHITIETDIEMDANH2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDIEMDANH')
            and   name  = 'CHITIETDIEMDANH_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDIEMDANH.CHITIETDIEMDANH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETDIEMDANH')
            and   type = 'U')
   drop table CHITIETDIEMDANH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DIEMDANH')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DIEMDANH.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIEMDANH')
            and   type = 'U')
   drop table DIEMDANH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONVI')
            and   type = 'U')
   drop table DONVI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIANGVIEN')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIANGVIEN.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIANGVIEN')
            and   type = 'U')
   drop table GIANGVIEN
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
           where  id    = object_id('LOPMONHOC')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOPMONHOC.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOPMONHOC')
            and   type = 'U')
   drop table LOPMONHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MONHOC')
            and   type = 'U')
   drop table MONHOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANCONG')
            and   name  = 'PHANCONG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANCONG.PHANCONG2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANCONG')
            and   name  = 'PHANCONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANCONG.PHANCONG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHANCONG')
            and   type = 'U')
   drop table PHANCONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHONGHOC')
            and   type = 'U')
   drop table PHONGHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SINHVIEN')
            and   type = 'U')
   drop table SINHVIEN
go

/*==============================================================*/
/* Table: BOTRILOP                                              */
/*==============================================================*/
create table BOTRILOP (
   MAGV                 char(10)             not null,
   IDDIEMDANH           int                  not null,
   MALOPMONHOC          char(10)             not null,
   MACAHOC              char(10)             not null,
   MAPHONG              char(10)             not null,
   THU                  varchar(10)          null,
   constraint PK_BOTRILOP primary key (MAGV, IDDIEMDANH, MALOPMONHOC, MACAHOC, MAPHONG)
)
go

/*==============================================================*/
/* Index: BOTRILOP_FK                                           */
/*==============================================================*/




create nonclustered index BOTRILOP_FK on BOTRILOP (MAGV ASC,
  IDDIEMDANH ASC,
  MALOPMONHOC ASC)
go

/*==============================================================*/
/* Index: BOTRILOP2_FK                                          */
/*==============================================================*/




create nonclustered index BOTRILOP2_FK on BOTRILOP (MACAHOC ASC)
go

/*==============================================================*/
/* Index: BOTRILOP3_FK                                          */
/*==============================================================*/




create nonclustered index BOTRILOP3_FK on BOTRILOP (MAPHONG ASC)
go

/*==============================================================*/
/* Table: CAHOC                                                 */
/*==============================================================*/
create table CAHOC (
   MACAHOC              char(10)             not null,
   GIOBD                datetime             null,
   GIOKETTHUC           datetime             null,
   BUOIHOC              varchar(10)          null,
   constraint PK_CAHOC primary key (MACAHOC)
)
go

/*==============================================================*/
/* Table: CHITIETDIEMDANH                                       */
/*==============================================================*/
create table CHITIETDIEMDANH (
   MAGV                 char(10)             not null,
   IDDIEMDANH           int                  not null,
   MASV                 char(10)             not null,
   SOTIETVANG           int                  null,
   LYDO                 varchar(50)          null,
   constraint PK_CHITIETDIEMDANH primary key (MAGV, IDDIEMDANH, MASV)
)
go

/*==============================================================*/
/* Index: CHITIETDIEMDANH_FK                                    */
/*==============================================================*/




create nonclustered index CHITIETDIEMDANH_FK on CHITIETDIEMDANH (MAGV ASC,
  IDDIEMDANH ASC)
go

/*==============================================================*/
/* Index: CHITIETDIEMDANH2_FK                                   */
/*==============================================================*/




create nonclustered index CHITIETDIEMDANH2_FK on CHITIETDIEMDANH (MASV ASC)
go

/*==============================================================*/
/* Table: DIEMDANH                                              */
/*==============================================================*/
create table DIEMDANH (
   MAGV                 char(10)             not null,
   IDDIEMDANH           int                  not null,
   NGAYDIEMDANH         datetime             null,
   LANDIEMDANH          int                  null,
   constraint PK_DIEMDANH primary key (MAGV, IDDIEMDANH)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_2_FK on DIEMDANH (MAGV ASC)
go

/*==============================================================*/
/* Table: DONVI                                                 */
/*==============================================================*/
create table DONVI (
   MADONVI              char(10)             not null,
   TENDONVI             varchar(50)          null,
   constraint PK_DONVI primary key (MADONVI)
)
go

/*==============================================================*/
/* Table: GIANGVIEN                                             */
/*==============================================================*/
create table GIANGVIEN (
   MAGV                 char(10)             not null,
   MADONVI              char(10)             null,
   HOTEN                varchar(50)          null,
   TRINHDO              varchar(50)          null,
   CHUYENMON            varchar(50)          null,
   constraint PK_GIANGVIEN primary key (MAGV)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_1_FK on GIANGVIEN (MADONVI ASC)
go

/*==============================================================*/
/* Table: HOC                                                   */
/*==============================================================*/
create table HOC (
   MASV                 char(10)             not null,
   MAGV                 char(10)             not null,
   IDDIEMDANH           int                  not null,
   MALOPMONHOC          char(10)             not null,
   HOCKY                int                  null,
   NAMHOC               int                  null,
   constraint PK_HOC primary key (MAGV, IDDIEMDANH, MASV, MALOPMONHOC)
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




create nonclustered index HOC2_FK on HOC (MAGV ASC,
  IDDIEMDANH ASC,
  MALOPMONHOC ASC)
go

/*==============================================================*/
/* Table: LAP                                                   */
/*==============================================================*/
create table LAP (
   MAMON                char(10)             not null,
   MAGV                 char(10)             not null,
   IDDIEMDANH           int                  not null,
   MALOPMONHOC          char(10)             not null,
   NAMHOC               int                  null,
   HOCKY                int                  null,
   SISO                 int                  null,
   constraint PK_LAP primary key (MAGV, IDDIEMDANH, MAMON, MALOPMONHOC)
)
go

/*==============================================================*/
/* Index: LAP_FK                                                */
/*==============================================================*/




create nonclustered index LAP_FK on LAP (MAMON ASC)
go

/*==============================================================*/
/* Index: LAP2_FK                                               */
/*==============================================================*/




create nonclustered index LAP2_FK on LAP (MAGV ASC,
  IDDIEMDANH ASC,
  MALOPMONHOC ASC)
go

/*==============================================================*/
/* Table: LOPMONHOC                                             */
/*==============================================================*/
create table LOPMONHOC (
   MAGV                 char(10)             not null,
   IDDIEMDANH           int                  not null,
   MALOPMONHOC          char(10)             not null,
   TENLOPMONHOC         varchar(50)          null,
   SOSINHVIEN           int                  null,
   constraint PK_LOPMONHOC primary key (MAGV, IDDIEMDANH, MALOPMONHOC)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_4_FK on LOPMONHOC (MAGV ASC,
  IDDIEMDANH ASC)
go

/*==============================================================*/
/* Table: MONHOC                                                */
/*==============================================================*/
create table MONHOC (
   MAMON                char(10)             not null,
   TENMON               varchar(50)          null,
   TONGSOTIET           int                  null,
   constraint PK_MONHOC primary key (MAMON)
)
go

/*==============================================================*/
/* Table: PHANCONG                                              */
/*==============================================================*/
create table PHANCONG (
   LOP_MAGV             char(10)             not null,
   IDDIEMDANH           int                  not null,
   MALOPMONHOC          char(10)             not null,
   MAGV                 char(10)             not null,
   constraint PK_PHANCONG primary key (LOP_MAGV, IDDIEMDANH, MALOPMONHOC, MAGV)
)
go

/*==============================================================*/
/* Index: PHANCONG_FK                                           */
/*==============================================================*/




create nonclustered index PHANCONG_FK on PHANCONG (LOP_MAGV ASC,
  IDDIEMDANH ASC,
  MALOPMONHOC ASC)
go

/*==============================================================*/
/* Index: PHANCONG2_FK                                          */
/*==============================================================*/




create nonclustered index PHANCONG2_FK on PHANCONG (MAGV ASC)
go

/*==============================================================*/
/* Table: PHONGHOC                                              */
/*==============================================================*/
create table PHONGHOC (
   MAPHONG              char(10)             not null,
   TENPHONG             varchar(50)          null,
   DIACHI               varchar(50)          null,
   constraint PK_PHONGHOC primary key (MAPHONG)
)
go

/*==============================================================*/
/* Table: SINHVIEN                                              */
/*==============================================================*/
create table SINHVIEN (
   MASV                 char(10)             not null,
   TENSV                varchar(50)          null,
   NGAYSINH             datetime             null,
   GIOITINH             bit                  null,
   LOPNIENCHE           varchar(10)          null,
   constraint PK_SINHVIEN primary key (MASV)
)
go

alter table BOTRILOP
   add constraint FK_BOTRILOP_BOTRILOP_LOPMONHO foreign key (MAGV, IDDIEMDANH, MALOPMONHOC)
      references LOPMONHOC (MAGV, IDDIEMDANH, MALOPMONHOC)
go

alter table BOTRILOP
   add constraint FK_BOTRILOP_BOTRILOP2_CAHOC foreign key (MACAHOC)
      references CAHOC (MACAHOC)
go

alter table BOTRILOP
   add constraint FK_BOTRILOP_BOTRILOP3_PHONGHOC foreign key (MAPHONG)
      references PHONGHOC (MAPHONG)
go

alter table CHITIETDIEMDANH
   add constraint FK_CHITIETD_CHITIETDI_DIEMDANH foreign key (MAGV, IDDIEMDANH)
      references DIEMDANH (MAGV, IDDIEMDANH)
go

alter table CHITIETDIEMDANH
   add constraint FK_CHITIETD_CHITIETDI_SINHVIEN foreign key (MASV)
      references SINHVIEN (MASV)
go

alter table DIEMDANH
   add constraint FK_DIEMDANH_RELATIONS_GIANGVIE foreign key (MAGV)
      references GIANGVIEN (MAGV)
go

alter table GIANGVIEN
   add constraint FK_GIANGVIE_RELATIONS_DONVI foreign key (MADONVI)
      references DONVI (MADONVI)
go

alter table HOC
   add constraint FK_HOC_HOC_SINHVIEN foreign key (MASV)
      references SINHVIEN (MASV)
go

alter table HOC
   add constraint FK_HOC_HOC2_LOPMONHO foreign key (MAGV, IDDIEMDANH, MALOPMONHOC)
      references LOPMONHOC (MAGV, IDDIEMDANH, MALOPMONHOC)
go

alter table LAP
   add constraint FK_LAP_LAP_MONHOC foreign key (MAMON)
      references MONHOC (MAMON)
go

alter table LAP
   add constraint FK_LAP_LAP2_LOPMONHO foreign key (MAGV, IDDIEMDANH, MALOPMONHOC)
      references LOPMONHOC (MAGV, IDDIEMDANH, MALOPMONHOC)
go

alter table LOPMONHOC
   add constraint FK_LOPMONHO_RELATIONS_DIEMDANH foreign key (MAGV, IDDIEMDANH)
      references DIEMDANH (MAGV, IDDIEMDANH)
go

alter table PHANCONG
   add constraint FK_PHANCONG_PHANCONG_LOPMONHO foreign key (LOP_MAGV, IDDIEMDANH, MALOPMONHOC)
      references LOPMONHOC (MAGV, IDDIEMDANH, MALOPMONHOC)
go

alter table PHANCONG
   add constraint FK_PHANCONG_PHANCONG2_GIANGVIE foreign key (MAGV)
      references GIANGVIEN (MAGV)
go

