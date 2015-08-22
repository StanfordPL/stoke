  .text
  .globl _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm
  .type _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, @function

#! file-offset 0xb9680
#! rip-offset  0x79680
#! capacity    64 bytes

# Text                                                                                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm:  #        0x79680  0      OPC=<label>         
  movl %edi, %edi                                                                                                  #  1     0x79680  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                  #  2     0x79682  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  3     0x79685  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                                  #  4     0x79688  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                                  #  5     0x7968a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                         #  6     0x7968c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                                  #  7     0x79690  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                                                                                     #  8     0x79692  5      OPC=movl_r32_m32    
  nop                                                                                                              #  9     0x79697  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                           #  10    0x79698  6      OPC=andl_r32_imm32  
  nop                                                                                                              #  11    0x7969e  1      OPC=nop             
  nop                                                                                                              #  12    0x7969f  1      OPC=nop             
  nop                                                                                                              #  13    0x796a0  1      OPC=nop             
  addq %r15, %rax                                                                                                  #  14    0x796a1  3      OPC=addq_r64_r64    
  callq %rax                                                                                                       #  15    0x796a4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                                  #  16    0x796a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                  #  17    0x796a9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                        #  18    0x796ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                          #  19    0x796ae  7      OPC=andl_r32_imm32  
  nop                                                                                                              #  20    0x796b5  1      OPC=nop             
  nop                                                                                                              #  21    0x796b6  1      OPC=nop             
  nop                                                                                                              #  22    0x796b7  1      OPC=nop             
  nop                                                                                                              #  23    0x796b8  1      OPC=nop             
  addq %r15, %r11                                                                                                  #  24    0x796b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                        #  25    0x796bc  3      OPC=jmpq_r64        
  nop                                                                                                              #  26    0x796bf  1      OPC=nop             
  nop                                                                                                              #  27    0x796c0  1      OPC=nop             
  nop                                                                                                              #  28    0x796c1  1      OPC=nop             
  nop                                                                                                              #  29    0x796c2  1      OPC=nop             
  nop                                                                                                              #  30    0x796c3  1      OPC=nop             
  nop                                                                                                              #  31    0x796c4  1      OPC=nop             
  nop                                                                                                              #  32    0x796c5  1      OPC=nop             
  nop                                                                                                              #  33    0x796c6  1      OPC=nop             
  nop                                                                                                              #  34    0x796c7  1      OPC=nop             
  nop                                                                                                              #  35    0x796c8  1      OPC=nop             
  nop                                                                                                              #  36    0x796c9  1      OPC=nop             
  nop                                                                                                              #  37    0x796ca  1      OPC=nop             
  nop                                                                                                              #  38    0x796cb  1      OPC=nop             
  nop                                                                                                              #  39    0x796cc  1      OPC=nop             
                                                                                                                                                                
.size _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm, .-_ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE8get_yearES3_S3_RSt8ios_baseRSt12_Ios_IostateP2tm

