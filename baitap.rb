class Canbo


    def initialize

    end 

   

    def enter_infomation
        print "Nhập tên : "
        @name225 = gets.chomp
        print "Nhập tuổi : "
        @age225 = gets.to_i
        print "Nhập giới tính 1(nam) 0(nữ) 2(khác) : "
        @gender225 = gets.to_i
        print "Nhập địa chỉ : "
        @address225 = gets.chomp
    end

    def info    
        puts "Tên : #{@name225}"
        puts "Tuối : #{@age225}"
        if @gender225 == 1 
            puts'Giới tính : Nam'
        elsif @gender225 == 0
            puts 'Giới Tính : Nữ'
        else 
            puts 'Giới Tính : Khác'
        end
        puts "Địa chỉ : #{@address225}"
    end
    attr_accessor :name225, :age225, :gender225, :address225
end 



class Congnhan < Canbo

    def initialize
    end

    attr_accessor :name225, :age225, :gender225, :address225, :bac225

    def enter_infomation
        super
        print "Nhập bậc : "
        @bac225 = gets.chomp
    end

    def info 
        super   
        puts "Bậc : #{@bac225}"
    end

end

class Kysu < Canbo

    def initialize
    end

    def enter_infomation
        super
        print "Nhập ngành đào tạo : "
        @nganh225 = gets.chomp
    end
    def info 
        super   
        puts "Ngành : #{@nganh225}"
    end
    attr_accessor :name225, :age225, :gender225, :address225, :nganh225
end

class Nhanvien < Canbo
    def initialize
    end

    def enter_infomation
        super
        print "Nhập công việc : "
        @congviec225 = gets.chomp
    end
    def info 
        super   
        puts "Công việc : #{@congviec225}"
    end
    attr_accessor :name225, :age225, :gender225, :address225, :congviec225

end

class QLCB
    def initialize
    end

    $canbos = []
    
    def addCanbo
        puts"1. Nhâp công nhân :"
        puts"2. Nhâp Ky su :"
        puts"3. Nhập Nhân viên :"
        print "Mơi bạn chon : "
        choose = gets.to_i
        if choose ==1 
            canbo =Congnhan.new
         
        elsif choose == 2
            canbo =Kysu.new
        else 
            canbo = Nhanvien.new
        end
        canbo.enter_infomation
        $canbos << canbo       
    end

    def infomatinon 
        puts "============Danh sách cán bộ là================"    
        $canbos.each do |canbo|
            puts canbo.info
        end
    end

end



$continute = true
while $continute

    quanly = QLCB.new
    puts "1. thêm mới cán bộ."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách cán bộ ."
    puts "4 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose = gets.to_i

    case choose
    when 1
        quanly.addCanbo
    when 2
       puts "little child"
    when 3
        quanly.infomatinon
    else
       puts "Xin tạm biệt!"
        $continute = false
    end
end
