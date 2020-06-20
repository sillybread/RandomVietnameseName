#include-once
#include "..\UDF\Unicode2TCVN.au3"

Func GeneratorRandomName($iGender = 0, $iMidNamePercent = 66, $iMaxLength = 255, $iMinLength = 0)
	Local $aFirstNameMale = ["Bạch","Bắc","Bằng","Bửu","Canh","Cao","Chinh","Chiến","Chiểu","Chuyên","Chính","Chương","Chấn","Cung","Công","Cơ","Cường","Cảnh","Cần","Cẩn","Danh","Doanh","Du","Duy","Duyệt","Duệ","Dân","Dũng","Dụng","Gia","Giáp","Hiếu","Hiển","Hiệp","Hoàng","Hoán","Hoạt","Huy","Huấn","Huỳnh","Hành","Hào","Hãn","Hùng","Hưng","Hội","Hữu","Kha","Khang","Khiêm","Khoa","Khương","Khải","Kiên","Kiệt","Kỳ","Lai","Liêm","Long","Luân","Luận","Luật","Lân","Lĩnh","Lương","Lập","Lễ","Lộc","Lợi","Miên","Mạnh","Nam","Nghiêm","Nghiệp","Nghĩa","Nghị","Ngôn","Ngạn","Nhân","Nhất","Nhật","Ninh","Phi","Phát","Phú","Quang","Quyết","Quyền","Quý","Quảng","Quốc","Sang","Sinh","Siêu","Sáng","Sơn","Sỹ","Thiện","Thuyết","Thuận","Thành","Thái","Thông","Thạch","Thắng","Thế","Thịnh","Thọ","Thống","Thụy","Tiến","Toàn","Toản","Triết","Triều","Triệu","Trung","Trác","Tráng","Trình","Trí","Trương","Trường","Trọng","Trụ","Tuấn","Tài","Tân","Tín","Tùng","Tấn","Từ","Uy","Vinh","Viên","Việt","Võ","Văn","Vĩ","Vĩnh","Vũ","Vương","Vượng","Vịnh","Ðiền","Ðoàn","Ðình","Ðôn","Ðông","Ðăng","Ðại","Ðạo","Ðạt","Ðịnh","Ðức","Đông","Đại","Đức","Ẩn"]
	Local $aFirstNameMiddle = ["An","Anh","Bình","Bảo","Ca","Châu","Cương","Di","Diệu","Dương","Giang","Hiền","Hoài","Hoàn","Hà","Hòa","Hạnh","Hải","Hảo","Hậu","Hồng","Hợp","Khanh","Khánh","Khôi","Kim","Linh","Lâm","Lý","Minh","Mỹ","Nguyên","Nhiên","Phong","Phúc","Phương","Phước","Quân","Quỳnh","San","Thanh","Thiên","Tuệ","Tâm","Tú","Tường","Ân"]
	Local $aFirstNameFemale = ["Bích","Băng","Chi","Chiêu","Cúc","Cầm","Dao","Diễm","Diệp","Dung","Duyên","Giao","Hoa","Hoan","Huyền","Huệ","Hân","Hương","Hường","Hạ","Hằng","Khai","Khuyên","Khuê","Kiều","Lam","Lan","Liên","Liễu","Loan","Ly","Lệ","Mai","Mi","My","Mẫn","Nga","Nghi","Nguyệt","Ngà","Ngân","Nhi","Nhung","Nhàn","Nhã","Như","Nương","Nữ","Oanh","Phượng","Quyên","Quế","Sa","Sương","Thi","Thi","Thoa","Thu","Thùy","Thúy","Thơ","Thư","Thương","Thảo","Thắm","Thục","Thủy","Tiên","Trang","Trinh","Trà","Trâm","Trân","Trúc","Trầm","Tuyến","Tuyết","Tuyền","Uyên","Uyển","Vi","Vy","Vân","Xuyến","Xuân","Yên","Yến","Ái","Ánh","Ðoan","Ðài","Ðào","Ðường","Ý","Đan","Ðiệp","Phụng","Ngọc"]
	Local $aMiddleNameMale = ["Bá","Bách","Bình","Cao","Chiến","Chí","Chính","Chấn","Chế","Công","Cường","Cảnh","Danh","Dũng","Dương","Hiểu","Hiệp","Huy","Hào","Hòa","Hùng","Hưng","Hạo","Hồ","Hữu","Khôi","Khải","Khắc","Khởi","Kiên","Kiến","Long","Lương","Lạc","Lập","Mạnh","Nam","Nghĩa","Nhân","Nhất","Phú","Phúc","Phước","Quang","Quyết","Quý","Quảng","Quốc","Sỹ","Thiếu","Thiệu","Thuận","Thành","Thăng","Thường","Thắng","Thế","Thịnh","Thống","Thụ","Tiến","Tiểu","Toàn","Triệu","Trung","Trí","Trường","Trọng","Tuấn","Tài","Tân","Tôn","Tạ","Tấn","Tất","Từ","Uy","Vinh","Viết","Viễn","Văn","Vĩnh","Vương","Vạn","Ân","Ðình","Ðăng","Ðại","Ðạt","Ðắc","Ðức","Đình","Đăng","Đức"]
	Local $aMiddleNameMiddle = ["An","Anh","Bảo","Chiêu","Duy","Gia","Giang","Hiếu","Hoài","Hoàng","Hải","Hồng","Khánh","Kim","Lam","Liên","Lâm","Minh","Nguyên","Ngọc","Như","Nhật","Phi","Phong","Phương","Phụng","Sơn","Thanh","Thiên","Thiện","Thái","Thạch","Thụy","Triều","Tâm","Tùng","Tường","Việt","Vân","Vũ","Xuân","Yên","Ðinh","Ðông"]
	Local $aMiddleNameFemale = ["Bích","Băng","Bạch","Bội","Chi","Cẩm","Diễm","Diệp","Diệu","Duyên","Dạ","Giáng","Hiền","Hoa","Hoàn","Huyền","Huệ","Hà","Hương","Hạ","Hạnh","Hảo","Khuê","Khúc","Khả","Kiết","Kiều","Kỳ","Lan","Linh","Loan","Ly","Lê","Lưu","Lệ","Mai","Mộng","Mỹ","Nghi","Nguyệt","Ngân","Nhã","Phượng","Quế","Quỳnh","San","Sương","Thi","Thu","Thy","Thùy","Thúy","Thư","Thương","Thảo","Thục","Thủy","Trang","Trà","Trâm","Trân","Trúc","Tuyết","Tuệ","Tú","Tịnh","Tố","Uyên","Uyển","Vi","Vy","Yến","Ái","Ánh","Ðan","Ðoan","Ðài","Ý","Đan"]
	Local $aLastName = ["An","Bành","Bùi","Bạch","Cao","Chu","Chung","Châu","Chử","Diệp","Doãn","Dương","Dữu","Giang","Hoàng","Huỳnh","Hà","Hàn","Hồ","Kim","Kiều","La","Liễu","Lâm","Lê","Lý","Lưu","Lương","Lạc","Lục","Mai","Mã","Mạc","Mạch","Nghiêm","Nguyễn","Ngô","Ngư","Phan","Phí","Phó","Phùng","Phạm","Quang","Quyền","Quách","Sái","Thi","Thái","Thân","Thạch","Thảo","Thủy","Tiêu","Trang","Triệu","Trương","Trầm","Trần","Trịnh","Tô","Tôn","Tạ","Tống","Uất","Võ","Văn","Vĩnh","Vũ","Vưu","Vương","Ân","Úc","Đinh","Đoàn","Đàm","Đào","Đặng","Đỗ"]
	Local $aPrefix = ["I~I", "zX~Xz", "oX~Xo", "II~II", "Xz~zX", "zzz~zzz", "i~i", "z~z", "~ss"]

	Local $sResult = ""
	Local $IsHaveMidName = (Random(0,100,1) > $iMidNamePercent)

	$iGender = ($iGender=0 And Random(0,100,1)<25)?1:-1
	Local $iMiddleNameKind = Random(0,100,1)>50;True => Middle / False => Edge
	Local $iFirstNameKind = ($iMiddleNameKind)?Not $iMiddleNameKind:Random(0,100,1)>50;True => Middle / False => Edge

	Do
		$sResult = ""
		$sResult &= GetRandomElement($aLastName);Get last name
		If $IsHaveMidName Then
			If $iGender = 1 Then
				$sResult &= ($iMiddleNameKind)?GetRandomElement($aMiddleNameMiddle):GetRandomElement($aMiddleNameMale)
				$sResult &= ($iFirstNameKind)?GetRandomElement($aFirstNameMiddle):GetRandomElement($aFirstNameMale)
			ElseIf $iGender = -1 Then
				$sResult &= ($iMiddleNameKind)?GetRandomElement($aMiddleNameMiddle):GetRandomElement($aMiddleNameFemale)
				$sResult &= ($iFirstNameKind)?GetRandomElement($aFirstNameMiddle):GetRandomElement($aFirstNameFemale)
			EndIf
		Else
			$sResult &= ($iGender=1)?GetRandomElement($aFirstNameMale):GetRandomElement($aFirstNameFemale)
		EndIf
		;ConsoleWrite($IsHaveMidName)
		$sResult = StringReplace(GetRandomElement($aPrefix), "~", $sResult)
		$sResult = U2T($sResult)
	Until StringLen($sResult)<$iMaxLength And StringLen($sResult)>$iMinLength
	Local $aReturn[3] = [StringLen($sResult), $sResult, (($iGender=1)?Random(0,1,1):Random(2,3,1))]
	Return $aReturn
EndFunc

Func GetRandomElement($aInput)
	Return $aInput[Random(0,UBound($aInput)-1,1)]
EndFunc