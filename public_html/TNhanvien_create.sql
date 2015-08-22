-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 01:00:26.487




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    MaNV int    NOT NULL ,
    TenNv varchar(50)    NOT NULL ,
    Ngaysinh date    NOT NULL ,
    Gioitinh varchar(10)    NOT NULL ,
    Email varchar(50)    NOT NULL ,
    Mucluong int    NOT NULL ,
    MaPhong int    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    MaPhong int    NOT NULL ,
    Tenphong int    NOT NULL ,
    TNhanvien_MaNV int    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien FOREIGN KEY TPhongban_TNhanvien (TNhanvien_MaNV)
    REFERENCES TNhanvien (MaNV);



-- End of file.

