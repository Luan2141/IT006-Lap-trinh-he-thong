.section .data

input:
        .string "Nhap SBD (6 ki tu) : "
output:
        .string "SBD: "
result:
        .string "52"

.section .bss
                .lcomm one, 2
		.lcomm two, 5
		
.section .text

.globl _start
_start:
# in biến input ra màn hình
        movl $4, %eax
        movl $1, %ebx
        movl $input, %ecx
        movl $21, %edx
        int $0x80
# Lưu 2 kí tự đầu tiên của chuỗi nhập vào
        movl $3, %eax
        movl $0, %ebx
        movl $one, %ecx
        movl $2, %edx
        int $0x80
# Lưu các kí tự còn lại của chuỗi nhập vào
	 movl $3, %eax
        movl $0, %ebx
        movl $two, %ecx
        movl $5, %edx
        int $0x80


#in ra biến ouput

       movl $4, %eax
	movl $1, %ebx
	movl $output, %ecx
	movl $5, %edx
	int $0x80
#in ra 2 kí tự đầu tiên của chuỗi nhập vào
        movl $4, %eax
        movl $1, %ebx
        movl $one, %ecx
        movl $2, %edx
        int $0x80
#in ra biến result	
	 movl $4, %eax
        movl $1, %ebx
        movl $result, %ecx
        movl $2, %edx
        int $0x80
#in ra các kí tự còn lại của chuỗi nhập vào

	 movl $4, %eax
        movl $1, %ebx
        movl $two, %ecx
        movl $5, %edx
        int $0x80
#Kết thúc chương trình
        movl $1, %eax
        xorl %ebx , %ebx
        int $0x80