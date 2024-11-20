.section .data
output: 
.String "Count 4x: "
output_len = . -output
input: 
.String "Enter a number (2 digits): "
input_len = . -input
newfeed:
.String "\n"
.section .bss
	.lcomm ans,4
	.lcomm ins,4
.section .text
	.globl _start
_start:
	movl $0, %edi	#dem=0
	movl $0, %esi   #i=0
	Loop:
		#code in chuoi hien ra khi nhap vao
		movl $4, %eax
		movl $1, %ebx
		movl $input, %ecx
		movl $input_len, %edx 
		int $0x80
		
		#nhap vao so
		movl $3, %eax
		movl $0, %ebx
		movl $ins, %ecx
		movl $4, %edx
		int $0x80
		movl $ins, %eax
		movb 1(%eax), %bl #y
		subl $48, %ebx #chuyen tu ki tu sang so nguyen
		movb (%eax), %cl #x
		subl $48, %ecx #chuyen tu ki tu sang so nguyen

		imul $10, %ecx #x*10
		addl %ecx,%ebx #x*10 + y 		
		andl $3, %ebx #Kiem tra chia het cho 4 hay khong
		cmpl $0, %ebx
		jne Skip
			incl %edi #dem++
		Skip:
		incl %esi #i++  
		cmpl $5,%esi #run loop 5 times
	jne Loop

	addl $48, %edi
	movl %edi, ans
	
	#code in chuoi hien ra khi nhap vao
	movl $4, %eax
	movl $1, %ebx
	movl $output, %ecx
	movl $output_len, %edx 
	int $0x80
	
	#code in chuoi dap an output tinh duoc qua bien dem
	movl $4, %eax
	movl $1, %ebx
	movl $ans, %ecx
	movl $4, %edx 
	int $0x80
	
	#in ki tu newline
	movl $4, %eax
	movl $1, %ebx
	movl $newfeed, %ecx
	movl $1, %edx 
	int $0x80

	#ket thuc chuong trinh
		
	movl $1, %eax # system call number (sys_exit)
	int $0x80 # call kernel

	
		

		
