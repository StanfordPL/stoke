  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0xea600
#! rip-offset  0xaa600
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs11_M_disjunctEPKc:   #        0xaa600  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa600  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0xaa602  2      OPC=movl_r32_r32    
  movl $0x1, %eax           #  3     0xaa604  5      OPC=movl_r32_imm32  
  movl %edi, %edi           #  4     0xaa609  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx  #  5     0xaa60b  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  6     0xaa60f  2      OPC=cmpl_r32_r32    
  ja .L_aa640               #  7     0xaa611  2      OPC=ja_label        
  leal -0xc(%rdx), %eax     #  8     0xaa613  3      OPC=leal_r32_m16    
  movl %eax, %eax           #  9     0xaa616  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edx  #  10    0xaa618  4      OPC=addl_r32_m32    
  cmpl %esi, %edx           #  11    0xaa61c  2      OPC=cmpl_r32_r32    
  xchgw %ax, %ax            #  12    0xaa61e  2      OPC=xchgw_ax_r16    
  setb %al                  #  13    0xaa620  3      OPC=setb_r8         
  nop                       #  14    0xaa623  1      OPC=nop             
  nop                       #  15    0xaa624  1      OPC=nop             
  nop                       #  16    0xaa625  1      OPC=nop             
  nop                       #  17    0xaa626  1      OPC=nop             
  nop                       #  18    0xaa627  1      OPC=nop             
  nop                       #  19    0xaa628  1      OPC=nop             
  nop                       #  20    0xaa629  1      OPC=nop             
  nop                       #  21    0xaa62a  1      OPC=nop             
  nop                       #  22    0xaa62b  1      OPC=nop             
  nop                       #  23    0xaa62c  1      OPC=nop             
  nop                       #  24    0xaa62d  1      OPC=nop             
  nop                       #  25    0xaa62e  1      OPC=nop             
  nop                       #  26    0xaa62f  1      OPC=nop             
  nop                       #  27    0xaa630  1      OPC=nop             
  nop                       #  28    0xaa631  1      OPC=nop             
  nop                       #  29    0xaa632  1      OPC=nop             
  nop                       #  30    0xaa633  1      OPC=nop             
  nop                       #  31    0xaa634  1      OPC=nop             
  nop                       #  32    0xaa635  1      OPC=nop             
  nop                       #  33    0xaa636  1      OPC=nop             
  nop                       #  34    0xaa637  1      OPC=nop             
  nop                       #  35    0xaa638  1      OPC=nop             
  nop                       #  36    0xaa639  1      OPC=nop             
  nop                       #  37    0xaa63a  1      OPC=nop             
  nop                       #  38    0xaa63b  1      OPC=nop             
  nop                       #  39    0xaa63c  1      OPC=nop             
  nop                       #  40    0xaa63d  1      OPC=nop             
  nop                       #  41    0xaa63e  1      OPC=nop             
  nop                       #  42    0xaa63f  1      OPC=nop             
.L_aa640:                   #        0xaa640  0      OPC=<label>         
  popq %r11                 #  43    0xaa640  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  44    0xaa642  7      OPC=andl_r32_imm32  
  nop                       #  45    0xaa649  1      OPC=nop             
  nop                       #  46    0xaa64a  1      OPC=nop             
  nop                       #  47    0xaa64b  1      OPC=nop             
  nop                       #  48    0xaa64c  1      OPC=nop             
  addq %r15, %r11           #  49    0xaa64d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0xaa650  3      OPC=jmpq_r64        
  nop                       #  51    0xaa653  1      OPC=nop             
  nop                       #  52    0xaa654  1      OPC=nop             
  nop                       #  53    0xaa655  1      OPC=nop             
  nop                       #  54    0xaa656  1      OPC=nop             
  nop                       #  55    0xaa657  1      OPC=nop             
  nop                       #  56    0xaa658  1      OPC=nop             
  nop                       #  57    0xaa659  1      OPC=nop             
  nop                       #  58    0xaa65a  1      OPC=nop             
  nop                       #  59    0xaa65b  1      OPC=nop             
  nop                       #  60    0xaa65c  1      OPC=nop             
  nop                       #  61    0xaa65d  1      OPC=nop             
  nop                       #  62    0xaa65e  1      OPC=nop             
  nop                       #  63    0xaa65f  1      OPC=nop             
  nop                       #  64    0xaa660  1      OPC=nop             
  nop                       #  65    0xaa661  1      OPC=nop             
  nop                       #  66    0xaa662  1      OPC=nop             
  nop                       #  67    0xaa663  1      OPC=nop             
  nop                       #  68    0xaa664  1      OPC=nop             
  nop                       #  69    0xaa665  1      OPC=nop             
  nop                       #  70    0xaa666  1      OPC=nop             
                                                                         
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

