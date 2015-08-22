  .text
  .globl _ZNSs4_Rep10_M_disposeERKSaIcE
  .type _ZNSs4_Rep10_M_disposeERKSaIcE, @function

#! file-offset 0xeb4a0
#! rip-offset  0xab4a0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep10_M_disposeERKSaIcE:        #        0xab4a0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xab4a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0xab4a2  2      OPC=movl_r32_r32    
  cmpl $0x10073580, %edi                #  3     0xab4a4  6      OPC=cmpl_r32_imm32  
  jne .L_ab4e0                          #  4     0xab4aa  2      OPC=jne_label       
  nop                                   #  5     0xab4ac  1      OPC=nop             
  nop                                   #  6     0xab4ad  1      OPC=nop             
  nop                                   #  7     0xab4ae  1      OPC=nop             
  nop                                   #  8     0xab4af  1      OPC=nop             
  nop                                   #  9     0xab4b0  1      OPC=nop             
  nop                                   #  10    0xab4b1  1      OPC=nop             
  nop                                   #  11    0xab4b2  1      OPC=nop             
  nop                                   #  12    0xab4b3  1      OPC=nop             
  nop                                   #  13    0xab4b4  1      OPC=nop             
  nop                                   #  14    0xab4b5  1      OPC=nop             
  nop                                   #  15    0xab4b6  1      OPC=nop             
  nop                                   #  16    0xab4b7  1      OPC=nop             
  nop                                   #  17    0xab4b8  1      OPC=nop             
  nop                                   #  18    0xab4b9  1      OPC=nop             
  nop                                   #  19    0xab4ba  1      OPC=nop             
  nop                                   #  20    0xab4bb  1      OPC=nop             
  nop                                   #  21    0xab4bc  1      OPC=nop             
  nop                                   #  22    0xab4bd  1      OPC=nop             
  nop                                   #  23    0xab4be  1      OPC=nop             
  nop                                   #  24    0xab4bf  1      OPC=nop             
.L_ab4c0:                               #        0xab4c0  0      OPC=<label>         
  popq %r11                             #  25    0xab4c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xab4c2  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xab4c9  1      OPC=nop             
  nop                                   #  28    0xab4ca  1      OPC=nop             
  nop                                   #  29    0xab4cb  1      OPC=nop             
  nop                                   #  30    0xab4cc  1      OPC=nop             
  addq %r15, %r11                       #  31    0xab4cd  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xab4d0  3      OPC=jmpq_r64        
  nop                                   #  33    0xab4d3  1      OPC=nop             
  nop                                   #  34    0xab4d4  1      OPC=nop             
  nop                                   #  35    0xab4d5  1      OPC=nop             
  nop                                   #  36    0xab4d6  1      OPC=nop             
  nop                                   #  37    0xab4d7  1      OPC=nop             
  nop                                   #  38    0xab4d8  1      OPC=nop             
  nop                                   #  39    0xab4d9  1      OPC=nop             
  nop                                   #  40    0xab4da  1      OPC=nop             
  nop                                   #  41    0xab4db  1      OPC=nop             
  nop                                   #  42    0xab4dc  1      OPC=nop             
  nop                                   #  43    0xab4dd  1      OPC=nop             
  nop                                   #  44    0xab4de  1      OPC=nop             
  nop                                   #  45    0xab4df  1      OPC=nop             
  nop                                   #  46    0xab4e0  1      OPC=nop             
  nop                                   #  47    0xab4e1  1      OPC=nop             
  nop                                   #  48    0xab4e2  1      OPC=nop             
  nop                                   #  49    0xab4e3  1      OPC=nop             
  nop                                   #  50    0xab4e4  1      OPC=nop             
  nop                                   #  51    0xab4e5  1      OPC=nop             
  nop                                   #  52    0xab4e6  1      OPC=nop             
.L_ab4e0:                               #        0xab4e7  0      OPC=<label>         
  movl %edi, %edi                       #  53    0xab4e7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  54    0xab4e9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                 #  55    0xab4ee  3      OPC=leal_r32_m16    
  testl %eax, %eax                      #  56    0xab4f1  2      OPC=testl_r32_r32   
  movl %edi, %edi                       #  57    0xab4f3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)           #  58    0xab4f5  5      OPC=movl_m32_r32    
  jg .L_ab4c0                           #  59    0xab4fa  2      OPC=jg_label        
  jmpq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  60    0xab4fc  5      OPC=jmpq_label_1    
  nop                                   #  61    0xab501  1      OPC=nop             
  nop                                   #  62    0xab502  1      OPC=nop             
  nop                                   #  63    0xab503  1      OPC=nop             
  nop                                   #  64    0xab504  1      OPC=nop             
  nop                                   #  65    0xab505  1      OPC=nop             
  nop                                   #  66    0xab506  1      OPC=nop             
                                                                                     
.size _ZNSs4_Rep10_M_disposeERKSaIcE, .-_ZNSs4_Rep10_M_disposeERKSaIcE

