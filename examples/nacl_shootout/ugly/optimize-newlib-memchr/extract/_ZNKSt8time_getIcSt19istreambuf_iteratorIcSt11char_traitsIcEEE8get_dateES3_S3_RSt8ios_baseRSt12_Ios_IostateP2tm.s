  .text
  .globl _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm
  .type _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, @function

#! file-offset 0xb95c0
#! rip-offset  0x795c0
#! capacity    64 bytes

# Text                                                                                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm:  #        0x795c0  0      OPC=<label>         
  movl %edi, %edi                                                                                                  #  1     0x795c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                  #  2     0x795c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  3     0x795c5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                                  #  4     0x795c8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                                  #  5     0x795ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                         #  6     0x795cc  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                                  #  7     0x795d0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                                     #  8     0x795d2  5      OPC=movl_r32_m32    
  nop                                                                                                              #  9     0x795d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                           #  10    0x795d8  6      OPC=andl_r32_imm32  
  nop                                                                                                              #  11    0x795de  1      OPC=nop             
  nop                                                                                                              #  12    0x795df  1      OPC=nop             
  nop                                                                                                              #  13    0x795e0  1      OPC=nop             
  addq %r15, %rax                                                                                                  #  14    0x795e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                                       #  15    0x795e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                                  #  16    0x795e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  17    0x795e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                        #  18    0x795ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                          #  19    0x795ee  7      OPC=andl_r32_imm32  
  nop                                                                                                              #  20    0x795f5  1      OPC=nop             
  nop                                                                                                              #  21    0x795f6  1      OPC=nop             
  nop                                                                                                              #  22    0x795f7  1      OPC=nop             
  nop                                                                                                              #  23    0x795f8  1      OPC=nop             
  addq %r15, %r11                                                                                                  #  24    0x795f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                        #  25    0x795fc  3      OPC=jmpq_r64        
  nop                                                                                                              #  26    0x795ff  1      OPC=nop             
  nop                                                                                                              #  27    0x79600  1      OPC=nop             
  nop                                                                                                              #  28    0x79601  1      OPC=nop             
  nop                                                                                                              #  29    0x79602  1      OPC=nop             
  nop                                                                                                              #  30    0x79603  1      OPC=nop             
  nop                                                                                                              #  31    0x79604  1      OPC=nop             
  nop                                                                                                              #  32    0x79605  1      OPC=nop             
  nop                                                                                                              #  33    0x79606  1      OPC=nop             
  nop                                                                                                              #  34    0x79607  1      OPC=nop             
  nop                                                                                                              #  35    0x79608  1      OPC=nop             
  nop                                                                                                              #  36    0x79609  1      OPC=nop             
  nop                                                                                                              #  37    0x7960a  1      OPC=nop             
  nop                                                                                                              #  38    0x7960b  1      OPC=nop             
  nop                                                                                                              #  39    0x7960c  1      OPC=nop             
                                                                                                                                                                
.size _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, .-_ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_dateES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm

