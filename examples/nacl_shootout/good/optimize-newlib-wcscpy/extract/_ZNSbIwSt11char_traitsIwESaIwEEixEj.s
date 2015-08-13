  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x11a100
#! rip-offset  0xda100
#! capacity    128 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEixEj:                     #        0xda100  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda100  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                         #  2     0xda105  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda107  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda10c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda10f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda112  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda114  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                        #  8     0xda118  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda11b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda11e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda120  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edi                             #  12    0xda122  5      OPC=movl_r32_m32    
  testl %edi, %edi                                        #  13    0xda127  2      OPC=testl_r32_r32   
  js .L_da160                                             #  14    0xda129  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xda12b  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xda12d  1      OPC=nop             
  nop                                                     #  17    0xda12e  1      OPC=nop             
  nop                                                     #  18    0xda12f  1      OPC=nop             
  nop                                                     #  19    0xda130  1      OPC=nop             
  nop                                                     #  20    0xda131  1      OPC=nop             
  nop                                                     #  21    0xda132  1      OPC=nop             
  nop                                                     #  22    0xda133  1      OPC=nop             
  nop                                                     #  23    0xda134  1      OPC=nop             
  nop                                                     #  24    0xda135  1      OPC=nop             
  nop                                                     #  25    0xda136  1      OPC=nop             
  nop                                                     #  26    0xda137  1      OPC=nop             
  nop                                                     #  27    0xda138  1      OPC=nop             
  nop                                                     #  28    0xda139  1      OPC=nop             
  nop                                                     #  29    0xda13a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  30    0xda13b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  31    0xda140  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  32    0xda142  4      OPC=movl_r32_m32    
  nop                                                     #  33    0xda146  1      OPC=nop             
  nop                                                     #  34    0xda147  1      OPC=nop             
  nop                                                     #  35    0xda148  1      OPC=nop             
  nop                                                     #  36    0xda149  1      OPC=nop             
  nop                                                     #  37    0xda14a  1      OPC=nop             
  nop                                                     #  38    0xda14b  1      OPC=nop             
  nop                                                     #  39    0xda14c  1      OPC=nop             
  nop                                                     #  40    0xda14d  1      OPC=nop             
  nop                                                     #  41    0xda14e  1      OPC=nop             
  nop                                                     #  42    0xda14f  1      OPC=nop             
  nop                                                     #  43    0xda150  1      OPC=nop             
  nop                                                     #  44    0xda151  1      OPC=nop             
  nop                                                     #  45    0xda152  1      OPC=nop             
  nop                                                     #  46    0xda153  1      OPC=nop             
  nop                                                     #  47    0xda154  1      OPC=nop             
  nop                                                     #  48    0xda155  1      OPC=nop             
  nop                                                     #  49    0xda156  1      OPC=nop             
  nop                                                     #  50    0xda157  1      OPC=nop             
  nop                                                     #  51    0xda158  1      OPC=nop             
  nop                                                     #  52    0xda159  1      OPC=nop             
  nop                                                     #  53    0xda15a  1      OPC=nop             
  nop                                                     #  54    0xda15b  1      OPC=nop             
  nop                                                     #  55    0xda15c  1      OPC=nop             
  nop                                                     #  56    0xda15d  1      OPC=nop             
  nop                                                     #  57    0xda15e  1      OPC=nop             
  nop                                                     #  58    0xda15f  1      OPC=nop             
.L_da160:                                                 #        0xda160  0      OPC=<label>         
  leal (%rax,%r12,4), %eax                                #  59    0xda160  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                                    #  60    0xda164  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                   #  61    0xda169  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  62    0xda16e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  63    0xda171  3      OPC=addq_r64_r64    
  popq %r11                                               #  64    0xda174  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  65    0xda176  7      OPC=andl_r32_imm32  
  nop                                                     #  66    0xda17d  1      OPC=nop             
  nop                                                     #  67    0xda17e  1      OPC=nop             
  nop                                                     #  68    0xda17f  1      OPC=nop             
  nop                                                     #  69    0xda180  1      OPC=nop             
  addq %r15, %r11                                         #  70    0xda181  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  71    0xda184  3      OPC=jmpq_r64        
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNSbIwSt11char_traitsIwESaIwEEixEj

