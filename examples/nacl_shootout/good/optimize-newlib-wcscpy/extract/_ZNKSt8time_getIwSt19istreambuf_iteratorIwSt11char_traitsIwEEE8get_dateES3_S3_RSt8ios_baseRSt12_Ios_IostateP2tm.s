  .text
  .globl _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm
  .type _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, @function

#! file-offset 0xf1b40
#! rip-offset  0xb1b40
#! capacity    64 bytes

# Text                                                                                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm:  #        0xb1b40  0      OPC=<label>         
  movl %edi, %edi                                                                                                  #  1     0xb1b40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                  #  2     0xb1b42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  3     0xb1b45  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                                  #  4     0xb1b48  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                                  #  5     0xb1b4a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                         #  6     0xb1b4c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                                  #  7     0xb1b50  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                                     #  8     0xb1b52  5      OPC=movl_r32_m32    
  nop                                                                                                              #  9     0xb1b57  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                           #  10    0xb1b58  6      OPC=andl_r32_imm32  
  nop                                                                                                              #  11    0xb1b5e  1      OPC=nop             
  nop                                                                                                              #  12    0xb1b5f  1      OPC=nop             
  nop                                                                                                              #  13    0xb1b60  1      OPC=nop             
  addq %r15, %rax                                                                                                  #  14    0xb1b61  3      OPC=addq_r64_r64    
  callq %rax                                                                                                       #  15    0xb1b64  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                                  #  16    0xb1b66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  17    0xb1b69  3      OPC=addq_r64_r64    
  popq %r11                                                                                                        #  18    0xb1b6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                          #  19    0xb1b6e  7      OPC=andl_r32_imm32  
  nop                                                                                                              #  20    0xb1b75  1      OPC=nop             
  nop                                                                                                              #  21    0xb1b76  1      OPC=nop             
  nop                                                                                                              #  22    0xb1b77  1      OPC=nop             
  nop                                                                                                              #  23    0xb1b78  1      OPC=nop             
  addq %r15, %r11                                                                                                  #  24    0xb1b79  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                        #  25    0xb1b7c  3      OPC=jmpq_r64        
  nop                                                                                                              #  26    0xb1b7f  1      OPC=nop             
  nop                                                                                                              #  27    0xb1b80  1      OPC=nop             
  nop                                                                                                              #  28    0xb1b81  1      OPC=nop             
  nop                                                                                                              #  29    0xb1b82  1      OPC=nop             
  nop                                                                                                              #  30    0xb1b83  1      OPC=nop             
  nop                                                                                                              #  31    0xb1b84  1      OPC=nop             
  nop                                                                                                              #  32    0xb1b85  1      OPC=nop             
  nop                                                                                                              #  33    0xb1b86  1      OPC=nop             
  nop                                                                                                              #  34    0xb1b87  1      OPC=nop             
  nop                                                                                                              #  35    0xb1b88  1      OPC=nop             
  nop                                                                                                              #  36    0xb1b89  1      OPC=nop             
  nop                                                                                                              #  37    0xb1b8a  1      OPC=nop             
  nop                                                                                                              #  38    0xb1b8b  1      OPC=nop             
  nop                                                                                                              #  39    0xb1b8c  1      OPC=nop             
                                                                                                                                                                
.size _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, .-_ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm

