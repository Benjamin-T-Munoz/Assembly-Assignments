	.data 
	array:	    .word 5,5,3,6,10,10,7,1,5,5
	
	
	.align		2
maxmsg:	.asciiz 	"\n\n The Maximum Value is :"
minmsg:	.asciiz 	"\n\n The Minimum Value is :"
avgmsg:	.asciiz 	"\n\n The Average Value is :"
	.text
	
main: 		addiu $sp,$sp, -64 # allocating space on the stack
		
		addi $s0,$zero,10
		la $t0, array # The Arrays Base Address
		sw $t0,0($sp)
		sw $s0,4($sp)
		
		jal arraysearch
		
		



arraysearch: 
		        sw $ra,8($sp)
		        
			lw $t0,0($sp)
			lw $s0,4($sp)
			lw $t1,($t0)
			
			li $s1,0 #loop counter
			li $s2,0 # Max location
			li $s3,0 # Max Value
			li $s4,0 # Min location
			li $s5,100 # Min Value
			li $s6,0 # Average Value
			
			j searchloop
			
searchloop:		
			sw $ra,($t7)
			beq $s1,$s0, endloop
			bgt $s5,$t1 less_than
			b
			lw $t1,4($t1)
			j search loop

less_than:		add $s5,$t7,$0
			add $s4,$s1,$0 
			jal $ra
			
Greater_than:		add $s5,$t7,$0
			add $s4,$s1,$0 
			jal $ra



endloop:

	
