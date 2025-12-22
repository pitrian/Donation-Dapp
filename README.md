# Donation-Dapp
🔗 Blockchain Donation DApp

Ứng dụng quản lý quyên góp minh bạch bằng Blockchain (Ethereum)

📌 Giới thiệu dự án

Blockchain Donation DApp là một ứng dụng phi tập trung (Decentralized Application – DApp) được xây dựng trên nền tảng Ethereum Blockchain, nhằm mục tiêu:

Cho phép người dùng quyên góp ETH một cách minh bạch

Mọi giao dịch được ghi on-chain, không thể chỉnh sửa

Người dùng có thể xem lịch sử quyên góp công khai

Tăng tính minh bạch – tin cậy – chống gian lận cho các quỹ từ thiện

Dự án được thực hiện phục vụ đồ án cuối kỳ môn Blockchain và Ứng dụng.

🧱 Kiến trúc hệ thống
User (Browser)
   |
   | MetaMask + ethers.js
   |
Frontend (React)
   |
   | Call Smart Contract
   |
Smart Contract (Solidity)
   |
   | Sepolia Testnet
   |
Ethereum Blockchain

🧑‍🤝‍🧑 Phân công thành viên
Thành viên	Vai trò	Nhiệm vụ
Thành viên 1	Leader / DevOps / Architect	Setup repo, Hardhat, deploy contract, quản lý merge
Thành viên 2	Smart Contract Developer	Viết Solidity, tối ưu gas, unit test
Thành viên 3	Frontend Developer	Thiết kế giao diện React, UX/UI
Thành viên 4	Web3 Integration	Kết nối MetaMask, ethers.js, gọi contract
📂 Cấu trúc thư mục dự án
donation-dapp/
│
├─ contracts/              # Smart Contract (Solidity)
│   └─ Donation.sol
│
├─ scripts/                # Script deploy
│   └─ deploy.js
│
├─ test/                   # Unit Test (Hardhat)
│   └─ Donation.test.js
│
├─ frontend/               # React Frontend
│
├─ hardhat.config.js
├─ package.json
├─ .env                    # Biến môi trường (KHÔNG push)
└─ README.md

⚙️ Công nghệ sử dụng

Blockchain: Ethereum (Sepolia Testnet)

Smart Contract: Solidity

Development Framework: Hardhat

Frontend: ReactJS

Web3 Library: ethers.js

Wallet: MetaMask

Test: Mocha / Chai

🚀 Hướng dẫn cài đặt & chạy dự án
1️⃣ Yêu cầu môi trường

Node.js >= 18

MetaMask extension

Ví Ethereum có ETH Sepolia (testnet)

2️⃣ Clone project
git clone <REPO_URL>
cd donation-dapp

3️⃣ Cài đặt Hardhat
npm install

4️⃣ Cấu hình biến môi trường

Tạo file .env tại thư mục gốc:

SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/YOUR_KEY
PRIVATE_KEY=0xYOUR_PRIVATE_KEY


⚠️ Không commit file .env

5️⃣ Compile Smart Contract
npx hardhat compile

6️⃣ Chạy Unit Test
npx hardhat test

7️⃣ Deploy Smart Contract lên Sepolia
npx hardhat run scripts/deploy.js --network sepolia


Sau khi deploy thành công, bạn sẽ nhận được:

Donation deployed to: 0xABC...

📄 Thông tin Smart Contract (Demo)

Network: Sepolia Testnet

Contract Address: 0xYOUR_CONTRACT_ADDRESS

Explorer: https://sepolia.etherscan.io

💻 Chạy Frontend
cd frontend
npm install
npm start


Truy cập:

http://localhost:3000

🔄 Luồng hoạt động của ứng dụng

Người dùng mở website

Kết nối ví MetaMask

Nhập số ETH muốn quyên góp + lời nhắn

Xác nhận giao dịch trên MetaMask

Giao dịch được ghi lên blockchain

Lịch sử quyên góp hiển thị công khai

🧪 Tính năng chính

Kết nối ví MetaMask

Quyên góp ETH

Hiển thị danh sách người ủng hộ

Lưu lịch sử quyên góp on-chain

Quản lý rút tiền (owner)

🔮 Hướng phát triển

Hỗ trợ nhiều quỹ quyên góp

Lưu metadata IPFS

Biểu đồ thống kê số tiền quyên góp

Phân quyền quản trị

Deploy lên Mainnet

📚 Tài liệu tham khảo

https://ethereum.org

https://hardhat.org

https://docs.ethers.org

https://docs.metamask.io

👨‍🎓 Thông tin đồ án

Môn học: Blockchain và Ứng dụng

Hình thức: Nhóm

Mục tiêu: Xây dựng DApp thực tế, minh bạch, có khả năng mở rộng
