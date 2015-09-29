  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x11a9c0
#! rip-offset  0xda9c0
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE2atEj:                    #        0xda9c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda9c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                         #  2     0xda9c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda9c7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda9cc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda9cf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda9d2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda9d4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                        #  8     0xda9d8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda9db  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda9de  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda9e0  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi                                #  12    0xda9e2  4      OPC=cmpl_r32_m32    
  jae .L_daa40                                            #  13    0xda9e6  2      OPC=jae_label       
  movl %edx, %edx                                         #  14    0xda9e8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edx                             #  15    0xda9ea  5      OPC=movl_r32_m32    
  testl %edx, %edx                                        #  16    0xda9ef  2      OPC=testl_r32_r32   
  js .L_daa20                                             #  17    0xda9f1  2      OPC=js_label        
  movl %ebx, %edi                                         #  18    0xda9f3  2      OPC=movl_r32_r32    
  nop                                                     #  19    0xda9f5  1      OPC=nop             
  nop                                                     #  20    0xda9f6  1      OPC=nop             
  nop                                                     #  21    0xda9f7  1      OPC=nop             
  nop                                                     #  22    0xda9f8  1      OPC=nop             
  nop                                                     #  23    0xda9f9  1      OPC=nop             
  nop                                                     #  24    0xda9fa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  25    0xda9fb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  26    0xdaa00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  27    0xdaa02  4      OPC=movl_r32_m32    
  nop                                                     #  28    0xdaa06  1      OPC=nop             
  nop                                                     #  29    0xdaa07  1      OPC=nop             
  nop                                                     #  30    0xdaa08  1      OPC=nop             
  nop                                                     #  31    0xdaa09  1      OPC=nop             
  nop                                                     #  32    0xdaa0a  1      OPC=nop             
  nop                                                     #  33    0xdaa0b  1      OPC=nop             
  nop                                                     #  34    0xdaa0c  1      OPC=nop             
  nop                                                     #  35    0xdaa0d  1      OPC=nop             
  nop                                                     #  36    0xdaa0e  1      OPC=nop             
  nop                                                     #  37    0xdaa0f  1      OPC=nop             
  nop                                                     #  38    0xdaa10  1      OPC=nop             
  nop                                                     #  39    0xdaa11  1      OPC=nop             
  nop                                                     #  40    0xdaa12  1      OPC=nop             
  nop                                                     #  41    0xdaa13  1      OPC=nop             
  nop                                                     #  42    0xdaa14  1      OPC=nop             
  nop                                                     #  43    0xdaa15  1      OPC=nop             
  nop                                                     #  44    0xdaa16  1      OPC=nop             
  nop                                                     #  45    0xdaa17  1      OPC=nop             
  nop                                                     #  46    0xdaa18  1      OPC=nop             
  nop                                                     #  47    0xdaa19  1      OPC=nop             
  nop                                                     #  48    0xdaa1a  1      OPC=nop             
  nop                                                     #  49    0xdaa1b  1      OPC=nop             
  nop                                                     #  50    0xdaa1c  1      OPC=nop             
  nop                                                     #  51    0xdaa1d  1      OPC=nop             
  nop                                                     #  52    0xdaa1e  1      OPC=nop             
  nop                                                     #  53    0xdaa1f  1      OPC=nop             
.L_daa20:                                                 #        0xdaa20  0      OPC=<label>         
  leal (%rax,%r12,4), %eax                                #  54    0xdaa20  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                                    #  55    0xdaa24  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                   #  56    0xdaa29  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  57    0xdaa2e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  58    0xdaa31  3      OPC=addq_r64_r64    
  popq %r11                                               #  59    0xdaa34  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  60    0xdaa36  7      OPC=andl_r32_imm32  
  nop                                                     #  61    0xdaa3d  1      OPC=nop             
  nop                                                     #  62    0xdaa3e  1      OPC=nop             
  nop                                                     #  63    0xdaa3f  1      OPC=nop             
  nop                                                     #  64    0xdaa40  1      OPC=nop             
  addq %r15, %r11                                         #  65    0xdaa41  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  66    0xdaa44  3      OPC=jmpq_r64        
.L_daa40:                                                 #        0xdaa47  0      OPC=<label>         
  movl $0x1003baac, %edi                                  #  67    0xdaa47  5      OPC=movl_r32_imm32  
  nop                                                     #  68    0xdaa4c  1      OPC=nop             
  nop                                                     #  69    0xdaa4d  1      OPC=nop             
  nop                                                     #  70    0xdaa4e  1      OPC=nop             
  nop                                                     #  71    0xdaa4f  1      OPC=nop             
  nop                                                     #  72    0xdaa50  1      OPC=nop             
  nop                                                     #  73    0xdaa51  1      OPC=nop             
  nop                                                     #  74    0xdaa52  1      OPC=nop             
  nop                                                     #  75    0xdaa53  1      OPC=nop             
  nop                                                     #  76    0xdaa54  1      OPC=nop             
  nop                                                     #  77    0xdaa55  1      OPC=nop             
  nop                                                     #  78    0xdaa56  1      OPC=nop             
  nop                                                     #  79    0xdaa57  1      OPC=nop             
  nop                                                     #  80    0xdaa58  1      OPC=nop             
  nop                                                     #  81    0xdaa59  1      OPC=nop             
  nop                                                     #  82    0xdaa5a  1      OPC=nop             
  nop                                                     #  83    0xdaa5b  1      OPC=nop             
  nop                                                     #  84    0xdaa5c  1      OPC=nop             
  nop                                                     #  85    0xdaa5d  1      OPC=nop             
  nop                                                     #  86    0xdaa5e  1      OPC=nop             
  nop                                                     #  87    0xdaa5f  1      OPC=nop             
  nop                                                     #  88    0xdaa60  1      OPC=nop             
  nop                                                     #  89    0xdaa61  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                    #  90    0xdaa62  5      OPC=callq_label     
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNSbIwSt11char_traitsIwESaIwEE2atEj

