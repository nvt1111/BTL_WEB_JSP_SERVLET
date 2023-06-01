drop database if exists clothing_store_btl;

create database clothing_store_btl;

use clothing_store_btl;

create table NguoiDung (
NguoiDungID int not null auto_increment,
Ten varchar(50),
Email varchar(50),
DiaChi varchar(50),
Sdt varchar(50),
-- NgaySinh datetime,
-- ChucVu varchar(50),
-- TaiKhoan varchar(50) not null,
-- MatKhau varchar(50) not null,

primary key (NguoiDungID)
);

create table SanPham (
SanPhamID int not null auto_increment,
Ten varchar(100) not null default '',
SanPhamDescription varchar(100) not null default '',
SanPhamCode varchar(10) not null,
Gia float not null default '0',
TheLoai varchar(50) not null,
primary key (SanPhamID)
);



create table HoaDon (
HoaDonID int not null auto_increment,
NguoiDungID int not null,
HoaDonDate datetime not null default '0000-00-00 00:00:00',
TongTien float not null default '0',
DaThanhToan enum('y', 'n') default null,

primary key (HoaDonID),
foreign key (NguoiDungID) references NguoiDung (NguoiDungID)
);

create table ChiTietHoaDon (
ChiTietHoaDonID int not null auto_increment,
HoaDonID int not null default '0',
SanPhamID int not null default '0',
SoLuong int not null default '0',

primary key (ChiTietHoaDonID),
foreign key (HoaDonID) references HoaDon (HoaDonID),
foreign key (SanPhamID) references SanPham (SanPhamID)
);

-- create table DatHang (
-- DatHangID int not null auto_increment,
-- NguoiDungID int not null,
-- DatHangDate datetime not null,
-- SanPhamID int not null,

-- primary key (DatHangID),
-- foreign key (NguoiDungID) references NguoiDung (NguoiDungID),
-- foreign key (SanPhamID) references SanPham (SanPhamID)
-- );