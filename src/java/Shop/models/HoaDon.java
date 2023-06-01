package Shop.models;

import java.util.*;
import java.sql.Date;
import java.io.Serializable;

/**
 *
 * @author daodu
 */
public class HoaDon implements Serializable {

    private int HoaDonID;
    private NguoiDung nguoiDung;
    private List<HoaDonChiTiet> listHoaDonChiTiet;
    private Date HoaDonDate;
    private float TongTien;
    private boolean DaThanhToan;

    public HoaDon() {
    }

    public HoaDon(int HoaDonID, NguoiDung nguoiDung, List<HoaDonChiTiet> listHoaDonChiTiet, Date HoaDonDate, float TongTien, boolean DaThanhToan) {
        this.HoaDonID = HoaDonID;
        this.nguoiDung = nguoiDung;
        this.listHoaDonChiTiet = listHoaDonChiTiet;
        this.HoaDonDate = HoaDonDate;
        this.TongTien = TongTien;
        this.DaThanhToan = DaThanhToan;
    }

    public int getHoaDonID() {
        return HoaDonID;
    }

    public void setHoaDonID(int HoaDonID) {
        this.HoaDonID = HoaDonID;
    }

    public NguoiDung getNguoiDung() {
        return nguoiDung;
    }

    public void setNguoiDung(NguoiDung nguoiDung) {
        this.nguoiDung = nguoiDung;
    }

    public List<HoaDonChiTiet> getListHoaDonChiTiet() {
        return listHoaDonChiTiet;
    }

    public void setListHoaDonChiTiet(List<HoaDonChiTiet> listHoaDonChiTiet) {
        this.listHoaDonChiTiet = listHoaDonChiTiet;
    }

    public Date getHoaDonDate() {
        return HoaDonDate;
    }

    public void setHoaDonDate(Date HoaDonDate) {
        this.HoaDonDate = HoaDonDate;
    }

    public float getTongTien() {
        return TongTien;
    }

    public void setTongTien(float TongTien) {
        this.TongTien = TongTien;
    }

    public boolean isDaThanhToan() {
        return DaThanhToan;
    }

    public void setDaThanhToan(boolean DaThanhToan) {
        this.DaThanhToan = DaThanhToan;
    }

    public float getHoaDonTotal() {
        float tongTien = 0.0f;
        for (HoaDonChiTiet item : listHoaDonChiTiet) {
            tongTien += item.getTotal();
        }
        return tongTien;
    }
}
