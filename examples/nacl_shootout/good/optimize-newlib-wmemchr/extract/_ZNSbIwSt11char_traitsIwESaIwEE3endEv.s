  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE3endEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE3endEv, @function

#! file-offset 0x11a340
#! rip-offset  0xda340
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE3endEv:                   #        0xda340  0      OPC=<label>         
  pushq %rbx                                              #  1     0xda340  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                         #  2     0xda341  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                         #  3     0xda343  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  4     0xda345  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  5     0xda349  3      OPC=leal_r32_m16    
  movl %edx, %edx                                         #  6     0xda34c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx                             #  7     0xda34e  5      OPC=movl_r32_m32    
  testl %ecx, %ecx                                        #  8     0xda353  2      OPC=testl_r32_r32   
  js .L_da380                                             #  9     0xda355  2      OPC=js_label        
  movl %ebx, %edi                                         #  10    0xda357  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                          #  11    0xda359  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  12    0xda35b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  13    0xda360  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  14    0xda362  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  15    0xda366  3      OPC=leal_r32_m16    
  nop                                                     #  16    0xda369  1      OPC=nop             
  nop                                                     #  17    0xda36a  1      OPC=nop             
  nop                                                     #  18    0xda36b  1      OPC=nop             
  nop                                                     #  19    0xda36c  1      OPC=nop             
  nop                                                     #  20    0xda36d  1      OPC=nop             
  nop                                                     #  21    0xda36e  1      OPC=nop             
  nop                                                     #  22    0xda36f  1      OPC=nop             
  nop                                                     #  23    0xda370  1      OPC=nop             
  nop                                                     #  24    0xda371  1      OPC=nop             
  nop                                                     #  25    0xda372  1      OPC=nop             
  nop                                                     #  26    0xda373  1      OPC=nop             
  nop                                                     #  27    0xda374  1      OPC=nop             
  nop                                                     #  28    0xda375  1      OPC=nop             
  nop                                                     #  29    0xda376  1      OPC=nop             
  nop                                                     #  30    0xda377  1      OPC=nop             
  nop                                                     #  31    0xda378  1      OPC=nop             
  nop                                                     #  32    0xda379  1      OPC=nop             
  nop                                                     #  33    0xda37a  1      OPC=nop             
  nop                                                     #  34    0xda37b  1      OPC=nop             
  nop                                                     #  35    0xda37c  1      OPC=nop             
  nop                                                     #  36    0xda37d  1      OPC=nop             
  nop                                                     #  37    0xda37e  1      OPC=nop             
  nop                                                     #  38    0xda37f  1      OPC=nop             
.L_da380:                                                 #        0xda380  0      OPC=<label>         
  popq %rbx                                               #  39    0xda380  1      OPC=popq_r64_1      
  popq %r11                                               #  40    0xda381  2      OPC=popq_r64_1      
  movl %edx, %edx                                         #  41    0xda383  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                #  42    0xda385  4      OPC=movl_r32_m32    
  leal (%rax,%rdx,4), %eax                                #  43    0xda389  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                 #  44    0xda38c  7      OPC=andl_r32_imm32  
  nop                                                     #  45    0xda393  1      OPC=nop             
  nop                                                     #  46    0xda394  1      OPC=nop             
  nop                                                     #  47    0xda395  1      OPC=nop             
  nop                                                     #  48    0xda396  1      OPC=nop             
  addq %r15, %r11                                         #  49    0xda397  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  50    0xda39a  3      OPC=jmpq_r64        
  nop                                                     #  51    0xda39d  1      OPC=nop             
  nop                                                     #  52    0xda39e  1      OPC=nop             
  nop                                                     #  53    0xda39f  1      OPC=nop             
  nop                                                     #  54    0xda3a0  1      OPC=nop             
  nop                                                     #  55    0xda3a1  1      OPC=nop             
  nop                                                     #  56    0xda3a2  1      OPC=nop             
  nop                                                     #  57    0xda3a3  1      OPC=nop             
  nop                                                     #  58    0xda3a4  1      OPC=nop             
  nop                                                     #  59    0xda3a5  1      OPC=nop             
  nop                                                     #  60    0xda3a6  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE3endEv, .-_ZNSbIwSt11char_traitsIwESaIwEE3endEv

