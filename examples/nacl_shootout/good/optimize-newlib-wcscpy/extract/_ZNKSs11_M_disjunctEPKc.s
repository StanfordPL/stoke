  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0xea300
#! rip-offset  0xaa300
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs11_M_disjunctEPKc:   #        0xaa300  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa300  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0xaa302  2      OPC=movl_r32_r32    
  movl $0x1, %eax           #  3     0xaa304  5      OPC=movl_r32_imm32  
  movl %edi, %edi           #  4     0xaa309  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx  #  5     0xaa30b  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  6     0xaa30f  2      OPC=cmpl_r32_r32    
  ja .L_aa340               #  7     0xaa311  2      OPC=ja_label        
  leal -0xc(%rdx), %eax     #  8     0xaa313  3      OPC=leal_r32_m16    
  movl %eax, %eax           #  9     0xaa316  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edx  #  10    0xaa318  4      OPC=addl_r32_m32    
  cmpl %esi, %edx           #  11    0xaa31c  2      OPC=cmpl_r32_r32    
  xchgw %ax, %ax            #  12    0xaa31e  2      OPC=xchgw_ax_r16    
  setb %al                  #  13    0xaa320  3      OPC=setb_r8         
  nop                       #  14    0xaa323  1      OPC=nop             
  nop                       #  15    0xaa324  1      OPC=nop             
  nop                       #  16    0xaa325  1      OPC=nop             
  nop                       #  17    0xaa326  1      OPC=nop             
  nop                       #  18    0xaa327  1      OPC=nop             
  nop                       #  19    0xaa328  1      OPC=nop             
  nop                       #  20    0xaa329  1      OPC=nop             
  nop                       #  21    0xaa32a  1      OPC=nop             
  nop                       #  22    0xaa32b  1      OPC=nop             
  nop                       #  23    0xaa32c  1      OPC=nop             
  nop                       #  24    0xaa32d  1      OPC=nop             
  nop                       #  25    0xaa32e  1      OPC=nop             
  nop                       #  26    0xaa32f  1      OPC=nop             
  nop                       #  27    0xaa330  1      OPC=nop             
  nop                       #  28    0xaa331  1      OPC=nop             
  nop                       #  29    0xaa332  1      OPC=nop             
  nop                       #  30    0xaa333  1      OPC=nop             
  nop                       #  31    0xaa334  1      OPC=nop             
  nop                       #  32    0xaa335  1      OPC=nop             
  nop                       #  33    0xaa336  1      OPC=nop             
  nop                       #  34    0xaa337  1      OPC=nop             
  nop                       #  35    0xaa338  1      OPC=nop             
  nop                       #  36    0xaa339  1      OPC=nop             
  nop                       #  37    0xaa33a  1      OPC=nop             
  nop                       #  38    0xaa33b  1      OPC=nop             
  nop                       #  39    0xaa33c  1      OPC=nop             
  nop                       #  40    0xaa33d  1      OPC=nop             
  nop                       #  41    0xaa33e  1      OPC=nop             
  nop                       #  42    0xaa33f  1      OPC=nop             
.L_aa340:                   #        0xaa340  0      OPC=<label>         
  popq %r11                 #  43    0xaa340  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  44    0xaa342  7      OPC=andl_r32_imm32  
  nop                       #  45    0xaa349  1      OPC=nop             
  nop                       #  46    0xaa34a  1      OPC=nop             
  nop                       #  47    0xaa34b  1      OPC=nop             
  nop                       #  48    0xaa34c  1      OPC=nop             
  addq %r15, %r11           #  49    0xaa34d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0xaa350  3      OPC=jmpq_r64        
  nop                       #  51    0xaa353  1      OPC=nop             
  nop                       #  52    0xaa354  1      OPC=nop             
  nop                       #  53    0xaa355  1      OPC=nop             
  nop                       #  54    0xaa356  1      OPC=nop             
  nop                       #  55    0xaa357  1      OPC=nop             
  nop                       #  56    0xaa358  1      OPC=nop             
  nop                       #  57    0xaa359  1      OPC=nop             
  nop                       #  58    0xaa35a  1      OPC=nop             
  nop                       #  59    0xaa35b  1      OPC=nop             
  nop                       #  60    0xaa35c  1      OPC=nop             
  nop                       #  61    0xaa35d  1      OPC=nop             
  nop                       #  62    0xaa35e  1      OPC=nop             
  nop                       #  63    0xaa35f  1      OPC=nop             
  nop                       #  64    0xaa360  1      OPC=nop             
  nop                       #  65    0xaa361  1      OPC=nop             
  nop                       #  66    0xaa362  1      OPC=nop             
  nop                       #  67    0xaa363  1      OPC=nop             
  nop                       #  68    0xaa364  1      OPC=nop             
  nop                       #  69    0xaa365  1      OPC=nop             
  nop                       #  70    0xaa366  1      OPC=nop             
                                                                         
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

