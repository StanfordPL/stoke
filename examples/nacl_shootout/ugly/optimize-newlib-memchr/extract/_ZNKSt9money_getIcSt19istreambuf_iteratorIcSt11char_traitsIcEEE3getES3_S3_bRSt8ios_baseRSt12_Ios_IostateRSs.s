  .text
  .globl _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs
  .type _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs, @function

#! file-offset 0xb7de0
#! rip-offset  0x77de0
#! capacity    96 bytes

# Text                                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs:  #        0x77de0  0      OPC=<label>         
  subl $0x18, %esp                                                                                             #  1     0x77de0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                              #  2     0x77de3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                              #  3     0x77de6  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                             #  4     0x77de8  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                       #  5     0x77deb  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                              #  6     0x77df0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                     #  7     0x77df2  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                           #  8     0x77df6  4      OPC=movl_m32_r32    
  nop                                                                                                          #  9     0x77dfa  1      OPC=nop             
  nop                                                                                                          #  10    0x77dfb  1      OPC=nop             
  nop                                                                                                          #  11    0x77dfc  1      OPC=nop             
  nop                                                                                                          #  12    0x77dfd  1      OPC=nop             
  nop                                                                                                          #  13    0x77dfe  1      OPC=nop             
  nop                                                                                                          #  14    0x77dff  1      OPC=nop             
  movl %eax, %eax                                                                                              #  15    0x77e00  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                  #  16    0x77e02  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                               #  17    0x77e07  2      OPC=xchgw_ax_r16    
  nop                                                                                                          #  18    0x77e09  1      OPC=nop             
  nop                                                                                                          #  19    0x77e0a  1      OPC=nop             
  nop                                                                                                          #  20    0x77e0b  1      OPC=nop             
  nop                                                                                                          #  21    0x77e0c  1      OPC=nop             
  nop                                                                                                          #  22    0x77e0d  1      OPC=nop             
  nop                                                                                                          #  23    0x77e0e  1      OPC=nop             
  nop                                                                                                          #  24    0x77e0f  1      OPC=nop             
  nop                                                                                                          #  25    0x77e10  1      OPC=nop             
  nop                                                                                                          #  26    0x77e11  1      OPC=nop             
  nop                                                                                                          #  27    0x77e12  1      OPC=nop             
  nop                                                                                                          #  28    0x77e13  1      OPC=nop             
  nop                                                                                                          #  29    0x77e14  1      OPC=nop             
  nop                                                                                                          #  30    0x77e15  1      OPC=nop             
  nop                                                                                                          #  31    0x77e16  1      OPC=nop             
  nop                                                                                                          #  32    0x77e17  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                       #  33    0x77e18  6      OPC=andl_r32_imm32  
  nop                                                                                                          #  34    0x77e1e  1      OPC=nop             
  nop                                                                                                          #  35    0x77e1f  1      OPC=nop             
  nop                                                                                                          #  36    0x77e20  1      OPC=nop             
  addq %r15, %rax                                                                                              #  37    0x77e21  3      OPC=addq_r64_r64    
  callq %rax                                                                                                   #  38    0x77e24  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                             #  39    0x77e26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                              #  40    0x77e29  3      OPC=addq_r64_r64    
  popq %r11                                                                                                    #  41    0x77e2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                      #  42    0x77e2e  7      OPC=andl_r32_imm32  
  nop                                                                                                          #  43    0x77e35  1      OPC=nop             
  nop                                                                                                          #  44    0x77e36  1      OPC=nop             
  nop                                                                                                          #  45    0x77e37  1      OPC=nop             
  nop                                                                                                          #  46    0x77e38  1      OPC=nop             
  addq %r15, %r11                                                                                              #  47    0x77e39  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                    #  48    0x77e3c  3      OPC=jmpq_r64        
  nop                                                                                                          #  49    0x77e3f  1      OPC=nop             
  nop                                                                                                          #  50    0x77e40  1      OPC=nop             
  nop                                                                                                          #  51    0x77e41  1      OPC=nop             
  nop                                                                                                          #  52    0x77e42  1      OPC=nop             
  nop                                                                                                          #  53    0x77e43  1      OPC=nop             
  nop                                                                                                          #  54    0x77e44  1      OPC=nop             
  nop                                                                                                          #  55    0x77e45  1      OPC=nop             
  nop                                                                                                          #  56    0x77e46  1      OPC=nop             
  nop                                                                                                          #  57    0x77e47  1      OPC=nop             
  nop                                                                                                          #  58    0x77e48  1      OPC=nop             
  nop                                                                                                          #  59    0x77e49  1      OPC=nop             
  nop                                                                                                          #  60    0x77e4a  1      OPC=nop             
  nop                                                                                                          #  61    0x77e4b  1      OPC=nop             
  nop                                                                                                          #  62    0x77e4c  1      OPC=nop             
                                                                                                                                                            
.size _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs, .-_ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs

