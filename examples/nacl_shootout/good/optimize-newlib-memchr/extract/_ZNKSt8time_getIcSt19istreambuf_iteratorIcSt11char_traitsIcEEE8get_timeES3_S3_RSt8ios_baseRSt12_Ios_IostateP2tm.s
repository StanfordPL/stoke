  .text
  .globl _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm
  .type _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, @function

#! file-offset 0xb9580
#! rip-offset  0x79580
#! capacity    64 bytes

# Text                                                                                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm:  #        0x79580  0      OPC=<label>         
  movl %edi, %edi                                                                                                  #  1     0x79580  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                  #  2     0x79582  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  3     0x79585  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                                  #  4     0x79588  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                                  #  5     0x7958a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                         #  6     0x7958c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                                  #  7     0x79590  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                      #  8     0x79592  5      OPC=movl_r32_m32    
  nop                                                                                                              #  9     0x79597  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                           #  10    0x79598  6      OPC=andl_r32_imm32  
  nop                                                                                                              #  11    0x7959e  1      OPC=nop             
  nop                                                                                                              #  12    0x7959f  1      OPC=nop             
  nop                                                                                                              #  13    0x795a0  1      OPC=nop             
  addq %r15, %rax                                                                                                  #  14    0x795a1  3      OPC=addq_r64_r64    
  callq %rax                                                                                                       #  15    0x795a4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                                  #  16    0x795a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  17    0x795a9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                        #  18    0x795ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                          #  19    0x795ae  7      OPC=andl_r32_imm32  
  nop                                                                                                              #  20    0x795b5  1      OPC=nop             
  nop                                                                                                              #  21    0x795b6  1      OPC=nop             
  nop                                                                                                              #  22    0x795b7  1      OPC=nop             
  nop                                                                                                              #  23    0x795b8  1      OPC=nop             
  addq %r15, %r11                                                                                                  #  24    0x795b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                        #  25    0x795bc  3      OPC=jmpq_r64        
  nop                                                                                                              #  26    0x795bf  1      OPC=nop             
  nop                                                                                                              #  27    0x795c0  1      OPC=nop             
  nop                                                                                                              #  28    0x795c1  1      OPC=nop             
  nop                                                                                                              #  29    0x795c2  1      OPC=nop             
  nop                                                                                                              #  30    0x795c3  1      OPC=nop             
  nop                                                                                                              #  31    0x795c4  1      OPC=nop             
  nop                                                                                                              #  32    0x795c5  1      OPC=nop             
  nop                                                                                                              #  33    0x795c6  1      OPC=nop             
  nop                                                                                                              #  34    0x795c7  1      OPC=nop             
  nop                                                                                                              #  35    0x795c8  1      OPC=nop             
  nop                                                                                                              #  36    0x795c9  1      OPC=nop             
  nop                                                                                                              #  37    0x795ca  1      OPC=nop             
  nop                                                                                                              #  38    0x795cb  1      OPC=nop             
  nop                                                                                                              #  39    0x795cc  1      OPC=nop             
                                                                                                                                                                
.size _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, .-_ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm

