  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0xedd00
#! rip-offset  0xadd00
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs6substrEjj:                      #        0xadd00  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xadd00  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xadd02  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xadd03  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xadd05  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xadd07  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xadd0b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xadd0e  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %edx              #  8     0xadd10  4      OPC=cmpl_r32_m32    
  ja .L_add40                           #  9     0xadd14  2      OPC=ja_label        
  movl %ebx, %edi                       #  10    0xadd16  2      OPC=movl_r32_r32    
  nop                                   #  11    0xadd18  1      OPC=nop             
  nop                                   #  12    0xadd19  1      OPC=nop             
  nop                                   #  13    0xadd1a  1      OPC=nop             
  callq ._ZNSsC1ERKSsjj                 #  14    0xadd1b  5      OPC=callq_label     
  movl %ebx, %eax                       #  15    0xadd20  2      OPC=movl_r32_r32    
  popq %rbx                             #  16    0xadd22  1      OPC=popq_r64_1      
  popq %r11                             #  17    0xadd23  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  18    0xadd25  7      OPC=andl_r32_imm32  
  nop                                   #  19    0xadd2c  1      OPC=nop             
  nop                                   #  20    0xadd2d  1      OPC=nop             
  nop                                   #  21    0xadd2e  1      OPC=nop             
  nop                                   #  22    0xadd2f  1      OPC=nop             
  addq %r15, %r11                       #  23    0xadd30  3      OPC=addq_r64_r64    
  jmpq %r11                             #  24    0xadd33  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  25    0xadd36  2      OPC=xchgw_ax_r16    
  nop                                   #  26    0xadd38  1      OPC=nop             
  nop                                   #  27    0xadd39  1      OPC=nop             
  nop                                   #  28    0xadd3a  1      OPC=nop             
  nop                                   #  29    0xadd3b  1      OPC=nop             
  nop                                   #  30    0xadd3c  1      OPC=nop             
  nop                                   #  31    0xadd3d  1      OPC=nop             
  nop                                   #  32    0xadd3e  1      OPC=nop             
  nop                                   #  33    0xadd3f  1      OPC=nop             
  nop                                   #  34    0xadd40  1      OPC=nop             
  nop                                   #  35    0xadd41  1      OPC=nop             
  nop                                   #  36    0xadd42  1      OPC=nop             
  nop                                   #  37    0xadd43  1      OPC=nop             
  nop                                   #  38    0xadd44  1      OPC=nop             
  nop                                   #  39    0xadd45  1      OPC=nop             
  nop                                   #  40    0xadd46  1      OPC=nop             
.L_add40:                               #        0xadd47  0      OPC=<label>         
  movl $0x1003bb16, %edi                #  41    0xadd47  5      OPC=movl_r32_imm32  
  nop                                   #  42    0xadd4c  1      OPC=nop             
  nop                                   #  43    0xadd4d  1      OPC=nop             
  nop                                   #  44    0xadd4e  1      OPC=nop             
  nop                                   #  45    0xadd4f  1      OPC=nop             
  nop                                   #  46    0xadd50  1      OPC=nop             
  nop                                   #  47    0xadd51  1      OPC=nop             
  nop                                   #  48    0xadd52  1      OPC=nop             
  nop                                   #  49    0xadd53  1      OPC=nop             
  nop                                   #  50    0xadd54  1      OPC=nop             
  nop                                   #  51    0xadd55  1      OPC=nop             
  nop                                   #  52    0xadd56  1      OPC=nop             
  nop                                   #  53    0xadd57  1      OPC=nop             
  nop                                   #  54    0xadd58  1      OPC=nop             
  nop                                   #  55    0xadd59  1      OPC=nop             
  nop                                   #  56    0xadd5a  1      OPC=nop             
  nop                                   #  57    0xadd5b  1      OPC=nop             
  nop                                   #  58    0xadd5c  1      OPC=nop             
  nop                                   #  59    0xadd5d  1      OPC=nop             
  nop                                   #  60    0xadd5e  1      OPC=nop             
  nop                                   #  61    0xadd5f  1      OPC=nop             
  nop                                   #  62    0xadd60  1      OPC=nop             
  nop                                   #  63    0xadd61  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  64    0xadd62  5      OPC=callq_label     
                                                                                     
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj

