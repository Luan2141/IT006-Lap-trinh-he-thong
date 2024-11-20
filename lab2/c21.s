.section .data

output: 
	.string "hello\n"
length = . - output # biến chứa độ dài chuỗi

.section .bss 
		.lcomm test, 2
.section .text

.globl _start
_start:

	addl $48, %esi #chuyển kiểu dữ liệu từ dạng số nguyên sang mã ascii của chính số đó
	add $length, %esi
	sub $1, %esi # trừ đi 1 do bỏ đi kí tự cuối là "\n"
	movl %esi , (test) # chuyển giá trị của thanh ghi sang ô nhớ test
	#in kết quả ra màn hình 
	movl $4, %eax
	movl $1, %ebx
	movl $test, %ecx
	movl $1, %edx	
	int $0x80
#kết thúc chương trình
	movl $1, %eax
	xorl %ebx, %ebx  
	int $0x80
	
	
	