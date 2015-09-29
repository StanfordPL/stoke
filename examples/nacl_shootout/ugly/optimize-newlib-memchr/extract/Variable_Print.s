  .text
  .globl Variable_Print
  .type Variable_Print, @function

#! file-offset 0x67140
#! rip-offset  0x27140
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.Variable_Print:                #        0x27140  0      OPC=<label>         
  pushq %r12                    #  1     0x27140  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x27142  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x27143  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x27146  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x27149  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  6     0x2714b  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r12d     #  7     0x2714d  4      OPC=movl_r32_m32    
  movl %ebx, %ebx               #  8     0x27151  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rbx,1), %edi  #  9     0x27153  5      OPC=movl_r32_m32    
  nop                           #  10    0x27158  1      OPC=nop             
  nop                           #  11    0x27159  1      OPC=nop             
  nop                           #  12    0x2715a  1      OPC=nop             
  callq .StrengthString         #  13    0x2715b  5      OPC=callq_label     
  movl %eax, %edx               #  14    0x27160  2      OPC=movl_r32_r32    
  leal 0x18(%rbx), %esi         #  15    0x27162  3      OPC=leal_r32_m16    
  movl %r12d, %ecx              #  16    0x27165  3      OPC=movl_r32_r32    
  movl $0x10020aae, %edi        #  17    0x27168  5      OPC=movl_r32_imm32  
  xorl %eax, %eax               #  18    0x2716d  2      OPC=xorl_r32_r32    
  addl $0x8, %esp               #  19    0x2716f  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  20    0x27172  3      OPC=addq_r64_r64    
  popq %rbx                     #  21    0x27175  1      OPC=popq_r64_1      
  popq %r12                     #  22    0x27176  2      OPC=popq_r64_1      
  jmpq .printf                  #  23    0x27178  5      OPC=jmpq_label_1    
  nop                           #  24    0x2717d  1      OPC=nop             
  nop                           #  25    0x2717e  1      OPC=nop             
  nop                           #  26    0x2717f  1      OPC=nop             
                                                                             
.size Variable_Print, .-Variable_Print

