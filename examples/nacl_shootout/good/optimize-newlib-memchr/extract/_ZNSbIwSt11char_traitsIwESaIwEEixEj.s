  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x11ab20
#! rip-offset  0xdab20
#! capacity    128 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEixEj:                     #        0xdab20  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xdab20  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                         #  2     0xdab25  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xdab27  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xdab2c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xdab2f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xdab32  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xdab34  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                        #  8     0xdab38  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xdab3b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xdab3e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xdab40  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edi                             #  12    0xdab42  5      OPC=movl_r32_m32    
  testl %edi, %edi                                        #  13    0xdab47  2      OPC=testl_r32_r32   
  js .L_dab80                                             #  14    0xdab49  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xdab4b  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xdab4d  1      OPC=nop             
  nop                                                     #  17    0xdab4e  1      OPC=nop             
  nop                                                     #  18    0xdab4f  1      OPC=nop             
  nop                                                     #  19    0xdab50  1      OPC=nop             
  nop                                                     #  20    0xdab51  1      OPC=nop             
  nop                                                     #  21    0xdab52  1      OPC=nop             
  nop                                                     #  22    0xdab53  1      OPC=nop             
  nop                                                     #  23    0xdab54  1      OPC=nop             
  nop                                                     #  24    0xdab55  1      OPC=nop             
  nop                                                     #  25    0xdab56  1      OPC=nop             
  nop                                                     #  26    0xdab57  1      OPC=nop             
  nop                                                     #  27    0xdab58  1      OPC=nop             
  nop                                                     #  28    0xdab59  1      OPC=nop             
  nop                                                     #  29    0xdab5a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  30    0xdab5b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  31    0xdab60  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  32    0xdab62  4      OPC=movl_r32_m32    
  nop                                                     #  33    0xdab66  1      OPC=nop             
  nop                                                     #  34    0xdab67  1      OPC=nop             
  nop                                                     #  35    0xdab68  1      OPC=nop             
  nop                                                     #  36    0xdab69  1      OPC=nop             
  nop                                                     #  37    0xdab6a  1      OPC=nop             
  nop                                                     #  38    0xdab6b  1      OPC=nop             
  nop                                                     #  39    0xdab6c  1      OPC=nop             
  nop                                                     #  40    0xdab6d  1      OPC=nop             
  nop                                                     #  41    0xdab6e  1      OPC=nop             
  nop                                                     #  42    0xdab6f  1      OPC=nop             
  nop                                                     #  43    0xdab70  1      OPC=nop             
  nop                                                     #  44    0xdab71  1      OPC=nop             
  nop                                                     #  45    0xdab72  1      OPC=nop             
  nop                                                     #  46    0xdab73  1      OPC=nop             
  nop                                                     #  47    0xdab74  1      OPC=nop             
  nop                                                     #  48    0xdab75  1      OPC=nop             
  nop                                                     #  49    0xdab76  1      OPC=nop             
  nop                                                     #  50    0xdab77  1      OPC=nop             
  nop                                                     #  51    0xdab78  1      OPC=nop             
  nop                                                     #  52    0xdab79  1      OPC=nop             
  nop                                                     #  53    0xdab7a  1      OPC=nop             
  nop                                                     #  54    0xdab7b  1      OPC=nop             
  nop                                                     #  55    0xdab7c  1      OPC=nop             
  nop                                                     #  56    0xdab7d  1      OPC=nop             
  nop                                                     #  57    0xdab7e  1      OPC=nop             
  nop                                                     #  58    0xdab7f  1      OPC=nop             
.L_dab80:                                                 #        0xdab80  0      OPC=<label>         
  leal (%rax,%r12,4), %eax                                #  59    0xdab80  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                                    #  60    0xdab84  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                   #  61    0xdab89  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  62    0xdab8e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  63    0xdab91  3      OPC=addq_r64_r64    
  popq %r11                                               #  64    0xdab94  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  65    0xdab96  7      OPC=andl_r32_imm32  
  nop                                                     #  66    0xdab9d  1      OPC=nop             
  nop                                                     #  67    0xdab9e  1      OPC=nop             
  nop                                                     #  68    0xdab9f  1      OPC=nop             
  nop                                                     #  69    0xdaba0  1      OPC=nop             
  addq %r15, %r11                                         #  70    0xdaba1  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  71    0xdaba4  3      OPC=jmpq_r64        
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNSbIwSt11char_traitsIwESaIwEEixEj

