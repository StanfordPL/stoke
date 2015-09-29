  .text
  .globl _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe
  .type _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, @function

#! file-offset 0xb7d80
#! rip-offset  0x77d80
#! capacity    96 bytes

# Text                                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe:  #        0x77d80  0      OPC=<label>         
  subl $0x18, %esp                                                                                            #  1     0x77d80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                             #  2     0x77d83  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                             #  3     0x77d86  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                            #  4     0x77d88  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                      #  5     0x77d8b  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                             #  6     0x77d90  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                    #  7     0x77d92  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                          #  8     0x77d96  4      OPC=movl_m32_r32    
  nop                                                                                                         #  9     0x77d9a  1      OPC=nop             
  nop                                                                                                         #  10    0x77d9b  1      OPC=nop             
  nop                                                                                                         #  11    0x77d9c  1      OPC=nop             
  nop                                                                                                         #  12    0x77d9d  1      OPC=nop             
  nop                                                                                                         #  13    0x77d9e  1      OPC=nop             
  nop                                                                                                         #  14    0x77d9f  1      OPC=nop             
  movl %eax, %eax                                                                                             #  15    0x77da0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                                 #  16    0x77da2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                              #  17    0x77da7  2      OPC=xchgw_ax_r16    
  nop                                                                                                         #  18    0x77da9  1      OPC=nop             
  nop                                                                                                         #  19    0x77daa  1      OPC=nop             
  nop                                                                                                         #  20    0x77dab  1      OPC=nop             
  nop                                                                                                         #  21    0x77dac  1      OPC=nop             
  nop                                                                                                         #  22    0x77dad  1      OPC=nop             
  nop                                                                                                         #  23    0x77dae  1      OPC=nop             
  nop                                                                                                         #  24    0x77daf  1      OPC=nop             
  nop                                                                                                         #  25    0x77db0  1      OPC=nop             
  nop                                                                                                         #  26    0x77db1  1      OPC=nop             
  nop                                                                                                         #  27    0x77db2  1      OPC=nop             
  nop                                                                                                         #  28    0x77db3  1      OPC=nop             
  nop                                                                                                         #  29    0x77db4  1      OPC=nop             
  nop                                                                                                         #  30    0x77db5  1      OPC=nop             
  nop                                                                                                         #  31    0x77db6  1      OPC=nop             
  nop                                                                                                         #  32    0x77db7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                      #  33    0x77db8  6      OPC=andl_r32_imm32  
  nop                                                                                                         #  34    0x77dbe  1      OPC=nop             
  nop                                                                                                         #  35    0x77dbf  1      OPC=nop             
  nop                                                                                                         #  36    0x77dc0  1      OPC=nop             
  addq %r15, %rax                                                                                             #  37    0x77dc1  3      OPC=addq_r64_r64    
  callq %rax                                                                                                  #  38    0x77dc4  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                            #  39    0x77dc6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                             #  40    0x77dc9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                   #  41    0x77dcc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                     #  42    0x77dce  7      OPC=andl_r32_imm32  
  nop                                                                                                         #  43    0x77dd5  1      OPC=nop             
  nop                                                                                                         #  44    0x77dd6  1      OPC=nop             
  nop                                                                                                         #  45    0x77dd7  1      OPC=nop             
  nop                                                                                                         #  46    0x77dd8  1      OPC=nop             
  addq %r15, %r11                                                                                             #  47    0x77dd9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                   #  48    0x77ddc  3      OPC=jmpq_r64        
  nop                                                                                                         #  49    0x77ddf  1      OPC=nop             
  nop                                                                                                         #  50    0x77de0  1      OPC=nop             
  nop                                                                                                         #  51    0x77de1  1      OPC=nop             
  nop                                                                                                         #  52    0x77de2  1      OPC=nop             
  nop                                                                                                         #  53    0x77de3  1      OPC=nop             
  nop                                                                                                         #  54    0x77de4  1      OPC=nop             
  nop                                                                                                         #  55    0x77de5  1      OPC=nop             
  nop                                                                                                         #  56    0x77de6  1      OPC=nop             
  nop                                                                                                         #  57    0x77de7  1      OPC=nop             
  nop                                                                                                         #  58    0x77de8  1      OPC=nop             
  nop                                                                                                         #  59    0x77de9  1      OPC=nop             
  nop                                                                                                         #  60    0x77dea  1      OPC=nop             
  nop                                                                                                         #  61    0x77deb  1      OPC=nop             
  nop                                                                                                         #  62    0x77dec  1      OPC=nop             
                                                                                                                                                           
.size _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, .-_ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe

