package Shop.models;

import java.util.*;
import java.io.Serializable;

public class GioHang implements Serializable {

    private List<HoaDonChiTiet> listHoaDonChiTiet;

    public GioHang() {
        listHoaDonChiTiet = new ArrayList<>();
    }

    public List<HoaDonChiTiet> getListHoaDonChiTiet() {
        return listHoaDonChiTiet;
    }

    public void setListHoaDonChiTiet(List<HoaDonChiTiet> listHoaDonChiTiet) {
        this.listHoaDonChiTiet = listHoaDonChiTiet;
    }

    public int getCount() {
        return listHoaDonChiTiet.size();
    }

    public void themSanPham(HoaDonChiTiet item) {
        String code = item.getSanPham().getSanPhamCode();
        int soLuong = item.getSoLuong();
        for (HoaDonChiTiet lineItem : listHoaDonChiTiet) {
            if (lineItem.getSanPham().getSanPhamCode().equals(code)) {
                lineItem.setSoLuong(soLuong);
                return;
            }
        }
        listHoaDonChiTiet.add(item);
    }

    public void xoaSanPham(HoaDonChiTiet item) {
        String code = item.getSanPham().getSanPhamCode();
        for (int i = 0; i < listHoaDonChiTiet.size(); i++) {
            HoaDonChiTiet lineItem = listHoaDonChiTiet.get(i);
            if (lineItem.getSanPham().getSanPhamCode().equals(code)) {
                listHoaDonChiTiet.remove(i);
                return;
            }
        }
    }
}
