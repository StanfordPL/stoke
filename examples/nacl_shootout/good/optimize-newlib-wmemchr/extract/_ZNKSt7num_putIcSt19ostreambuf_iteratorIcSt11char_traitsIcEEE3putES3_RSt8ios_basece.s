  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece, @function

#! file-offset 0xb80e0
#! rip-offset  0x780e0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece:  #        0x780e0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x780e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x780e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x780e5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x780e8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x780ea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x780ec  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x780f0  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x780f3  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                         #  9     0x780f5  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x780fa  1      OPC=nop             
  nop                                                                                  #  11    0x780fb  1      OPC=nop             
  nop                                                                                  #  12    0x780fc  1      OPC=nop             
  nop                                                                                  #  13    0x780fd  1      OPC=nop             
  nop                                                                                  #  14    0x780fe  1      OPC=nop             
  nop                                                                                  #  15    0x780ff  1      OPC=nop             
  nop                                                                                  #  16    0x78100  1      OPC=nop             
  nop                                                                                  #  17    0x78101  1      OPC=nop             
  nop                                                                                  #  18    0x78102  1      OPC=nop             
  nop                                                                                  #  19    0x78103  1      OPC=nop             
  nop                                                                                  #  20    0x78104  1      OPC=nop             
  nop                                                                                  #  21    0x78105  1      OPC=nop             
  nop                                                                                  #  22    0x78106  1      OPC=nop             
  nop                                                                                  #  23    0x78107  1      OPC=nop             
  nop                                                                                  #  24    0x78108  1      OPC=nop             
  nop                                                                                  #  25    0x78109  1      OPC=nop             
  nop                                                                                  #  26    0x7810a  1      OPC=nop             
  nop                                                                                  #  27    0x7810b  1      OPC=nop             
  nop                                                                                  #  28    0x7810c  1      OPC=nop             
  nop                                                                                  #  29    0x7810d  1      OPC=nop             
  nop                                                                                  #  30    0x7810e  1      OPC=nop             
  nop                                                                                  #  31    0x7810f  1      OPC=nop             
  nop                                                                                  #  32    0x78110  1      OPC=nop             
  nop                                                                                  #  33    0x78111  1      OPC=nop             
  nop                                                                                  #  34    0x78112  1      OPC=nop             
  nop                                                                                  #  35    0x78113  1      OPC=nop             
  nop                                                                                  #  36    0x78114  1      OPC=nop             
  nop                                                                                  #  37    0x78115  1      OPC=nop             
  nop                                                                                  #  38    0x78116  1      OPC=nop             
  nop                                                                                  #  39    0x78117  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x78118  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x7811e  1      OPC=nop             
  nop                                                                                  #  42    0x7811f  1      OPC=nop             
  nop                                                                                  #  43    0x78120  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78121  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78124  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78126  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78129  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7812c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7812e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78135  1      OPC=nop             
  nop                                                                                  #  51    0x78136  1      OPC=nop             
  nop                                                                                  #  52    0x78137  1      OPC=nop             
  nop                                                                                  #  53    0x78138  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78139  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7813c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7813f  1      OPC=nop             
  nop                                                                                  #  57    0x78140  1      OPC=nop             
  nop                                                                                  #  58    0x78141  1      OPC=nop             
  nop                                                                                  #  59    0x78142  1      OPC=nop             
  nop                                                                                  #  60    0x78143  1      OPC=nop             
  nop                                                                                  #  61    0x78144  1      OPC=nop             
  nop                                                                                  #  62    0x78145  1      OPC=nop             
  nop                                                                                  #  63    0x78146  1      OPC=nop             
  nop                                                                                  #  64    0x78147  1      OPC=nop             
  nop                                                                                  #  65    0x78148  1      OPC=nop             
  nop                                                                                  #  66    0x78149  1      OPC=nop             
  nop                                                                                  #  67    0x7814a  1      OPC=nop             
  nop                                                                                  #  68    0x7814b  1      OPC=nop             
  nop                                                                                  #  69    0x7814c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basece

