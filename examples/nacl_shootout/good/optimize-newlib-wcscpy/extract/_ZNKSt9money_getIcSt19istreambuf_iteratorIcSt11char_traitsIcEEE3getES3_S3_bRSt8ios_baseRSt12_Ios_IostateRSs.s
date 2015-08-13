  .text
  .globl _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs
  .type _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs, @function

#! file-offset 0xb73c0
#! rip-offset  0x773c0
#! capacity    96 bytes

# Text                                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs:  #        0x773c0  0      OPC=<label>         
  subl $0x18, %esp                                                                                             #  1     0x773c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                              #  2     0x773c3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                              #  3     0x773c6  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                             #  4     0x773c8  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                       #  5     0x773cb  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                              #  6     0x773d0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                     #  7     0x773d2  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                           #  8     0x773d6  4      OPC=movl_m32_r32    
  nop                                                                                                          #  9     0x773da  1      OPC=nop             
  nop                                                                                                          #  10    0x773db  1      OPC=nop             
  nop                                                                                                          #  11    0x773dc  1      OPC=nop             
  nop                                                                                                          #  12    0x773dd  1      OPC=nop             
  nop                                                                                                          #  13    0x773de  1      OPC=nop             
  nop                                                                                                          #  14    0x773df  1      OPC=nop             
  movl %eax, %eax                                                                                              #  15    0x773e0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                  #  16    0x773e2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                               #  17    0x773e7  2      OPC=xchgw_ax_r16    
  nop                                                                                                          #  18    0x773e9  1      OPC=nop             
  nop                                                                                                          #  19    0x773ea  1      OPC=nop             
  nop                                                                                                          #  20    0x773eb  1      OPC=nop             
  nop                                                                                                          #  21    0x773ec  1      OPC=nop             
  nop                                                                                                          #  22    0x773ed  1      OPC=nop             
  nop                                                                                                          #  23    0x773ee  1      OPC=nop             
  nop                                                                                                          #  24    0x773ef  1      OPC=nop             
  nop                                                                                                          #  25    0x773f0  1      OPC=nop             
  nop                                                                                                          #  26    0x773f1  1      OPC=nop             
  nop                                                                                                          #  27    0x773f2  1      OPC=nop             
  nop                                                                                                          #  28    0x773f3  1      OPC=nop             
  nop                                                                                                          #  29    0x773f4  1      OPC=nop             
  nop                                                                                                          #  30    0x773f5  1      OPC=nop             
  nop                                                                                                          #  31    0x773f6  1      OPC=nop             
  nop                                                                                                          #  32    0x773f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                       #  33    0x773f8  6      OPC=andl_r32_imm32  
  nop                                                                                                          #  34    0x773fe  1      OPC=nop             
  nop                                                                                                          #  35    0x773ff  1      OPC=nop             
  nop                                                                                                          #  36    0x77400  1      OPC=nop             
  addq %r15, %rax                                                                                              #  37    0x77401  3      OPC=addq_r64_r64    
  callq %rax                                                                                                   #  38    0x77404  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                             #  39    0x77406  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                              #  40    0x77409  3      OPC=addq_r64_r64    
  popq %r11                                                                                                    #  41    0x7740c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                      #  42    0x7740e  7      OPC=andl_r32_imm32  
  nop                                                                                                          #  43    0x77415  1      OPC=nop             
  nop                                                                                                          #  44    0x77416  1      OPC=nop             
  nop                                                                                                          #  45    0x77417  1      OPC=nop             
  nop                                                                                                          #  46    0x77418  1      OPC=nop             
  addq %r15, %r11                                                                                              #  47    0x77419  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                    #  48    0x7741c  3      OPC=jmpq_r64        
  nop                                                                                                          #  49    0x7741f  1      OPC=nop             
  nop                                                                                                          #  50    0x77420  1      OPC=nop             
  nop                                                                                                          #  51    0x77421  1      OPC=nop             
  nop                                                                                                          #  52    0x77422  1      OPC=nop             
  nop                                                                                                          #  53    0x77423  1      OPC=nop             
  nop                                                                                                          #  54    0x77424  1      OPC=nop             
  nop                                                                                                          #  55    0x77425  1      OPC=nop             
  nop                                                                                                          #  56    0x77426  1      OPC=nop             
  nop                                                                                                          #  57    0x77427  1      OPC=nop             
  nop                                                                                                          #  58    0x77428  1      OPC=nop             
  nop                                                                                                          #  59    0x77429  1      OPC=nop             
  nop                                                                                                          #  60    0x7742a  1      OPC=nop             
  nop                                                                                                          #  61    0x7742b  1      OPC=nop             
  nop                                                                                                          #  62    0x7742c  1      OPC=nop             
                                                                                                                                                            
.size _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs, .-_ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs

