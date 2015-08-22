  .text
  .globl _ZNKSs11_M_disjunctEPKc
  .type _ZNKSs11_M_disjunctEPKc, @function

#! file-offset 0xead20
#! rip-offset  0xaad20
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs11_M_disjunctEPKc:   #        0xaad20  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaad20  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0xaad22  2      OPC=movl_r32_r32    
  movl $0x1, %eax           #  3     0xaad24  5      OPC=movl_r32_imm32  
  movl %edi, %edi           #  4     0xaad29  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx  #  5     0xaad2b  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  6     0xaad2f  2      OPC=cmpl_r32_r32    
  ja .L_aad60               #  7     0xaad31  2      OPC=ja_label        
  leal -0xc(%rdx), %eax     #  8     0xaad33  3      OPC=leal_r32_m16    
  movl %eax, %eax           #  9     0xaad36  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edx  #  10    0xaad38  4      OPC=addl_r32_m32    
  cmpl %esi, %edx           #  11    0xaad3c  2      OPC=cmpl_r32_r32    
  xchgw %ax, %ax            #  12    0xaad3e  2      OPC=xchgw_ax_r16    
  setb %al                  #  13    0xaad40  3      OPC=setb_r8         
  nop                       #  14    0xaad43  1      OPC=nop             
  nop                       #  15    0xaad44  1      OPC=nop             
  nop                       #  16    0xaad45  1      OPC=nop             
  nop                       #  17    0xaad46  1      OPC=nop             
  nop                       #  18    0xaad47  1      OPC=nop             
  nop                       #  19    0xaad48  1      OPC=nop             
  nop                       #  20    0xaad49  1      OPC=nop             
  nop                       #  21    0xaad4a  1      OPC=nop             
  nop                       #  22    0xaad4b  1      OPC=nop             
  nop                       #  23    0xaad4c  1      OPC=nop             
  nop                       #  24    0xaad4d  1      OPC=nop             
  nop                       #  25    0xaad4e  1      OPC=nop             
  nop                       #  26    0xaad4f  1      OPC=nop             
  nop                       #  27    0xaad50  1      OPC=nop             
  nop                       #  28    0xaad51  1      OPC=nop             
  nop                       #  29    0xaad52  1      OPC=nop             
  nop                       #  30    0xaad53  1      OPC=nop             
  nop                       #  31    0xaad54  1      OPC=nop             
  nop                       #  32    0xaad55  1      OPC=nop             
  nop                       #  33    0xaad56  1      OPC=nop             
  nop                       #  34    0xaad57  1      OPC=nop             
  nop                       #  35    0xaad58  1      OPC=nop             
  nop                       #  36    0xaad59  1      OPC=nop             
  nop                       #  37    0xaad5a  1      OPC=nop             
  nop                       #  38    0xaad5b  1      OPC=nop             
  nop                       #  39    0xaad5c  1      OPC=nop             
  nop                       #  40    0xaad5d  1      OPC=nop             
  nop                       #  41    0xaad5e  1      OPC=nop             
  nop                       #  42    0xaad5f  1      OPC=nop             
.L_aad60:                   #        0xaad60  0      OPC=<label>         
  popq %r11                 #  43    0xaad60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  44    0xaad62  7      OPC=andl_r32_imm32  
  nop                       #  45    0xaad69  1      OPC=nop             
  nop                       #  46    0xaad6a  1      OPC=nop             
  nop                       #  47    0xaad6b  1      OPC=nop             
  nop                       #  48    0xaad6c  1      OPC=nop             
  addq %r15, %r11           #  49    0xaad6d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  50    0xaad70  3      OPC=jmpq_r64        
  nop                       #  51    0xaad73  1      OPC=nop             
  nop                       #  52    0xaad74  1      OPC=nop             
  nop                       #  53    0xaad75  1      OPC=nop             
  nop                       #  54    0xaad76  1      OPC=nop             
  nop                       #  55    0xaad77  1      OPC=nop             
  nop                       #  56    0xaad78  1      OPC=nop             
  nop                       #  57    0xaad79  1      OPC=nop             
  nop                       #  58    0xaad7a  1      OPC=nop             
  nop                       #  59    0xaad7b  1      OPC=nop             
  nop                       #  60    0xaad7c  1      OPC=nop             
  nop                       #  61    0xaad7d  1      OPC=nop             
  nop                       #  62    0xaad7e  1      OPC=nop             
  nop                       #  63    0xaad7f  1      OPC=nop             
  nop                       #  64    0xaad80  1      OPC=nop             
  nop                       #  65    0xaad81  1      OPC=nop             
  nop                       #  66    0xaad82  1      OPC=nop             
  nop                       #  67    0xaad83  1      OPC=nop             
  nop                       #  68    0xaad84  1      OPC=nop             
  nop                       #  69    0xaad85  1      OPC=nop             
  nop                       #  70    0xaad86  1      OPC=nop             
                                                                         
.size _ZNKSs11_M_disjunctEPKc, .-_ZNKSs11_M_disjunctEPKc

