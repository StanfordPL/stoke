  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x11a400
#! rip-offset  0xda400
#! capacity    128 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEixEj:                     #        0xda400  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda400  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                         #  2     0xda405  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda407  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda40c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda40f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda412  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda414  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                        #  8     0xda418  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda41b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda41e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda420  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edi                             #  12    0xda422  5      OPC=movl_r32_m32    
  testl %edi, %edi                                        #  13    0xda427  2      OPC=testl_r32_r32   
  js .L_da460                                             #  14    0xda429  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xda42b  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xda42d  1      OPC=nop             
  nop                                                     #  17    0xda42e  1      OPC=nop             
  nop                                                     #  18    0xda42f  1      OPC=nop             
  nop                                                     #  19    0xda430  1      OPC=nop             
  nop                                                     #  20    0xda431  1      OPC=nop             
  nop                                                     #  21    0xda432  1      OPC=nop             
  nop                                                     #  22    0xda433  1      OPC=nop             
  nop                                                     #  23    0xda434  1      OPC=nop             
  nop                                                     #  24    0xda435  1      OPC=nop             
  nop                                                     #  25    0xda436  1      OPC=nop             
  nop                                                     #  26    0xda437  1      OPC=nop             
  nop                                                     #  27    0xda438  1      OPC=nop             
  nop                                                     #  28    0xda439  1      OPC=nop             
  nop                                                     #  29    0xda43a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  30    0xda43b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  31    0xda440  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  32    0xda442  4      OPC=movl_r32_m32    
  nop                                                     #  33    0xda446  1      OPC=nop             
  nop                                                     #  34    0xda447  1      OPC=nop             
  nop                                                     #  35    0xda448  1      OPC=nop             
  nop                                                     #  36    0xda449  1      OPC=nop             
  nop                                                     #  37    0xda44a  1      OPC=nop             
  nop                                                     #  38    0xda44b  1      OPC=nop             
  nop                                                     #  39    0xda44c  1      OPC=nop             
  nop                                                     #  40    0xda44d  1      OPC=nop             
  nop                                                     #  41    0xda44e  1      OPC=nop             
  nop                                                     #  42    0xda44f  1      OPC=nop             
  nop                                                     #  43    0xda450  1      OPC=nop             
  nop                                                     #  44    0xda451  1      OPC=nop             
  nop                                                     #  45    0xda452  1      OPC=nop             
  nop                                                     #  46    0xda453  1      OPC=nop             
  nop                                                     #  47    0xda454  1      OPC=nop             
  nop                                                     #  48    0xda455  1      OPC=nop             
  nop                                                     #  49    0xda456  1      OPC=nop             
  nop                                                     #  50    0xda457  1      OPC=nop             
  nop                                                     #  51    0xda458  1      OPC=nop             
  nop                                                     #  52    0xda459  1      OPC=nop             
  nop                                                     #  53    0xda45a  1      OPC=nop             
  nop                                                     #  54    0xda45b  1      OPC=nop             
  nop                                                     #  55    0xda45c  1      OPC=nop             
  nop                                                     #  56    0xda45d  1      OPC=nop             
  nop                                                     #  57    0xda45e  1      OPC=nop             
  nop                                                     #  58    0xda45f  1      OPC=nop             
.L_da460:                                                 #        0xda460  0      OPC=<label>         
  leal (%rax,%r12,4), %eax                                #  59    0xda460  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                                    #  60    0xda464  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                   #  61    0xda469  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  62    0xda46e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  63    0xda471  3      OPC=addq_r64_r64    
  popq %r11                                               #  64    0xda474  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  65    0xda476  7      OPC=andl_r32_imm32  
  nop                                                     #  66    0xda47d  1      OPC=nop             
  nop                                                     #  67    0xda47e  1      OPC=nop             
  nop                                                     #  68    0xda47f  1      OPC=nop             
  nop                                                     #  69    0xda480  1      OPC=nop             
  addq %r15, %r11                                         #  70    0xda481  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  71    0xda484  3      OPC=jmpq_r64        
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNSbIwSt11char_traitsIwESaIwEEixEj

