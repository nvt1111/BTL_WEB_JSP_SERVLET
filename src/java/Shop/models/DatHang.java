package Shop.models;

import java.util.*;
import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class DatHang implements Serializable {

    private int DatHangID;
    private NguoiDung nguoiDung;
    private Date DatHangDate;
    private SanPham sanPham;

    public DatHang() {
        nguoiDung = null;
        DatHangDate = new Date();
        sanPham = null;
    }

    public int getDatHangID() {
        return DatHangID;
    }

    public void setDatHangID(int DatHangID) {
        this.DatHangID = DatHangID;
    }

    public NguoiDung getNguoiDung() {
        return nguoiDung;
    }

    public void setNguoiDung(NguoiDung nguoiDung) {
        this.nguoiDung = nguoiDung;
    }

    public Date getDatHangDate() {
        return DatHangDate;
    }

    public void setDatHangDate(Date DatHangDate) {
        this.DatHangDate = DatHangDate;
    }

    public SanPham getSanPham() {
        return sanPham;
    }

    public void setSanPham(SanPham sanPham) {
        this.sanPham = sanPham;
    }

}
