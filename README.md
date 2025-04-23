🚀 CPU RISC-V 32-bit (Single Clock)
📖 Giới thiệu
Dự án này là một CPU 32-bit dựa trên tập lệnh RISC-V (RV32I) với kiến trúc single clock ⚡. CPU được thiết kế đơn giản, phục vụ mục đích học tập và nghiên cứu. Mã nguồn được viết bằng [Verilog/VHDL] và mô phỏng bằng Xilinx Vivado 🛠️.
✨ Tính năng

✅ Hỗ trợ tập lệnh cơ bản RV32I
⚡ Kiến trúc chu kỳ đơn (single clock cycle)
📚 Tối ưu cho mô phỏng và học tập
🚫 Không yêu cầu triển khai phần cứng

🛠️ Yêu cầu

🖥️ Công cụ: Xilinx Vivado (phiên bản [điền phiên bản, ví dụ: 2023.2])
💻 Ngôn ngữ: [Verilog/VHDL]
🖱️ Hệ điều hành: Windows/Linux

🔧 Cài đặt

📥 Sao chép kho lưu trữ:
git clone https://github.com/[your-username]/[your-repo].git
cd [your-repo]


🛠️ Cài Vivado:

Tải và cài đặt Vivado từ trang chính thức của Xilinx 🌐.
Đảm bảo Vivado được cấu hình đúng ✅.



🔧 Hướng dẫn sử dụng

🖥️ Mô phỏng:

Mở Vivado và chạy script mô phỏng:vivado -mode batch -source scripts/simulate.tcl
Kiểm tra kết quả trong giao diện Vivado hoặc tệp log 📊.


✅ Kiểm tra:

Sử dụng các testbench trong tests/ để xác minh chức năng CPU 🧪.
Testbench được viết bằng [Verilog/VHDL] và chạy trực tiếp trong Vivado.


📂 Cấu trúc thư mục

src/ 📜: Mã nguồn CPU ([Verilog/VHDL])
tests/ 🧪: Testbench mô phỏng


