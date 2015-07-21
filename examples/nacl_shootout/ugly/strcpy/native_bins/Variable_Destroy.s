  .text
  .globl Variable_Destroy
  .type Variable_Destroy, @function

#! file-offset 0x5c0f
#! rip-offset  0x405c0f
#! capacity    45 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.Variable_Destroy:      #        0x405c0f  0      OPC=0     
  pushq %rbx            #  1     0x405c0f  1      OPC=1861  
  movq %rdi, %rbx       #  2     0x405c10  3      OPC=1162  
  movq 0x8(%rdi), %rdi  #  3     0x405c13  4      OPC=1161  
  testq %rdi, %rdi      #  4     0x405c17  3      OPC=2438  
  je .L_405c32          #  5     0x405c1a  6      OPC=893   
  nop                   #  6     0x405c20  1      OPC=1343  
  nop                   #  7     0x405c21  1      OPC=1343  
  callq .List_Destroy   #  8     0x405c22  5      OPC=260   
  movq $0x0, 0x8(%rbx)  #  9     0x405c27  8      OPC=1137  
  movq %rbx, %rdi       #  10    0x405c2f  3      OPC=1162  
  popq %rbx             #  11    0x405c32  1      OPC=1694  
  jmpq .free_plt        #  12    0x405c33  5      OPC=930   
.L_405c32:              #        0x405c38  0      OPC=0     
  movl $0x408c18, %edi  #  13    0x405c38  5      OPC=1154  
  callq .Error          #  14    0x405c3d  5      OPC=260   
                                                            
.size Variable_Destroy, .-Variable_Destroy

