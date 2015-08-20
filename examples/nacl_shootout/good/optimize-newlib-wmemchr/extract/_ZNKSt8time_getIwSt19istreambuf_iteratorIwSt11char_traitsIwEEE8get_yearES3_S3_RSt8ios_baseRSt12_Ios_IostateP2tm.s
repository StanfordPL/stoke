  .text
  .globl _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm
  .type _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, @function

#! file-offset 0xf1f00
#! rip-offset  0xb1f00
#! capacity    64 bytes

# Text                                                                                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm:  #        0xb1f00  0      OPC=<label>         
  movl %edi, %edi                                                                                                  #  1     0xb1f00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                  #  2     0xb1f02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  3     0xb1f05  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                                  #  4     0xb1f08  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                                  #  5     0xb1f0a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                         #  6     0xb1f0c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                                  #  7     0xb1f10  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                                                                                     #  8     0xb1f12  5      OPC=movl_r32_m32    
  nop                                                                                                              #  9     0xb1f17  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                           #  10    0xb1f18  6      OPC=andl_r32_imm32  
  nop                                                                                                              #  11    0xb1f1e  1      OPC=nop             
  nop                                                                                                              #  12    0xb1f1f  1      OPC=nop             
  nop                                                                                                              #  13    0xb1f20  1      OPC=nop             
  addq %r15, %rax                                                                                                  #  14    0xb1f21  3      OPC=addq_r64_r64    
  callq %rax                                                                                                       #  15    0xb1f24  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                                  #  16    0xb1f26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  17    0xb1f29  3      OPC=addq_r64_r64    
  popq %r11                                                                                                        #  18    0xb1f2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                          #  19    0xb1f2e  7      OPC=andl_r32_imm32  
  nop                                                                                                              #  20    0xb1f35  1      OPC=nop             
  nop                                                                                                              #  21    0xb1f36  1      OPC=nop             
  nop                                                                                                              #  22    0xb1f37  1      OPC=nop             
  nop                                                                                                              #  23    0xb1f38  1      OPC=nop             
  addq %r15, %r11                                                                                                  #  24    0xb1f39  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                        #  25    0xb1f3c  3      OPC=jmpq_r64        
  nop                                                                                                              #  26    0xb1f3f  1      OPC=nop             
  nop                                                                                                              #  27    0xb1f40  1      OPC=nop             
  nop                                                                                                              #  28    0xb1f41  1      OPC=nop             
  nop                                                                                                              #  29    0xb1f42  1      OPC=nop             
  nop                                                                                                              #  30    0xb1f43  1      OPC=nop             
  nop                                                                                                              #  31    0xb1f44  1      OPC=nop             
  nop                                                                                                              #  32    0xb1f45  1      OPC=nop             
  nop                                                                                                              #  33    0xb1f46  1      OPC=nop             
  nop                                                                                                              #  34    0xb1f47  1      OPC=nop             
  nop                                                                                                              #  35    0xb1f48  1      OPC=nop             
  nop                                                                                                              #  36    0xb1f49  1      OPC=nop             
  nop                                                                                                              #  37    0xb1f4a  1      OPC=nop             
  nop                                                                                                              #  38    0xb1f4b  1      OPC=nop             
  nop                                                                                                              #  39    0xb1f4c  1      OPC=nop             
                                                                                                                                                                
.size _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, .-_ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm

