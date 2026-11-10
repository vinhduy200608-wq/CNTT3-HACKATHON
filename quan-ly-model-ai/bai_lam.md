# BÀI LÀM –(CHỦ ĐỀ QUẢN LÝ MODEL AI)

- **Mã đề:**1
- **Họ tên:** NGUYỄN CÔNG VINH
- **Lớp:**CNTT3 
- **Link repository:** https://github.com/vinhduy200608-wq/CNTT3-HACKATHON.git
- **Hệ điều hành (Windows/macOS):** macos

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
.quan-ly-model-ai
ls -la
mv /Users/macbook/Downloads/quan-ly-model-ai/tai_lieu_ban-giao.txt /Users/macbook/Downloads/quan-ly-model-ai/docs  
 mkdir backup
 cp data/chi-phi_model_thang11.xlsx backup
rm /Users/macbook/Downloads/quan-ly-model-ai/model_cache_01.tmp
cd logs&&ls -la&&cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
.				bai_lam.md
..				data
.DS_Store			docs
.env				evidence
.~Chi Phi Model Thang 11.xlsx	logs
backup				web

./backup:
.				chi_phi_model_thang 11.xlsx
..

./data:
.				.DS_Store
..				chi_phi_model_thang 11.xlsx

./docs:
.			..			tai_lieu_ban-giao.txt

./evidence:
.	..

./logs:
.		..		inference.log

./web:
.		app.js		index.html
..		images		style.css

./web/images:
.		..		logo-ai-hub.png

```

## 4.3. Lọc log vận hành Model AI

### a) Lệnh lọc các dòng ERROR

```shell
 grep "ERROR" logs/inference.log > logs/loi_model.txt 

```

### 2 dòng đầu tiên trong logs/loi_model.txt

```text
2026-11-10 08:27:45 ERROR POST /v1/chat/completions model=CLAUDE-35
2026-11-10 08:31:12 ERROR POST /v1/audio/transcriptions model=WHISPER-V3

```

### b) Lệnh đếm số dòng WARNING và kết quả

```shell
grep "WARNING" logs/inference.log | Wc -l


```

```text
       5

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
 Bash ./tong_hop.sh

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO VAN HANH MODEL AI ===
2026-11-10 08:09:18 WARNING POST /v1/embeddings model=LLAMA-2-OLD
2026-11-10 08:16:05 WARNING GET /v1/fine-tune/jobs-legacy
2026-11-10 08:38:29 WARNING GET /images/model-card-v1.png
2026-11-10 09:01:44 WARNING POST /v1/completions model=DAVINCI-002
2026-11-10 09:14:02 WARNING GET /v1/quota/expired-key
2026-11-10 08:27:45 ERROR POST /v1/chat/completions model=CLAUDE-35
2026-11-10 08:31:12 ERROR POST /v1/audio/transcriptions model=WHISPER-V3
2026-11-10 08:42:15 ERROR POST /v1/chat/completions model=DEEPSEEK-R1
2026-11-10 08:49:51 ERROR POST /v1/images/generations model=FLUX-PRO
2026-11-10 08:53:33 ERROR POST /v1/chat/completions model=CLAUDE-35
2026-11-10 09:05:27 ERROR POST /v1/embeddings model=MISTRAL-L


```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, hình ảnh (`![Alt](path)`), mô tả có **in đậm**, _in nghiêng_ và `inline code`, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | -------------------------- | --------------------------- | -------------- |
| 1   |     network                      |                lỗi hình ảnh            |      sửa dòng thứ 10          |
| 2   |          console                  |          lỗi bảng                  |       thêm bào dòng 18 ở cuói chữ AI         |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:**
- **Expected:**
- **Actual:**
- **Log:**

### Câu tìm kiếm Google

```text
site:stackoverflow.com "net::ERR_FILE_NOT_FOUND"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/chi_phi_model_thang_11.xlsx`, không cần ghi vào đây.
