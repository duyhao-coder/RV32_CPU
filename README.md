CPU RISC-V 32-bit (Single Clock)

Giới thiệu

Dự án này là một CPU 32-bit dựa trên tập lệnh RISC-V (RV32I) với kiến trúc single clock. CPU được thiết kế đơn giản, phù hợp cho ứng dụng nhúng và học tập. Mã nguồn được viết bằng [Verilog/VHDL] và sử dụng Xilinx Vivado để mô phỏng và triển khai trên FPGA.

Tính năng





Hỗ trợ tập lệnh cơ bản RV32I



Kiến trúc chu kỳ đơn (single clock cycle)



Tối ưu cho hiệu suất đơn giản và tiết kiệm tài nguyên



Dễ tích hợp vào hệ thống nhúng

Yêu cầu





Công cụ: Xilinx Vivado (phiên bản [điền phiên bản, ví dụ: 2023.2])



Ngôn ngữ: [Verilog/VHDL]



RISC-V Toolchain: RISC-V GNU Toolchain



Phần cứng (FPGA): [Ví dụ: Digilent Nexys A7, Arty A7]



Hệ điều hành: Windows/Linux

Cài đặt





Sao chép kho lưu trữ:

git clone https://github.com/[your-username]/[your-repo].git
cd [your-repo]



Cài Vivado:





Tải và cài đặt Vivado từ trang chính thức của Xilinx.



Đảm bảo Vivado đã được thêm vào PATH hoặc cấu hình đúng.



Cài RISC-V Toolchain:

sudo apt-get install gcc-riscv64-linux-gnu





Thêm toolchain vào PATH:

export PATH=$PATH:/path/to/riscv-toolchain/bin

Hướng dẫn sử dụng





Mô phỏng:





Mở Vivado và chạy script mô phỏng:

vivado -mode batch -source simulate.tcl



Kiểm tra kết quả trong giao diện Vivado hoặc tệp log.



Triển khai trên FPGA:





Mở dự án Vivado (project.xpr).



Tạo bitstream và tải lên FPGA:

vivado -mode batch -source program_fpga.tcl



Kiểm tra:





Biên dịch và chạy chương trình kiểm tra trong tests/:

riscv64-linux-gnu-gcc -o test.elf tests/test.c

Cấu trúc thư mục





src/: Mã nguồn CPU ([Verilog/VHDL])



tests/: Chương trình kiểm tra



docs/: Tài liệu thiết kế



scripts/: Script Vivado (mô phỏng, triển khai)

Đóng góp





Fork kho lưu trữ và gửi pull request.



Báo lỗi hoặc đề xuất qua Issues.

Giấy phép

[MIT License] - Xem tệp LICENSE để biết chi tiết.
