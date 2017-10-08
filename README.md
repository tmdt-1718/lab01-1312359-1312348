# BT-TMDT-1 - *CubeBlog*

**CubeBlog** là một bài tập môn TMDT. Ứng dụng cho phép người dùng gửi tin nhắn (email) cho người dùng khác.

Thành viên:
* [x] **1312359** Đào Chí Minh (1312359)
* [x] **1312348** Lư Hán Luân (1312348)

URL: **https://ec17-lab1.herokuapp.com/**

## Yêu cầu

Sinh viên check vào các mục bên dưới và ghi mã sinh viên đã làm vào chức năng theo mẫu. Mục nào ko có MSSV là tính điểm theo nhóm. Cần sắp xếp các chức năng bên dưới theo thứ tự MSSV đã thực hiện.

Yêu cầu **GIT**:
* [ ] Sử dụng GIT theo [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows#feature-branch-workflow).

Yêu cầu **bắt buộc**
* [ ] Thiết kế trang web theo responsive với bootstrap với header (navigation bar, logo), left menu, footer và content. (**MSSV**)
* [ ] Navigation bar sẽ ẩn đi với kích thước màn hình nhỏ hơn 992px và có nút nhấn để hiển thị navigation bar. (**MSSV**)
* [ ] Left menu sẽ ẩn đi khi kích thước màn hình nhỏ hơn 768px và có nút nhấn để hiển thị lại left menu. (**MSSV**)
* [ ] Trang web được thiết kế sẽ bao gồm các trang: home, albums, about, blog. (**MSSV**)
* [ ] Khi nhấn vào trang albums sẽ thấy danh sách các album đã được lưu trữ trong hệ thống. Mỗi album bao gồm: ảnh cover, tên người tạo, tổng số view của các tấm ảnh trong album. (**MSSV**)
* [ ] Khi nhấn vào từng album sẽ sẽ chuyển sang danh sách các tấm ảnh trong album. Mỗi tấm ảnh hiển thị các thông tin: người đăng, số lượng view và tấm ảnh dưới dạng thumbnail. (**MSSV**)
* [ ] Vào trang about sẽ thấy thông tin nhóm: tên nhóm, danh sách thành viên (mã sinh viên, họ tên, ảnh đại diện) và bản đồ google map hiển thị địa chỉ liên lạc của nhóm. (**MSSV**)
* [ ] Vào trang blog sẽ thấy danh sách các bài viết, mỗi bài viết bao gồm: nội dung rút gọn, ảnh đại diện, người đăng và số view. (**MSSV**)
* [ ] Nhấn vào mỗi bài viết sẽ thấy chi tiết bài viết cùng đầy đủ nội dung của bài viết. (**MSSV**)
* [ ] Cho phép người dùng biết họ đang ở trang nào (sử dụng breadcrumb, highlight navigation bar,...). (**MSSV**)
* [ ] Cho phép người dùng đăng nhập, đăng xuất, đăng ký thông tin tài khoản. (**MSSV**)
* [ ] Cho phép người dùng đã đăng nhập đăng thêm bài viết mới. (**MSSV**)
* [ ] Sử dụng bcrypt hoặc devise để quản lý thông tin người dùng và băm mật khẩu. (**MSSV**)

Yêu cầu **không bắt buộc**:
* [ ] Có thể xem danh sách các comment của từng bài viết.  (**MSSV**)
* [ ] Cho phép người dùng đã đăng nhập comment cho bài viết. (**MSSV**)
* [ ] Quản lý thêm thông tin tag cho mỗi bài viết. Mỗi bài viết có thể bao gồm nhiều tag và mỗi tag có thể có nhiều bài viết. (**MSSV**)
* [ ] Cho phép người dùng đăng nhập bằng tài khoản facebook và lấy ảnh đại diện, email từ facebook. (**MSSV**)
* [ ] Cho phép người dùng tạo album và đăng ảnh mới vào album. (**MSSV**)
* [ ] Chỉ cho phép người tạo album được phép thêm, xóa ảnh mình đã đăng vào album. (**MSSV**)
* [ ] Chỉ cho phép người tạo bài viết được phép chỉnh sửa bài viết mình đã đăng. (**MSSV**)
* [ ] Cho phép người dùng layout bài viết bằng markdown. (**MSSV**)
* [ ] Gửi mail cho người dùng khi người dùng đã đăng nhập thành công. (**MSSV**)
* [ ] Gửi mail cho tác giả khi có người dùng comment vào bài viết của họ. (**MSSV**)

Liệt kê các **yêu cầu nâng cao** đã thực hiện:
* [ ] Chức năng 1
* [ ] Chức năng 2

## Demo

Link ảnh GIF demo ứng dụng:

![Video Walkthrough](demo.gif)

Tạo ảnh GIF với chương trình [LiceCap](http://www.cockos.com/licecap/).


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
