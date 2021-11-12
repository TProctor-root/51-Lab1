.globl main
.text
main:
	#Print Prompt
	addi $v0, $0, 4
	la $a0, prompt
	syscall
	
	#Enter String
	li $v0, 8
	la  $a0, str
	addi $a1, $0, 5
	syscall

	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall	
	 	
	#Print String
	addi $v0, $0, 4
	la $a0, str
	syscall
	
	#Load String
	lw $t1, str
	
	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall
	
	#Print the value in the register as an integer
	move $a0, $t1
	li $v0, 1
	syscall

	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall
	
	#Print the value in the register in binary
	move $a0, $t1
	li $v0, 35
	syscall
	
	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall
	
	#Print the value in the register in hexadecimal
	move $a0, $t1
	li $v0, 34
	syscall

	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall
	
	#Add 1 to value and store value
	addi $t2, $t1, 1
	sw $t2, str
	
	#Print string
	addi $v0, $0, 4
	la $a0, str
	syscall
	
	#Print endl
	addi $v0, $0, 4
	la $a0, endl
	syscall
	
	
	#Place the value of the 2nd character in str into a register
	la $a0, str
	lb $t2, 1($a0)
	addi $s6, $0, 2
	div $t2, $s6
	mfhi $t6
	addi $s0, $0, 0
	
	#Even or Odd
	beq $t6, $s0, TRUE
	la $a0, odd
	j DONE
	
	TRUE: la $a0, even
	DONE:
	syscall
	
	#Terminate the program
	li $v0, 10
	syscall

.data
prompt: .asciiz "Enter 4 characters: "
endl: .asciiz "\n"
.align 2
str: .asciiz "????"
even: .asciiz "EVEN"
odd: .asciiz "ODD" 


