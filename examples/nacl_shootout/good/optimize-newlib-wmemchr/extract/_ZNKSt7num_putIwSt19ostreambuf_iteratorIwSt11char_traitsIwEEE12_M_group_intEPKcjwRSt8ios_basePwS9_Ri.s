  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri, @function

#! file-offset 0xf2500
#! rip-offset  0xb2500
#! capacity    128 bytes

# Text                                                                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri:  #        0xb2500  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                                #  1     0xb2500  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                                 #  2     0xb2505  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                                                                       #  3     0xb250a  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                                                      #  4     0xb250c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                       #  5     0xb250f  3      OPC=addq_r64_r64    
  movl %edx, %eax                                                                                       #  6     0xb2512  2      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                       #  7     0xb2514  2      OPC=movl_r32_r32    
  movl 0x28(%rsp), %ebx                                                                                 #  8     0xb2516  4      OPC=movl_r32_m32    
  movl 0x20(%rsp), %r8d                                                                                 #  9     0xb251a  5      OPC=movl_r32_m32    
  nop                                                                                                   #  10    0xb251f  1      OPC=nop             
  movl %r9d, %r12d                                                                                      #  11    0xb2520  3      OPC=movl_r32_r32    
  movl %ecx, %esi                                                                                       #  12    0xb2523  2      OPC=movl_r32_r32    
  movl %r12d, %edi                                                                                      #  13    0xb2525  3      OPC=movl_r32_r32    
  movl %eax, %ecx                                                                                       #  14    0xb2528  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                       #  15    0xb252a  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                              #  16    0xb252c  4      OPC=movl_r32_m32    
  leal (%r8,%r9,4), %r9d                                                                                #  17    0xb2530  4      OPC=leal_r32_m16    
  nop                                                                                                   #  18    0xb2534  1      OPC=nop             
  nop                                                                                                   #  19    0xb2535  1      OPC=nop             
  nop                                                                                                   #  20    0xb2536  1      OPC=nop             
  nop                                                                                                   #  21    0xb2537  1      OPC=nop             
  nop                                                                                                   #  22    0xb2538  1      OPC=nop             
  nop                                                                                                   #  23    0xb2539  1      OPC=nop             
  nop                                                                                                   #  24    0xb253a  1      OPC=nop             
  callq ._ZSt14__add_groupingIwEPT_S1_S0_PKcjPKS0_S5_                                                   #  25    0xb253b  5      OPC=callq_label     
  subl %r12d, %eax                                                                                      #  26    0xb2540  3      OPC=subl_r32_r32    
  sarl $0x2, %eax                                                                                       #  27    0xb2543  3      OPC=sarl_r32_imm8   
  movl %ebx, %ebx                                                                                       #  28    0xb2546  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                              #  29    0xb2548  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                                  #  30    0xb254c  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                 #  31    0xb2551  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                                      #  32    0xb2556  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                       #  33    0xb2559  3      OPC=addq_r64_r64    
  popq %r11                                                                                             #  34    0xb255c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                                                        #  35    0xb255e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                                               #  36    0xb2560  7      OPC=andl_r32_imm32  
  nop                                                                                                   #  37    0xb2567  1      OPC=nop             
  nop                                                                                                   #  38    0xb2568  1      OPC=nop             
  nop                                                                                                   #  39    0xb2569  1      OPC=nop             
  nop                                                                                                   #  40    0xb256a  1      OPC=nop             
  addq %r15, %r11                                                                                       #  41    0xb256b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                             #  42    0xb256e  3      OPC=jmpq_r64        
  nop                                                                                                   #  43    0xb2571  1      OPC=nop             
  nop                                                                                                   #  44    0xb2572  1      OPC=nop             
  nop                                                                                                   #  45    0xb2573  1      OPC=nop             
  nop                                                                                                   #  46    0xb2574  1      OPC=nop             
  nop                                                                                                   #  47    0xb2575  1      OPC=nop             
  nop                                                                                                   #  48    0xb2576  1      OPC=nop             
  nop                                                                                                   #  49    0xb2577  1      OPC=nop             
  nop                                                                                                   #  50    0xb2578  1      OPC=nop             
  nop                                                                                                   #  51    0xb2579  1      OPC=nop             
  nop                                                                                                   #  52    0xb257a  1      OPC=nop             
  nop                                                                                                   #  53    0xb257b  1      OPC=nop             
  nop                                                                                                   #  54    0xb257c  1      OPC=nop             
  nop                                                                                                   #  55    0xb257d  1      OPC=nop             
  nop                                                                                                   #  56    0xb257e  1      OPC=nop             
  nop                                                                                                   #  57    0xb257f  1      OPC=nop             
  nop                                                                                                   #  58    0xb2580  1      OPC=nop             
  nop                                                                                                   #  59    0xb2581  1      OPC=nop             
  nop                                                                                                   #  60    0xb2582  1      OPC=nop             
  nop                                                                                                   #  61    0xb2583  1      OPC=nop             
  nop                                                                                                   #  62    0xb2584  1      OPC=nop             
  nop                                                                                                   #  63    0xb2585  1      OPC=nop             
  nop                                                                                                   #  64    0xb2586  1      OPC=nop             
                                                                                                                                                     
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri

