📦 Donation DApp – Ứng dụng Quyên Góp Minh Bạch trên Blockchain
📌 Giới thiệu đề tài

Donation DApp là một ứng dụng phi tập trung (Decentralized Application – DApp) được xây dựng trên nền tảng Blockchain Ethereum, cho phép người dùng thực hiện quyên góp tiền một cách minh bạch.
Toàn bộ giao dịch quyên góp và rút tiền đều được ghi lại vĩnh viễn trên blockchain, đảm bảo tính công khai, minh bạch và không thể chỉnh sửa.

🎯 Mục tiêu của đề tài

Xây dựng một Smart Contract quản lý quyên góp

Đảm bảo mọi giao dịch:

Không thể sửa đổi

Có thể kiểm chứng công khai

Giúp người dùng tin tưởng vào quá trình sử dụng tiền quyên góp

Áp dụng kiến thức về:

Blockchain

Smart Contract

Ethereum

Web3

🧠 Các khái niệm chính sử dụng trong đồ án
🔹 Blockchain

Blockchain là một sổ cái phân tán, nơi dữ liệu được lưu trữ theo từng khối (block) và liên kết với nhau bằng mật mã, đảm bảo dữ liệu không thể bị thay đổi.

🔹 Ethereum

Ethereum là một nền tảng blockchain hỗ trợ Smart Contract, cho phép lập trình các logic tự động như quyên góp, rút tiền.

🔹 Smart Contract

Smart Contract là chương trình chạy trên blockchain Ethereum, được viết bằng ngôn ngữ Solidity, tự động thực thi mà không cần bên thứ ba.

🔹 Solidity

Solidity là ngôn ngữ lập trình dùng để viết Smart Contract trên Ethereum.

🔹 Testnet

Testnet là mạng blockchain dùng để thử nghiệm, không sử dụng tiền thật.

🔹 Sepolia

Sepolia là Ethereum Testnet được khuyến nghị sử dụng hiện nay, dùng để:

Deploy Smart Contract

Test các chức năng trước khi đưa lên mainnet

🔹 ETH Sepolia

ETH Sepolia là ETH dùng trên mạng Sepolia, không có giá trị thật, dùng để trả phí gas khi deploy và gọi contract.

🔹 Gas Fee

Gas Fee là phí giao dịch cần trả để thực hiện các hành động trên blockchain như deploy contract, gọi hàm donate, withdraw.

🏗️ Kiến trúc hệ thống
Người dùng
   │
   ▼
MetaMask (Ví Ethereum)
   │
   ▼
Frontend (sẽ phát triển)
   │
   ▼
ethers.js
   │
   ▼
Smart Contract (Solidity)
   │
   ▼
Ethereum Blockchain (Sepolia Testnet)

📁 Cấu trúc thư mục dự án
Donation-Dapp/
│
├── contracts/        # Smart Contract Solidity
├── scripts/          # Script deploy contract
├── test/             # Unit test cho Smart Contract
├── artifacts/        # File build (Hardhat tạo)
├── cache/            # Cache Hardhat
├── hardhat.config.js # Cấu hình Hardhat
├── package.json      # Thông tin project & dependencies
├── .gitignore        # File ignore (bao gồm .env)
├── .env              # Biến môi trường (KHÔNG push Git)
└── README.md         # Tài liệu mô tả dự án

🧑‍💻 Các bước thực hiện đồ án (từ đầu đến hiện tại)
✅ Bước 1: Khởi tạo project

Khởi tạo Node.js project

Cài đặt Hardhat

Tạo cấu trúc dự án

npm init -y
npm install --save-dev hardhat
npx hardhat

✅ Bước 2: Viết Smart Contract

Viết contract quyên góp bằng Solidity

Các chức năng chính:

donate(): nhận tiền quyên góp

withdraw(): chủ quỹ rút tiền

Ghi nhận lịch sử giao dịch

Emit event cho donate và withdraw

✅ Bước 3: Viết Unit Test

Sử dụng Mocha & Chai

Kiểm tra:

Quyên góp thành công

Số dư được cập nhật

Chỉ owner được rút tiền

Event được emit đúng

npx hardhat test

✅ Bước 4: Cấu hình Hardhat & môi trường

Cấu hình mạng Sepolia

Sử dụng Infura RPC

Lưu thông tin nhạy cảm trong .env

Ví dụ .env:

SEPOLIA_RPC_URL=...
PRIVATE_KEY=...

✅ Bước 5: Quản lý mã nguồn bằng Git

Khởi tạo Git repository

Cấu hình .gitignore để bỏ qua .env

Push source code lên GitHub

⏸️ Trạng thái hiện tại của dự án

👉 Dự án hiện đang dừng tại bước: Xin ETH Sepolia Testnet

Hạng mục	Trạng thái
Smart Contract	✅ Hoàn thành
Unit Test	✅ Pass
Hardhat config	✅ Hoàn chỉnh
GitHub repository	✅ Đã push
ETH Sepolia	⏸️ Chưa có
Deploy contract	⏸️ Chờ ETH
▶️ Các bước tiếp theo (khi tiếp tục làm)
🔜 Bước 6: Xin ETH Sepolia

Sử dụng faucet:

Chainlink Faucet

QuickNode Faucet

POW Faucet

Mục đích: có ETH để trả gas fee khi deploy contract.

🔜 Bước 7: Deploy Smart Contract lên Sepolia
npx hardhat run scripts/deploy.js --network sepolia


Kết quả mong đợi:

Donation deployed to: 0x...

🔜 Bước 8: Kiểm tra trên Etherscan

Truy cập Sepolia Etherscan

Xem lịch sử deploy & giao dịch

🔜 Bước 9: Tích hợp Frontend (mở rộng)

Dùng React + ethers.js

Kết nối MetaMask

Gọi hàm donate / withdraw

Hiển thị lịch sử quyên góp
