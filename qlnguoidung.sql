use qldiemdanhsv
go
create table QL_NguoiDung
(
	TenDangNhap char(20) not null primary key,
	MatKhau varchar(20),
	HoatDong nvarchar(50) 
)
create table QL_NhomNguoiDung
(
	MaNhom char(10) not null primary key,
	TenNhom nvarchar(20),
	GhiChu nvarchar(50)
)
create  table DM_ManHinh
(
	MaManhHinh char(10) not null primary key,
	TenManHinh nvarchar(50)
)
create table QL_NguoiDungNhomNguoiDung
(
	TenDangNhap char(20) not null,
	MaNhomNguoiDung char(10) not null,
	GhiChu nvarchar(50),
	Constraint FK_TenDangNhap foreign key (TenDangNhap) references QL_NguoiDung(TenDangNhap),
	Constraint FK_MaNhomNguoiDung foreign key (MaNhomNguoiDung) references QL_NhomNguoiDung(MaNhom)
)
create table QL_PhanQuyen
(
	MaNhomNguoiDung char(10) not null,
	MaManhHinh char(10) not null,
	CoQuyen int Default 0 --0 khong co quyen && 1: co quyen
)
alter table QL_PhanQuyen
add Constraint FK_MaNhom_PhanQuyen Foreign key (MaNhomNguoiDung) references QL_NhomNguoiDung(MaNhom)
alter table QL_PhanQuyen
add Constraint FK_MaManHinh_PhanQuyen Foreign key (MaManhHinh) references DM_ManHinh(MaManhHinh)


select nd.TenDangNhap,nd.MatKhau,ndnnd.MaNhomNguoiDung from QL_NguoiDungNhomNguoiDung ndnnd,QL_NguoiDung nd
where nd.TenDangNhap=ndnnd.TenDangNhap