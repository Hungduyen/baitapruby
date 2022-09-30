class Canbo
    def initialize(hoten, tuoi, gioitinh, diachi)
        @hoten = hoten
        @tuoi = tuoi
        @gioitinh = gioitinh
        @diachi = diachi
    end
    def hoten
        @hoten
    end
    def tuoi
        @tuoi
    end
    def gioitinh
        @gioitinh
    end
    def diachi
        @diachi
    end
end
#Xây dựng các lớp công nhân, kỹ sư, nhân viên kế thừa lớp cán bộ
class Congnhan < Canbo
    attr_accessor : bac
    def bac
        @bac
    end
end
class Kysu < Canbo
    attr_accessor : nganhdaotao
    def nganhdaotao
        @nganhdaotao
    end
end
class Nhanvien < Canbo
    attr_accessor : congviec
    def congviec
        @congviec
    end
end
class QLCB 
    def themcanbo(danhsachcb[], Canbo canbo)
       danhsachcb.push(canbo) 
    end
    def timkiem(danhsachcb[], string ten)
        for item in danhsachcb do
            if item.hoten=ten 
                return item
            end
        end
    end
    def hienthi(danhsachcb[])
        for item indanhsachcb do
            puts "Họ tên: #{item.hoten}, tuổi: #{item.tuoi}, Giới tính: #{item.gioitinh}, Địa chỉ: #{item.diachi}" 
        end
    end
end
