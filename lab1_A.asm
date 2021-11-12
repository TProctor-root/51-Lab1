.globl main
.text
main:
	#Print Prompt
	addi $v0, $0, 4
	la $a0, prompt
	syscall
	
	#Enter Number
	li $v0, 5
	syscall
	
	#Math
	lw $t0, num
	add $t1, $t0, $v0
	
	#Print Total
	li $v0, 1
	move $a0, $t1 
	syscall
	
	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall	

	#Making it negative
	sub $t2, $t1, $t1
	sub $t3, $t2, $t1

	#Store Negative
	sw $t3, value
	lw $s0, value
	
	#Print Total
	li $v0, 1
	move $a0, $s0
	syscall	

	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall	
		
	#Print abcd and weird symbols
	addi $v0, $0, 4
	la $a0, abcd
	syscall	
	
	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall	
	
	#Shift Value by 8 Bits Left
	sll $s1, $s0, 8
	
	#Print Value
	li $v0, 1
	move $a0, $s1
	syscall	
	
	#Storing new Value
	sw $s1, value
	
	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall	
	
	#Print abcd again
	addi $v0, $0, 4
	la $a0, abcd
	syscall	
	
	#Terminate the program
	li $v0, 10
	syscall

.data
num: .word 2010 # an integer
prompt: .asciiz "Enter an integer: "  # a string
endl: .asciiz "\n"   # a string
.align 2
abcd: .ascii "ABCD"  # 4-character array
value: .word -100    # an integer
moreabcs: .asciiz "EFGHIJK"  # a string