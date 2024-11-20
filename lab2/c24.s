.section .data
#tạo các biến cần in ra màn hình
input:
	.string "Nhap nam sinh ( 4  ky tu ):  "
output1:
	.string "Da tot nghiep\n"
output2:
	.string "Chua tot nghiep\n"
output3:
	.string "Chua vao truong\n"
output4:
	.string "Tuoi: "
.section .bss
	.lcomm buffer, 5
	.lcomm result,5
	.lcomm age,5
.section .text

.globl _start
_start:
#in ra biến input
	movl $4, %eax
        movl $1, %ebx
        movl $input, %ecx
	movl $29, %edx
        int $0x80
# nhập năm sinh
	movl $3, %eax
	movl $0, %ebx
	movl $buffer, %ecx
	movl $4, %edx
	int $0x80
# chuyển đổi sang int 
	movl $buffer , %esi
	xorl %eax, %eax
convert_loop:
	lodsb
	test %al, %al
	jz end_loop
	sub $'0', %al
	movl result, %ebx
	imull $10, %ebx
	addl %eax, %ebx
	movl %ebx , result 
	jmp convert_loop

end_loop:
	movl result , %ebx
	movl $2024 , %ecx
	subl %ebx, %ecx
	movl %ecx, result
	cmpl $18, %ecx #kiểm tra giá trị dựa trên tuổi tính được bằng cách lấy 2024 - năm sinh
	jl return3
	cmpl $22, %ecx 
	jg return1
	movl $4 , %eax
	movl $1, %ebx
	movl $output2, %ecx
	movl $16, %edx
	int $0x80
	jmp out
#in ra các kết quả tương ứng với điều kiện đề bài
return3: 
	movl $4 , %eax
	movl $1, %ebx
	movl $output3, %ecx
	movl $16, %edx
	int $0x80
	jmp out
return1:
	movl $4 , %eax
	movl $1, %ebx
	movl $output1, %ecx
	movl $14, %edx
	int $0x80
	jmp out
out:
	movl $4 , %eax
	movl $1, %ebx
	movl $output4, %ecx
	movl $6, %edx
	int $0x80
#chuyển đổi từ int sang kí tự	
	movl result, %eax
	movl $age, %edi
	addl $4, %edi
	movl $10, %ecx
str_convert:
	xorl %edx, %edx
	divl %ecx
	addb $48, %dl
	decl %edi
	movb %dl, (%edi)
	test %eax, %eax
	jnz str_convert
#in ra tuổi 
			
	movl $4 , %eax
	movl $1, %ebx
	movl $age, %ecx
	movl $5, %edx
	int $0x80
#kết thúc chương trình
	movl $1, %eax
	xorl %ebx , %ebx
	int $0x80


	


	

	
				

























	