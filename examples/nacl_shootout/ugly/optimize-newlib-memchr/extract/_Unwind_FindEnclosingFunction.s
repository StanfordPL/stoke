  .text
  .globl _Unwind_FindEnclosingFunction
  .type _Unwind_FindEnclosingFunction, @function

#! file-offset 0x14a880
#! rip-offset  0x10a880
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode               
._Unwind_FindEnclosingFunction:  #        0x10a880  0      OPC=<label>          
  subl $0x18, %esp               #  1     0x10a880  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                #  2     0x10a883  3      OPC=addq_r64_r64     
  subl $0x1, %edi                #  3     0x10a886  3      OPC=subl_r32_imm8    
  movl %esp, %esi                #  4     0x10a889  2      OPC=movl_r32_r32     
  nop                            #  5     0x10a88b  1      OPC=nop              
  nop                            #  6     0x10a88c  1      OPC=nop              
  nop                            #  7     0x10a88d  1      OPC=nop              
  nop                            #  8     0x10a88e  1      OPC=nop              
  nop                            #  9     0x10a88f  1      OPC=nop              
  nop                            #  10    0x10a890  1      OPC=nop              
  nop                            #  11    0x10a891  1      OPC=nop              
  nop                            #  12    0x10a892  1      OPC=nop              
  nop                            #  13    0x10a893  1      OPC=nop              
  nop                            #  14    0x10a894  1      OPC=nop              
  nop                            #  15    0x10a895  1      OPC=nop              
  nop                            #  16    0x10a896  1      OPC=nop              
  nop                            #  17    0x10a897  1      OPC=nop              
  nop                            #  18    0x10a898  1      OPC=nop              
  nop                            #  19    0x10a899  1      OPC=nop              
  nop                            #  20    0x10a89a  1      OPC=nop              
  callq ._Unwind_Find_FDE        #  21    0x10a89b  5      OPC=callq_label      
  movl 0x8(%rsp), %ecx           #  22    0x10a8a0  4      OPC=movl_r32_m32     
  movl %eax, %edx                #  23    0x10a8a4  2      OPC=movl_r32_r32     
  xorl %eax, %eax                #  24    0x10a8a6  2      OPC=xorl_r32_r32     
  testl %edx, %edx               #  25    0x10a8a8  2      OPC=testl_r32_r32    
  cmovneq %rcx, %rax             #  26    0x10a8aa  4      OPC=cmovneq_r64_r64  
  addl $0x18, %esp               #  27    0x10a8ae  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                #  28    0x10a8b1  3      OPC=addq_r64_r64     
  popq %r11                      #  29    0x10a8b4  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  30    0x10a8b6  7      OPC=andl_r32_imm32   
  nop                            #  31    0x10a8bd  1      OPC=nop              
  nop                            #  32    0x10a8be  1      OPC=nop              
  nop                            #  33    0x10a8bf  1      OPC=nop              
  nop                            #  34    0x10a8c0  1      OPC=nop              
  addq %r15, %r11                #  35    0x10a8c1  3      OPC=addq_r64_r64     
  jmpq %r11                      #  36    0x10a8c4  3      OPC=jmpq_r64         
                                                                                
.size _Unwind_FindEnclosingFunction, .-_Unwind_FindEnclosingFunction

