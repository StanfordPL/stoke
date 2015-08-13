  .text
  .globl _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm
  .type _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, @function

#! file-offset 0xb8b60
#! rip-offset  0x78b60
#! capacity    64 bytes

# Text                                                                                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm:  #        0x78b60  0      OPC=<label>         
  movl %edi, %edi                                                                                                  #  1     0x78b60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                  #  2     0x78b62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  3     0x78b65  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                                  #  4     0x78b68  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                                  #  5     0x78b6a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                         #  6     0x78b6c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                                  #  7     0x78b70  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                      #  8     0x78b72  5      OPC=movl_r32_m32    
  nop                                                                                                              #  9     0x78b77  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                           #  10    0x78b78  6      OPC=andl_r32_imm32  
  nop                                                                                                              #  11    0x78b7e  1      OPC=nop             
  nop                                                                                                              #  12    0x78b7f  1      OPC=nop             
  nop                                                                                                              #  13    0x78b80  1      OPC=nop             
  addq %r15, %rax                                                                                                  #  14    0x78b81  3      OPC=addq_r64_r64    
  callq %rax                                                                                                       #  15    0x78b84  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                                  #  16    0x78b86  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  17    0x78b89  3      OPC=addq_r64_r64    
  popq %r11                                                                                                        #  18    0x78b8c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                          #  19    0x78b8e  7      OPC=andl_r32_imm32  
  nop                                                                                                              #  20    0x78b95  1      OPC=nop             
  nop                                                                                                              #  21    0x78b96  1      OPC=nop             
  nop                                                                                                              #  22    0x78b97  1      OPC=nop             
  nop                                                                                                              #  23    0x78b98  1      OPC=nop             
  addq %r15, %r11                                                                                                  #  24    0x78b99  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                        #  25    0x78b9c  3      OPC=jmpq_r64        
  nop                                                                                                              #  26    0x78b9f  1      OPC=nop             
  nop                                                                                                              #  27    0x78ba0  1      OPC=nop             
  nop                                                                                                              #  28    0x78ba1  1      OPC=nop             
  nop                                                                                                              #  29    0x78ba2  1      OPC=nop             
  nop                                                                                                              #  30    0x78ba3  1      OPC=nop             
  nop                                                                                                              #  31    0x78ba4  1      OPC=nop             
  nop                                                                                                              #  32    0x78ba5  1      OPC=nop             
  nop                                                                                                              #  33    0x78ba6  1      OPC=nop             
  nop                                                                                                              #  34    0x78ba7  1      OPC=nop             
  nop                                                                                                              #  35    0x78ba8  1      OPC=nop             
  nop                                                                                                              #  36    0x78ba9  1      OPC=nop             
  nop                                                                                                              #  37    0x78baa  1      OPC=nop             
  nop                                                                                                              #  38    0x78bab  1      OPC=nop             
  nop                                                                                                              #  39    0x78bac  1      OPC=nop             
                                                                                                                                                                
.size _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, .-_ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_timeES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm

