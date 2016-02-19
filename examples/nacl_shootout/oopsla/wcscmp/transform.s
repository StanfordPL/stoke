  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    33 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.wcscmp:                 #        0     0      OPC=<label>        
  jmpq .L_10             #  1     0     2      OPC=jmpq_label     
  nop                    #  2     0x2   1      OPC=nop            
  nop                    #  3     0x3   1      OPC=nop            
  nop                    #  4     0x4   1      OPC=nop            
  nop                    #  5     0x5   1      OPC=nop            
  nop                    #  6     0x6   1      OPC=nop            
  nop                    #  7     0x7   1      OPC=nop            
.L_8:                    #        0x8   0      OPC=<label>        
  addq $0x4, %rdi        #  8     0x8   4      OPC=addq_r64_imm8  
  testl %eax, %eax       #  9     0xc   2      OPC=testl_r32_r32  
  je .L_1f               #  10    0xe   2      OPC=je_label       
.L_10:                   #        0x10  0      OPC=<label>        
  addq $0x4, %rsi        #  11    0x10  4      OPC=addq_r64_imm8  
  leal (%rdi), %r8d
  movl (%r15, %r8), %eax      #  12    0x14  2      OPC=movl_r32_m32   
  leal -0x4(%rsi), %r8d
  movl (%r15, %r8), %edx  #  13    0x16  3      OPC=movl_r32_m32   
  cmpl %edx, %eax        #  14    0x19  2      OPC=cmpl_r32_r32   
  je .L_8                #  15    0x1b  2      OPC=je_label       
  subl %edx, %eax        #  16    0x1d  2      OPC=subl_r32_r32   
.L_1f:                   #        0x1f  0      OPC=<label>        
  retq                   #  17    0x1f  1      OPC=retq           
  nop                    #  18    0x20  1      OPC=nop            
                                                                  
.size wcscmp, .-wcscmp

