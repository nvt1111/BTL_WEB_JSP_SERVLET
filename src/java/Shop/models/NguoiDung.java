/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.models;

import java.sql.Date;
import java.io.Serializable;

/**
 *
 * @author daodu
 */
public class NguoiDung implements Serializable{
    private Integer NguoiDungID;
    private String Ten;
//    private String TaiKhoan;
//    private String MatKhau;
//    private Date NgaySinh;
    private String Sdt;
    private String DiaChi;
    private String Email;
//    private String ChucVu;

    public NguoiDung() {
    }

    public Integer getNguoiDungID() {
        return NguoiDungID;
    }

    public void setNguoiDungID(Integer NguoiDungID) {
        this.NguoiDungID = NguoiDungID;
    }

    public String getTen() {
        return Ten;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

//    public String getTaiKhoan() {
//        return TaiKhoan;
//    }
//
//    public void setTaiKhoan(String TaiKhoan) {
//        this.TaiKhoan = TaiKhoan;
//    }
//
//    public String getMatKhau() {
//        return MatKhau;
//    }
//
//    public void setMatKhau(String MatKhau) {
//        this.MatKhau = MatKhau;
//    }
//
//    public Date getNgaySinh() {
//        return NgaySinh;
//    }
//
//    public void setNgaySinh(Date NgaySinh) {
//        this.NgaySinh = NgaySinh;
//    }

    public String getSdt() {
        return Sdt;
    }

    public void setSdt(String Sdt) {
        this.Sdt = Sdt;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

//    public String getChucVu() {
//        return ChucVu;
//    }
//
//    public void setChucVu(String ChucVu) {
//        this.ChucVu = ChucVu;
//    }

   
    
}
