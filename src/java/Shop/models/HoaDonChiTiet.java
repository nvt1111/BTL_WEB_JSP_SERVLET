package Shop.models;

import java.io.Serializable;

/**
 *
 * @author daodu
 */
public class HoaDonChiTiet implements Serializable {

    private int ChiTietHoaDonID;
    private HoaDon hoaDon;
    private SanPham sanPham;
    private int SoLuong;

    public HoaDonChiTiet() {
    }

    public HoaDonChiTiet(int ChiTietHoaDonID, HoaDon hoaDon, SanPham sanPham, int SoLuong) {
        this.ChiTietHoaDonID = ChiTietHoaDonID;
        this.hoaDon = hoaDon;
        this.sanPham = sanPham;
        this.SoLuong = SoLuong;
    }

    public int getChiTietHoaDonID() {
        return ChiTietHoaDonID;
    }

    public void setChiTietHoaDonID(int ChiTietHoaDonID) {
        this.ChiTietHoaDonID = ChiTietHoaDonID;
    }

    public HoaDon getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(HoaDon hoaDon) {
        this.hoaDon = hoaDon;
    }

    public SanPham getSanPham() {
        return sanPham;
    }

    public void setSanPham(SanPham sanPham) {
        this.sanPham = sanPham;
    }

    public int getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }

    public double getTotal() {
        double total = sanPham.getGia() * SoLuong;
        return total;
    }
}
