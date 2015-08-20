  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x11a2a0
#! rip-offset  0xda2a0
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE2atEj:                    #        0xda2a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda2a0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                         #  2     0xda2a5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda2a7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda2ac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda2af  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda2b2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda2b4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                        #  8     0xda2b8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda2bb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda2be  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda2c0  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi                                #  12    0xda2c2  4      OPC=cmpl_r32_m32    
  jae .L_da320                                            #  13    0xda2c6  2      OPC=jae_label       
  movl %edx, %edx                                         #  14    0xda2c8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edx                             #  15    0xda2ca  5      OPC=movl_r32_m32    
  testl %edx, %edx                                        #  16    0xda2cf  2      OPC=testl_r32_r32   
  js .L_da300                                             #  17    0xda2d1  2      OPC=js_label        
  movl %ebx, %edi                                         #  18    0xda2d3  2      OPC=movl_r32_r32    
  nop                                                     #  19    0xda2d5  1      OPC=nop             
  nop                                                     #  20    0xda2d6  1      OPC=nop             
  nop                                                     #  21    0xda2d7  1      OPC=nop             
  nop                                                     #  22    0xda2d8  1      OPC=nop             
  nop                                                     #  23    0xda2d9  1      OPC=nop             
  nop                                                     #  24    0xda2da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  25    0xda2db  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  26    0xda2e0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  27    0xda2e2  4      OPC=movl_r32_m32    
  nop                                                     #  28    0xda2e6  1      OPC=nop             
  nop                                                     #  29    0xda2e7  1      OPC=nop             
  nop                                                     #  30    0xda2e8  1      OPC=nop             
  nop                                                     #  31    0xda2e9  1      OPC=nop             
  nop                                                     #  32    0xda2ea  1      OPC=nop             
  nop                                                     #  33    0xda2eb  1      OPC=nop             
  nop                                                     #  34    0xda2ec  1      OPC=nop             
  nop                                                     #  35    0xda2ed  1      OPC=nop             
  nop                                                     #  36    0xda2ee  1      OPC=nop             
  nop                                                     #  37    0xda2ef  1      OPC=nop             
  nop                                                     #  38    0xda2f0  1      OPC=nop             
  nop                                                     #  39    0xda2f1  1      OPC=nop             
  nop                                                     #  40    0xda2f2  1      OPC=nop             
  nop                                                     #  41    0xda2f3  1      OPC=nop             
  nop                                                     #  42    0xda2f4  1      OPC=nop             
  nop                                                     #  43    0xda2f5  1      OPC=nop             
  nop                                                     #  44    0xda2f6  1      OPC=nop             
  nop                                                     #  45    0xda2f7  1      OPC=nop             
  nop                                                     #  46    0xda2f8  1      OPC=nop             
  nop                                                     #  47    0xda2f9  1      OPC=nop             
  nop                                                     #  48    0xda2fa  1      OPC=nop             
  nop                                                     #  49    0xda2fb  1      OPC=nop             
  nop                                                     #  50    0xda2fc  1      OPC=nop             
  nop                                                     #  51    0xda2fd  1      OPC=nop             
  nop                                                     #  52    0xda2fe  1      OPC=nop             
  nop                                                     #  53    0xda2ff  1      OPC=nop             
.L_da300:                                                 #        0xda300  0      OPC=<label>         
  leal (%rax,%r12,4), %eax                                #  54    0xda300  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                                    #  55    0xda304  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                   #  56    0xda309  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  57    0xda30e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  58    0xda311  3      OPC=addq_r64_r64    
  popq %r11                                               #  59    0xda314  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  60    0xda316  7      OPC=andl_r32_imm32  
  nop                                                     #  61    0xda31d  1      OPC=nop             
  nop                                                     #  62    0xda31e  1      OPC=nop             
  nop                                                     #  63    0xda31f  1      OPC=nop             
  nop                                                     #  64    0xda320  1      OPC=nop             
  addq %r15, %r11                                         #  65    0xda321  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  66    0xda324  3      OPC=jmpq_r64        
.L_da320:                                                 #        0xda327  0      OPC=<label>         
  movl $0x1003baac, %edi                                  #  67    0xda327  5      OPC=movl_r32_imm32  
  nop                                                     #  68    0xda32c  1      OPC=nop             
  nop                                                     #  69    0xda32d  1      OPC=nop             
  nop                                                     #  70    0xda32e  1      OPC=nop             
  nop                                                     #  71    0xda32f  1      OPC=nop             
  nop                                                     #  72    0xda330  1      OPC=nop             
  nop                                                     #  73    0xda331  1      OPC=nop             
  nop                                                     #  74    0xda332  1      OPC=nop             
  nop                                                     #  75    0xda333  1      OPC=nop             
  nop                                                     #  76    0xda334  1      OPC=nop             
  nop                                                     #  77    0xda335  1      OPC=nop             
  nop                                                     #  78    0xda336  1      OPC=nop             
  nop                                                     #  79    0xda337  1      OPC=nop             
  nop                                                     #  80    0xda338  1      OPC=nop             
  nop                                                     #  81    0xda339  1      OPC=nop             
  nop                                                     #  82    0xda33a  1      OPC=nop             
  nop                                                     #  83    0xda33b  1      OPC=nop             
  nop                                                     #  84    0xda33c  1      OPC=nop             
  nop                                                     #  85    0xda33d  1      OPC=nop             
  nop                                                     #  86    0xda33e  1      OPC=nop             
  nop                                                     #  87    0xda33f  1      OPC=nop             
  nop                                                     #  88    0xda340  1      OPC=nop             
  nop                                                     #  89    0xda341  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                    #  90    0xda342  5      OPC=callq_label     
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNSbIwSt11char_traitsIwESaIwEE2atEj

