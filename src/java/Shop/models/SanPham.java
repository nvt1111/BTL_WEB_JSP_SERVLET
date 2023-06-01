package Shop.models;

import java.io.Serializable;

/**
 *
 * @author daodu
 */
public class SanPham implements Serializable {

    private int SanPhamID;
    private String Ten;
    private float Gia;
    private String SanPhamCode;
    private String SanPhamDescription;
    private String TheLoai;

    public SanPham() {
    }

    public SanPham(int SanPhamID, String Ten, float Gia, String SanPhamCode, String SanPhamDescription, String TheLoai) {
        this.SanPhamID = SanPhamID;
        this.Ten = Ten;
        this.Gia = Gia;
        this.SanPhamCode = SanPhamCode;
        this.SanPhamDescription = SanPhamDescription;
        this.TheLoai = TheLoai;
    }

    public int getSanPhamID() {
        return SanPhamID;
    }

    public void setSanPhamID(int SanPhamID) {
        this.SanPhamID = SanPhamID;
    }

    public String getTen() {
        return Ten;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public float getGia() {
        return Gia;
    }

    public void setGia(float Gia) {
        this.Gia = Gia;
    }

    public String getSanPhamCode() {
        return SanPhamCode;
    }

    public void setSanPhamCode(String SanPhamCode) {
        this.SanPhamCode = SanPhamCode;
    }

    public String getSanPhamDescription() {
        return SanPhamDescription;
    }

    public void setSanPhamDescription(String SanPhamDescription) {
        this.SanPhamDescription = SanPhamDescription;
    }

    public String getTheLoai() {
        return TheLoai;
    }

    public void setTheLoai(String TheLoai) {
        this.TheLoai = TheLoai;
    }

    public String getImageURL() {
        String imageURL = "/musicStore/images/" + SanPhamCode + "_cover.jpg";
        return imageURL;
    }

}
