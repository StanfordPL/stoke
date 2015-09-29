  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl, @function

#! file-offset 0xb8620
#! rip-offset  0x78620
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl:  #        0x78620  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x78620  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x78622  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x78625  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x78628  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x7862a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x7862c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x78630  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x78633  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                          #  9     0x78635  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x7863a  1      OPC=nop             
  nop                                                                                  #  11    0x7863b  1      OPC=nop             
  nop                                                                                  #  12    0x7863c  1      OPC=nop             
  nop                                                                                  #  13    0x7863d  1      OPC=nop             
  nop                                                                                  #  14    0x7863e  1      OPC=nop             
  nop                                                                                  #  15    0x7863f  1      OPC=nop             
  nop                                                                                  #  16    0x78640  1      OPC=nop             
  nop                                                                                  #  17    0x78641  1      OPC=nop             
  nop                                                                                  #  18    0x78642  1      OPC=nop             
  nop                                                                                  #  19    0x78643  1      OPC=nop             
  nop                                                                                  #  20    0x78644  1      OPC=nop             
  nop                                                                                  #  21    0x78645  1      OPC=nop             
  nop                                                                                  #  22    0x78646  1      OPC=nop             
  nop                                                                                  #  23    0x78647  1      OPC=nop             
  nop                                                                                  #  24    0x78648  1      OPC=nop             
  nop                                                                                  #  25    0x78649  1      OPC=nop             
  nop                                                                                  #  26    0x7864a  1      OPC=nop             
  nop                                                                                  #  27    0x7864b  1      OPC=nop             
  nop                                                                                  #  28    0x7864c  1      OPC=nop             
  nop                                                                                  #  29    0x7864d  1      OPC=nop             
  nop                                                                                  #  30    0x7864e  1      OPC=nop             
  nop                                                                                  #  31    0x7864f  1      OPC=nop             
  nop                                                                                  #  32    0x78650  1      OPC=nop             
  nop                                                                                  #  33    0x78651  1      OPC=nop             
  nop                                                                                  #  34    0x78652  1      OPC=nop             
  nop                                                                                  #  35    0x78653  1      OPC=nop             
  nop                                                                                  #  36    0x78654  1      OPC=nop             
  nop                                                                                  #  37    0x78655  1      OPC=nop             
  nop                                                                                  #  38    0x78656  1      OPC=nop             
  nop                                                                                  #  39    0x78657  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x78658  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x7865e  1      OPC=nop             
  nop                                                                                  #  42    0x7865f  1      OPC=nop             
  nop                                                                                  #  43    0x78660  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78661  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78664  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78666  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78669  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7866c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7866e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78675  1      OPC=nop             
  nop                                                                                  #  51    0x78676  1      OPC=nop             
  nop                                                                                  #  52    0x78677  1      OPC=nop             
  nop                                                                                  #  53    0x78678  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78679  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7867c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7867f  1      OPC=nop             
  nop                                                                                  #  57    0x78680  1      OPC=nop             
  nop                                                                                  #  58    0x78681  1      OPC=nop             
  nop                                                                                  #  59    0x78682  1      OPC=nop             
  nop                                                                                  #  60    0x78683  1      OPC=nop             
  nop                                                                                  #  61    0x78684  1      OPC=nop             
  nop                                                                                  #  62    0x78685  1      OPC=nop             
  nop                                                                                  #  63    0x78686  1      OPC=nop             
  nop                                                                                  #  64    0x78687  1      OPC=nop             
  nop                                                                                  #  65    0x78688  1      OPC=nop             
  nop                                                                                  #  66    0x78689  1      OPC=nop             
  nop                                                                                  #  67    0x7868a  1      OPC=nop             
  nop                                                                                  #  68    0x7868b  1      OPC=nop             
  nop                                                                                  #  69    0x7868c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl

