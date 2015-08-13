  .text
  .globl _Unwind_FindEnclosingFunction
  .type _Unwind_FindEnclosingFunction, @function

#! file-offset 0x149e60
#! rip-offset  0x109e60
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode               
._Unwind_FindEnclosingFunction:  #        0x109e60  0      OPC=<label>          
  subl $0x18, %esp               #  1     0x109e60  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                #  2     0x109e63  3      OPC=addq_r64_r64     
  subl $0x1, %edi                #  3     0x109e66  3      OPC=subl_r32_imm8    
  movl %esp, %esi                #  4     0x109e69  2      OPC=movl_r32_r32     
  nop                            #  5     0x109e6b  1      OPC=nop              
  nop                            #  6     0x109e6c  1      OPC=nop              
  nop                            #  7     0x109e6d  1      OPC=nop              
  nop                            #  8     0x109e6e  1      OPC=nop              
  nop                            #  9     0x109e6f  1      OPC=nop              
  nop                            #  10    0x109e70  1      OPC=nop              
  nop                            #  11    0x109e71  1      OPC=nop              
  nop                            #  12    0x109e72  1      OPC=nop              
  nop                            #  13    0x109e73  1      OPC=nop              
  nop                            #  14    0x109e74  1      OPC=nop              
  nop                            #  15    0x109e75  1      OPC=nop              
  nop                            #  16    0x109e76  1      OPC=nop              
  nop                            #  17    0x109e77  1      OPC=nop              
  nop                            #  18    0x109e78  1      OPC=nop              
  nop                            #  19    0x109e79  1      OPC=nop              
  nop                            #  20    0x109e7a  1      OPC=nop              
  callq ._Unwind_Find_FDE        #  21    0x109e7b  5      OPC=callq_label      
  movl 0x8(%rsp), %ecx           #  22    0x109e80  4      OPC=movl_r32_m32     
  movl %eax, %edx                #  23    0x109e84  2      OPC=movl_r32_r32     
  xorl %eax, %eax                #  24    0x109e86  2      OPC=xorl_r32_r32     
  testl %edx, %edx               #  25    0x109e88  2      OPC=testl_r32_r32    
  cmovneq %rcx, %rax             #  26    0x109e8a  4      OPC=cmovneq_r64_r64  
  addl $0x18, %esp               #  27    0x109e8e  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                #  28    0x109e91  3      OPC=addq_r64_r64     
  popq %r11                      #  29    0x109e94  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  30    0x109e96  7      OPC=andl_r32_imm32   
  nop                            #  31    0x109e9d  1      OPC=nop              
  nop                            #  32    0x109e9e  1      OPC=nop              
  nop                            #  33    0x109e9f  1      OPC=nop              
  nop                            #  34    0x109ea0  1      OPC=nop              
  addq %r15, %r11                #  35    0x109ea1  3      OPC=addq_r64_r64     
  jmpq %r11                      #  36    0x109ea4  3      OPC=jmpq_r64         
                                                                                
.size _Unwind_FindEnclosingFunction, .-_Unwind_FindEnclosingFunction

